-----------------------------------
-- Bomb Toss
-- Throws a bomb at an enemy.
-----------------------------------
require("scripts/globals/mobskills")
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------
local mobskill_object = {}

mobskill_object.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskill_object.onMobWeaponSkill = function(target, mob, skill)
    local dmgmod = 1
    print(mob:getWeaponDmg())
    local info = xi.mobskills.mobMagicalMove(mob, target, skill, mob:getWeaponDmg()*3, xi.magic.ele.FIRE, dmgmod, xi.mobskills.magicalTpBonus.MAB_BONUS, 1)
    print(info)
    local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.MAGICAL, xi.damageType.FIRE, xi.mobskills.shadowBehavior.IGNORE_SHADOWS)
    print(dmg)
    target:takeDamage(dmg, mob, xi.attackType.MAGICAL, xi.damageType.FIRE)
    return dmg
end

return mobskill_object
