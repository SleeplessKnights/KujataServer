-----------------------------------
-- Flame Armor
--
-- Description: Covers the user in fiery spikes. Enemies that hit it take fire damage.
-- Type: Enhancing
-- Utsusemi/Blink absorb: N/A
-- Range: Self
-- Notes:
-----------------------------------
require("scripts/globals/mobskills")
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    local power = 50
    local duration = 180

    skill:setMsg(xi.mobskills.mobBuffMove(mob, xi.effect.BLAZE_SPIKES, power, 0, duration))

    return xi.effect.BLAZE_SPIKES
end

return mobskillObject
