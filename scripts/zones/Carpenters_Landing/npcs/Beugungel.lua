-----------------------------------
-- Area: Carpenters' Landing
--  NPC: Beugungel
-- Type: Guild Merchant NPC (Woodworking Guild)
-- !pos -333.729, -5.512, 475.647 2
-----------------------------------
require("scripts/globals/shop")
local ID = require("scripts/zones/Carpenters_Landing/IDs")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    if player:sendGuild(534, 5, 22, 0) then
        player:showText(npc, ID.text.BEUGUNGEL_SHOP_DIALOG)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
