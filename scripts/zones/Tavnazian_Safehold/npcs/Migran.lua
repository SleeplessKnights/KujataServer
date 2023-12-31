-----------------------------------
-- Area: Tavnasian Safehold
--  NPC: Migran
-- Standard Merchant NPC
-----------------------------------
local ID = require("scripts/zones/Tavnazian_Safehold/IDs")
require("scripts/globals/missions")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local stock =
    {
        12577, 2485, -- Brass Harness
        12985, 1625, -- Holly Clogs
    }

    if player:getCurrentMission(xi.mission.log_id.COP) >= xi.mission.id.cop.SHELTERING_DOUBT then
        stock =
        {
            14317, 4042200,  -- Barone Cosciales (Era Price)
            15305, 25210200,  -- Barone Gambieras (Era Price)
            14848, 7276200,  -- Barone Manopolas (Era Price)
            12577, 2485,    -- Brass Harness
            12985, 1625,    -- Holly Clogs
            15389, 8000000, -- Vir Subligar
            15390, 8000000, -- Femina Subligar

        }
    end

    player:showText(npc, ID.text.MIGRAN_SHOP_DIALOG) -- 10914 with 2 items available, may change
    xi.shop.general(player, stock)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
