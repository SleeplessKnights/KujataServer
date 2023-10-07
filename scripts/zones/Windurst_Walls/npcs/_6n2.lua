-----------------------------------
-- Area: Windurst Walls
-- Door: House of the Hero
-- Involved in Mission 2-1
-- Involved In Quest: Know One's Onions, Onion Rings, The Puppet Master, Class Reunion
-- !pos -26 -13 260 239
-----------------------------------
local ID = require("scripts/zones/Windurst_Walls/IDs")
require("scripts/globals/missions")
require("scripts/globals/quests")
-----------------------------------
local entity = {}
entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local iCanHearARainbow = player:getQuestStatus(xi.quest.log_id.WINDURST, xi.quest.id.windurst.I_CAN_HEAR_A_RAINBOW)

    -- I CAN HEAR A RAINBOW
    if
        iCanHearARainbow == QUEST_AVAILABLE and
        player:getMainLvl() >= 30 and
        player:hasItem(1125)
    then
        player:startEvent(384, 1125, 1125, 1125, 1125, 1125, 1125, 1125, 1125)
    elseif iCanHearARainbow == QUEST_ACCEPTED then
        player:startEvent(385, 1125, 1125, 1125, 1125, 1125, 1125, 1125, 1125)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
        -- I CAN HEAR A RAINBOW
    if csid == 384 then
        player:addQuest(xi.quest.log_id.WINDURST, xi.quest.id.windurst.I_CAN_HEAR_A_RAINBOW)
    end
end

return entity
