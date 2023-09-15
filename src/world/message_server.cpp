﻿/*
===========================================================================

Copyright (c) 2010-2015 Darkstar Dev Teams

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see http://www.gnu.org/licenses/

===========================================================================
*/

#include <concurrentqueue.h>
#include <memory>
#include <queue>
#include <set>

#include "besieged_system.h"
#include "common/logging.h"
#include "conquest_system.h"
#include "message_server.h"

struct chat_message_t
{
    uint64         dest;
    MSGSERVTYPE    type;
    zmq::message_t data;
    zmq::message_t packet;
};

struct zone_settings_t
{
    uint16 zoneid;
    uint64 ipp;
    uint32 misc;
};

namespace
{
    zmq::context_t                 zContext;
    std::unique_ptr<zmq::socket_t> zSocket;

    moodycamel::ConcurrentQueue<chat_message_t> outgoing_queue;

    std::unique_ptr<SqlConnection>                                        sql;
    std::unordered_map<REGIONALMSGTYPE, std::shared_ptr<IMessageHandler>> regionalMsgHandlers;
    std::unordered_map<uint16, zone_settings_t>                           zoneSettingsMap;
    std::vector<uint64>                                                   mapEndpoints;
    std::vector<uint64>                                                   yellMapEndpoints;
} // namespace

void queue_data(uint64 ipp, MSGSERVTYPE type, const uint8* data, std::size_t size)
{
    zmq::message_t dataMsg = zmq::message_t(size);
    memcpy(dataMsg.data(), data, size);
    queue_message(ipp, MSG_WORLD2MAP_REGIONAL_EVENT, &dataMsg);
}

void queue_data_broadcast(MSGSERVTYPE type, const uint8* data, std::size_t size)
{
    zmq::message_t dataMsg = zmq::message_t(size);
    memcpy(dataMsg.data(), data, size);
    queue_message_broadcast(MSG_WORLD2MAP_REGIONAL_EVENT, &dataMsg);
}

void queue_message(uint64 ipp, MSGSERVTYPE type, zmq::message_t* extra, zmq::message_t* packet)
{
    chat_message_t msg;
    msg.dest = ipp;
    msg.type = type;

    msg.data.copy(*extra);
    if (packet != nullptr)
    {
        msg.packet.copy(*packet);
    }

    outgoing_queue.enqueue(std::move(msg));
}

void queue_message_broadcast(MSGSERVTYPE type, zmq::message_t* extra, zmq::message_t* packet)
{
    for (const auto& ipp : mapEndpoints)
    {
        queue_message(ipp, type, extra, packet);
    }
}

void message_server_send(uint64 ipp, MSGSERVTYPE type, zmq::message_t* extra, zmq::message_t* packet)
{
    try
    {
        std::array<zmq::message_t, 4> msgs;
        msgs[0] = zmq::message_t(&ipp, sizeof(ipp));
        msgs[1] = zmq::message_t(&type, sizeof(type));
        msgs[2].copy(*extra);
        msgs[3].copy(*packet);
        zmq::send_multipart(*zSocket, msgs);
    }
    catch (zmq::error_t& e)
    {
        ShowError(fmt::format("Message: {}", e.what()));
    }
}

std::string ipp_to_string(uint64 ipp)
{
    // Ip / port pair is stored as uint32 port MSB and uint32 Ip LSB
    uint32  port = (uint32)(ipp >> 32);
    uint32  ip   = (uint32)(ipp);
    in_addr target;
    target.s_addr = ip;
    char target_address[INET_ADDRSTRLEN];
    inet_ntop(AF_INET, &target, target_address, INET_ADDRSTRLEN);

    return fmt::format("{}:{}", target_address, port);
}

