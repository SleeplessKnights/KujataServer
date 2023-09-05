-----------------------------------
-- Area: Dangruf Wadi
--  NPC: ??? (QM2)
-- Type: Item Giver
-- !pos -120.041 2.621 415.989 191
-- Starts and Finishes: Breaking Stones, An Empty Vessel
-- only spawns if the weather is SUNNY or CLEAR
-----------------------------------
require('scripts/globals/npc_util')
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    player:startEvent(110)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if csid == 110 and option == 0 then
        npcUtil.giveItem(player, xi.items.DANGRUF_STONE)
    end
end

return entity
