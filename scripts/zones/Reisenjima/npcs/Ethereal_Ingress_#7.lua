-----------------------------------
-- Area: Reisenjima (291)
-- NPC: Ethereal Ingress #7
-- !pos 640.599 -374 -911.2 291
-----------------------------------
require("scripts/globals/teleports/eschan_portals")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    xi.escha.portals.eschanPortalOnTrigger(player, npc, 29)
end

entity.onEventUpdate = function(player, csid, option)
    xi.escha.portals.eschanPortalEventUpdate(player, csid, option)
end

entity.onEventFinish = function(player, csid, option, npc)
    xi.escha.portals.eschanPortalEventFinish(player, csid, option, npc)
end

return entity
