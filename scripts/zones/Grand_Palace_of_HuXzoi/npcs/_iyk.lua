-----------------------------------
-- Area: Grand Palace of Hu'Xzoi
--  NPC: Cermet Portal (Security Gate)
--   ID: 16916875
--  !pos -280 -2.05 260
-----------------------------------
local ID = require("scripts/zones/Grand_Palace_of_HuXzoi/IDs")
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    if player:getXPos() > 280 then
        player:messageSpecial(ID.text.PORTAL_DOES_NOT_RESPOND)
        return 1
    end

    return -1
end

return entity
