-----------------------------------
-- Area: LaLoff_Amphitheater
--  NPC: Shimmering Circle (BCNM Entrances)
-- !pos 555.998 -38.205 520.627 180
-----------------------------------
local entity = {}

require("scripts/globals/bcnm")

entity.onTrade = function(player, npc, trade)
    xi.bcnm.onTrade(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    xi.bcnm.onTrigger(player, npc)
end

entity.onEventUpdate = function(player, csid, option, extras)
    xi.bcnm.onEventUpdate(player, csid, option, extras)
end

entity.onEventFinish = function(player, csid, option)
    xi.bcnm.onEventFinish(player, csid, option)
end

return entity
