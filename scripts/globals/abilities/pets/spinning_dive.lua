-----------------------------------
-- Spinning Dive M=12
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/mobskills")
require("scripts/globals/summon")
-----------------------------------
local ability_object = {}

ability_object.onAbilityCheck = function(player, target, ability)
    return 0, 0
end

ability_object.onPetAbility = function(target, pet, skill)
    local numhits = 1
    local accmod = 1
    local dmgmod = 7
    local wSC = (pet:getStat(xi.mod.STR) * 0.30)

    local totaldamage = 0
    local damage = xi.summon.avatarPhysicalMove(pet, target, skill, numhits, accmod, dmgmod, 0, xi.mobskills.magicalTpBonus.NO_EFFECT, 1, 2, 3, wSC)
    totaldamage = xi.summon.avatarFinalAdjustments(damage.dmg, pet, skill, target, xi.attackType.PHYSICAL, xi.damageType.BLUNT, numhits)
    target:takeDamage(totaldamage, pet, xi.attackType.PHYSICAL, xi.damageType.BLUNT)
    target:updateEnmityFromDamage(pet, totaldamage)

    return totaldamage
end

return ability_object
