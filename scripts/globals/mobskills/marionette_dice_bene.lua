-----------------------------------
-- Marionette Dice Benediction)
-- Description: Benediction for party members within area of effect.
-- Notes: Used by Moblin Fantoccini in ENM: "Pulling the strings"
-----------------------------------
require("scripts/globals/mobskills")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local mobskill_object = {}

mobskill_object.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskill_object.onMobWeaponSkill = function(target, mob, skill)
    local heal = target:getMaxHP() - target:getHP()

    skill:setMsg(xi.msg.basic.SELF_HEAL)

    target:addHP(heal)
    target:wakeUp()

    return heal
end

return mobskill_object
