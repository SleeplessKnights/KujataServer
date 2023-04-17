-----------------------------------
-- Peacebreaker
-- Description: Deals damage and increases magic damage taken by target
-- Peacebreaker increases Magic Damage Taken on the target (~2x Magic Damage),
-- making Naja a good fit with offensive magic jobs such as Rune Fencer.
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/mobskills")
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    local numhits = 1
    local accmod = 1
    local dmgmod = 1.0
    local info = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, xi.mobskills.physicalTpBonus.DMG_VARIES, 1, 2, 3)
    local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.PHYSICAL, xi.damageType.BLUNT, info.hitslanded)

    -- TODO: This should be Increases Magic Damage Taken, but this was faster/easier
    xi.mobskills.mobPhysicalStatusEffectMove(mob, target, skill, xi.effect.MAGIC_DEF_DOWN, 50, 0, 60)

    if not skill:hasMissMsg() then
        target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.BLUNT)
    end

    return dmg
end

return mobskillObject