void message_server_parse(MSGSERVTYPE type, zmq::message_t* extra, zmq::message_t* packet, zmq::message_t* from)
{
    int     ret = SQL_ERROR;
    in_addr from_ip{};
    uint16  from_port = 0;
    char    from_address[INET_ADDRSTRLEN];

    if (from)
    {
        from_ip.s_addr = ref<uint32>((uint8*)from->data(), 0);
        from_port      = ref<uint16>((uint8*)from->data(), 4);
        inet_ntop(AF_INET, &from_ip, from_address, INET_ADDRSTRLEN);
    }

    switch (type)
    {
        case MSG_CHAT_TELL:
        case MSG_LINKSHELL_RANK_CHANGE:
        case MSG_LINKSHELL_REMOVE:
        case MSG_CHARVAR_UPDATE:
        {
            const char* query = "SELECT server_addr, server_port FROM accounts_sessions LEFT JOIN chars ON "
                                "accounts_sessions.charid = chars.charid WHERE charname = '%s' LIMIT 1;";
            ret               = sql->Query(query, (int8*)extra->data() + 4);
            if (sql->NumRows() == 0)
            {
                query = "SELECT server_addr, server_port FROM accounts_sessions WHERE charid = %d LIMIT 1;";
                ret   = sql->Query(query, ref<uint32>((uint8*)extra->data(), 0));
            }
            break;
        }
        case MSG_CHAT_PARTY:
        case MSG_PT_RELOAD:
        case MSG_PT_DISBAND:
        {
            const char* query = "SELECT server_addr, server_port, MIN(charid) FROM accounts_sessions JOIN accounts_parties USING (charid) "
                                "WHERE IF (allianceid <> 0, allianceid = (SELECT MAX(allianceid) FROM accounts_parties WHERE partyid = %d), "
                                "partyid = %d) GROUP BY server_addr, server_port;";

            uint32 partyid = ref<uint32>((uint8*)extra->data(), 0);
            ret            = sql->Query(query, partyid, partyid);
            break;
        }
        case MSG_ALLIANCE_DISSOLVE:
        {
            const char* query = "SELECT server_addr, server_port, MIN(charid) FROM accounts_sessions JOIN accounts_parties USING (charid) "
                                "WHERE allianceid = %d "
                                "GROUP BY server_addr, server_port;";

            uint32 allianceid = ref<uint32>((uint8*)extra->data(), 0);
            ret               = sql->Query(query, allianceid);
            break;
        }
        case MSG_CHAT_LINKSHELL:
        {
            const char* query = "SELECT server_addr, server_port FROM accounts_sessions "
                                "WHERE linkshellid1 = %d OR linkshellid2 = %d GROUP BY server_addr, server_port;";
            ret               = sql->Query(query, ref<uint32>((uint8*)extra->data(), 0), ref<uint32>((uint8*)extra->data(), 0));
            break;
        }
        case MSG_CHAT_UNITY:
        {
            const char* query = "SELECT server_addr, server_port FROM accounts_sessions "
                                "WHERE unitychat = %d GROUP BY server_addr, server_port;";
            ret               = sql->Query(query, ref<uint32>((uint8*)extra->data(), 0), ref<uint32>((uint8*)extra->data(), 0));
            break;
        }
        case MSG_CHAT_YELL:
        {
            for (const auto& ipp : yellMapEndpoints)
            {
                ShowDebug(fmt::format("Message: -> rerouting to {}", ipp_to_string(ipp)));
                message_server_send(ipp, type, extra, packet);
            }
            break;
        }
        case MSG_CHAT_SERVMES:
        {
            for (const auto& ipp : mapEndpoints)
            {
                ShowDebug(fmt::format("Message: -> rerouting to {}", ipp_to_string(ipp)));
                message_server_send(ipp, type, extra, packet);
            }
            break;
        }
        case MSG_PT_INVITE:
        case MSG_PT_INV_RES:
        case MSG_DIRECT:
        case MSG_SEND_TO_ZONE:
        {
            const char* query = "SELECT server_addr, server_port FROM accounts_sessions WHERE charid = %d;";
            ret               = sql->Query(query, ref<uint32>((uint8*)extra->data(), 0));
            break;
        }
        case MSG_SEND_TO_ENTITY:
        case MSG_LUA_FUNCTION:
        case MSG_RPC_SEND:
        case MSG_RPC_RECV:
        {
            uint16 zoneId = ref<uint16>((uint8*)extra->data(), 2);
            try
            {
                auto zoneSettings = zoneSettingsMap.at(zoneId);
                ShowDebug(fmt::format("Message: -> rerouting to {}", ipp_to_string(zoneSettings.ipp)));
                message_server_send(zoneSettings.ipp, type, extra, packet);
            }
            catch (const std::out_of_range&)
            {
                ShowError("Requested ZoneId not in cache: %d", zoneId);
            }

            break;
        }
        case MSG_LOGIN:
        {
            // no op
            break;
        }
        case MSG_MAP2WORLD_REGIONAL_EVENT:
        {
            uint8*      data    = (uint8*)extra->data();
            const uint8 subType = ref<uint8>(data, 0);

            std::vector<uint8> bytes(data, data + extra->size());
            try
            {
                auto& handler = regionalMsgHandlers.at((REGIONALMSGTYPE)subType);
                handler->handleMessage(std::move(bytes), from_ip, from_port);
            }
            catch (const std::out_of_range& e)
            {
                ShowError(fmt::format("Handler not found: {}", e.what()));
            }

            break;
        }
        default:
        {
            ShowDebug(fmt::format("Message: unknown type received: {} from {}:{}", static_cast<uint8>(type), from_address, from_port));
            break;
        }
    }

    // This is only used for cases where SQL is used to get the IPs (not cached).
    // E.g: When we get ips for a specific account_session.
    // Consider moving this logic to a helper method and call it from each case instead.
    if (ret != SQL_ERROR)
    {
        ShowDebug(fmt::format("Message: Received message {} ({}) from {}:{}",
                              msgTypeToStr(type), static_cast<uint8>(type), from_address, from_port));

        while (sql->NextRow() == SQL_SUCCESS)
        {
            uint64      ip       = sql->GetUIntData(0);
            uint64      port     = sql->GetUIntData(1);
            uint64      ipp      = ip | (port << 32);
            std::string ipString = ipp_to_string(ipp);

            ShowDebug(fmt::format("Message: -> rerouting to {}", ipString));
            message_server_send(ipp, type, extra, packet);
        }
    }
}

