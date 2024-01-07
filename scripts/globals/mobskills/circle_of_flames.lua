-----------------------------------
--  Circle of Flames
--
--  Description: Deals damage to targets in an area of effect. Additional effect: Weight
--  Type: Physical
--  Utsusemi/Blink absorb: 1-3 shadows
--  Range: 10' radial
-----------------------------------
require("scripts/globals/mobskills")
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    if mob:getAnimationSub() == 2 then -- 1 bomb
        return 1
    end

    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    local numberOfBombs = 3 - mob:getAnimationSub()
    local bombNum = 50 * numberOfBombs

    if mob:getZoneID() == xi.zone.DYNAMIS_TAVNAZIA then
        bombNum = bombNum * 1.75
    end

    local info = xi.mobskills.mobMagicalMove(mob, target, skill, bombNum, xi.magic.ele.FIRE, 1, xi.mobskills.magicalTpBonus.NO_EFFECT, 0, 0, 1, 1.1, 1.2)
    local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.MAGICAL, xi.damageType.FIRE, numberOfBombs)

    if not skill:hasMissMsg() then
        target:takeDamage(dmg, mob, xi.attackType.MAGICAL, xi.damageType.FIRE)
        xi.mobskills.mobPhysicalStatusEffectMove(mob, target, skill, xi.effect.WEIGHT, 20, 0, 120)
    end

    return dmg
end

return mobskillObject
