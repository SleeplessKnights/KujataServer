-----------------------------------
-- Petrifaction
-- Description: Petrifies opponent with a gaze attack
-- Type: Gaze
-- Utsusemi/Blink absorb: Ignores shadows
-- Range: Single gaze
-----------------------------------
require("scripts/globals/mobskills")
require("scripts/globals/settings")
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    local typeEffect = xi.effect.PETRIFICATION
    skill:setMsg(xi.mobskills.mobGazeMove(mob, target, typeEffect, 1, 0, 25))
    return typeEffect
end

return mobskillObject
