-----------------------------------
--  Pandemic Nip
--
--  Description: Single target damage and transfers up to five current enfeebles to target player.
--  Type: Physical?
--  Utsusemi/Blink absorb: 1 shadow?
--  Range: Melee
--  Notes: Transfers debuffs to the target player (maximum 5). Includes Dancer's Quickstep's Evasion Down and Box Step's Defense Down.
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/mobskills")
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    local numhits = 1
    local accmod = 2
    local dmgmod = 1
    local info = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, xi.mobskills.magicalTpBonus.NO_EFFECT)
    local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.PHYSICAL, xi.damageType.SLASHING, info.hitslanded)

    if not skill:hasMissMsg() then
        target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.SLASHING)
    end

    return dmg
end

return mobskillObject
