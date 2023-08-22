-----------------------------------
-- Ultrasonics
-- Reduces evasion of targets in area of effect.
-----------------------------------
require("scripts/globals/mobskills")
require("scripts/globals/settings")
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    skill:setMsg(xi.mobskills.mobStatusEffectMove(mob, target, xi.effect.EVASION_DOWN, 25, 0, 180))

    return xi.effect.EVASION_DOWN
end

return mobskillObject
