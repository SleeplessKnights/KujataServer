-----------------------------------
-- Area: Sacrarium
--  NPC: _0st (Switch)
-- Notes: Opens _0su (Gate)
-- !pos 103.478 -1.563 50.181 28
-----------------------------------
local ID = require("scripts/zones/Sacrarium/IDs")
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    if player:getZPos() < 50 then
        npc:openDoor()
        GetNPCByID(npc:getID() + 1):openDoor()
    else
        player:messageSpecial(ID.text.CANNOT_OPEN_SIDE)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
