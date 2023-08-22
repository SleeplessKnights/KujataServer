-----------------------------------
-- Dread Shriek
--
-- Description: An unsettling shriek paralyzes targets in an area of effect.
-- Type: Enfeebling
-- Utsusemi/Blink absorb: Ignores shadows
-- Range: 10' radial
-- Notes:
-----------------------------------
require("scripts/globals/mobskills")
require("scripts/globals/settings")
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    skill:setMsg(xi.mobskills.mobStatusEffectMove(mob, target, xi.effect.PARALYSIS, 50, 0, 60))

    return xi.effect.PARALYSIS
end

return mobskillObject