void message_server_listen(const bool& requestExit)
{
    while (!requestExit)
    {
        std::array<zmq::message_t, 4> msgs;
        try
        {
            const auto ret = zmq::recv_multipart_n(*zSocket, msgs.data(), msgs.size());
            if (!ret)
            {
                chat_message_t msg;
                while (outgoing_queue.try_dequeue(msg))
                {
                    message_server_send(msg.dest, msg.type, &msg.data, &msg.packet);
                }
                continue;
            }
        }
        catch (zmq::error_t& e)
        {
            // Context was terminated
            // Exit loop
            if (!zSocket || e.num() == 156384765) // ETERM
            {
                return;
            }

            ShowError(fmt::format("Message: {}", e.what()));
            continue;
        }

        // 0: zmq::message_t from
        // 1: zmq::message_t type
        // 2: zmq::message_t extra
        // 3: zmq::message_t packet
        message_server_parse((MSGSERVTYPE)ref<uint8>((uint8*)msgs[1].data(), 0), &msgs[2], &msgs[3], &msgs[0]);

        sql->TryPing();
    }
}

void cache_zone_settings()
{
    const char* query = "SELECT zoneid, zoneip, zoneport, misc FROM zone_settings;";
    int         ret   = sql->Query(query);

    if (ret == SQL_ERROR)
    {
        ShowCritical("Error loading zone settings from DB");
        throw std::runtime_error("Message Server: Failed to load zone settings from database");
    }

    // Keep track of the zones, as well as a list of unique ip / port combinations.
    std::set<uint64> mapEndpointSet;
    std::set<uint64> yellMapEndpointSet;
    zoneSettingsMap = std::unordered_map<uint16, zone_settings_t>(sql->NumRows());
    while (sql->NextRow() == SQL_SUCCESS)
    {
        uint64 ip = 0;
        inet_pton(AF_INET, sql->GetStringData(1).c_str(), &ip);
        uint64 port = sql->GetUIntData(2);

        zone_settings_t zone_settings;
        zone_settings.zoneid = sql->GetUInt64Data(0);
        zone_settings.ipp    = ip | (port << 32);
        zone_settings.misc   = sql->GetUIntData(3);

        mapEndpointSet.insert(zone_settings.ipp);
        if (zone_settings.misc & 1024)
        {
            yellMapEndpointSet.insert(zone_settings.ipp);
        }

        zoneSettingsMap[zone_settings.zoneid] = zone_settings;
    }

    // Now copy the zone ipp sets to vectors for easier iteration
    std::copy(mapEndpointSet.begin(), mapEndpointSet.end(), std::back_inserter(mapEndpoints));
    std::copy(yellMapEndpointSet.begin(), yellMapEndpointSet.end(), std::back_inserter(yellMapEndpoints));
}

void message_server_init(const bool& requestExit)
{
    TracySetThreadName("Message Server (ZMQ)");

    // Setup SQL
    sql = std::make_unique<SqlConnection>();

    // Handler map registrations
    regionalMsgHandlers[REGIONALMSGTYPE::REGIONAL_EVT_MSG_CONQUEST] = std::make_shared<ConquestSystem>();
    regionalMsgHandlers[REGIONALMSGTYPE::REGIONAL_EVT_MSG_BESIEGED] = std::make_shared<BesiegedSystem>();

    // Populate zoneSettingsCache with sql data
    cache_zone_settings();

    // Zmql
    zContext = zmq::context_t(1);
    zSocket  = std::make_unique<zmq::socket_t>(zContext, zmq::socket_type::router);

    zSocket->set(zmq::sockopt::rcvtimeo, 500);

    auto server = fmt::format("tcp://{}:{}",
                              settings::get<std::string>("network.ZMQ_IP"),
                              settings::get<std::string>("network.ZMQ_PORT"));

    ShowInfo("Starting ZMQ Server on %s", server.c_str());

    try
    {
        zSocket->bind(server.c_str());
    }
    catch (zmq::error_t& err)
    {
        ShowCritical(fmt::format("Unable to bind chat socket: {}", err.what()));
    }

    ShowInfo("ZMQ Server listening...");
    message_server_listen(requestExit);
}

void message_server_close()
{
    if (zSocket)
    {
        zSocket->close();
        zSocket = nullptr;
    }

    zContext.close();
}
