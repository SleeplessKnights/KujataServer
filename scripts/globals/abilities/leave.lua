-----------------------------------
-- Ability: Leave
-- Sets your pet free.
-- Obtained: Beastmaster Level 35
-- Recast Time: 10 seconds
-- Duration: N/A
-----------------------------------
local abilityObject = {}

abilityObject.onAbilityCheck = function(player, target, ability)
    if player:getPet() == nil then
        return xi.msg.basic.REQUIRES_A_PET, 0
    end

    return 0, 0
end

abilityObject.onUseAbility = function(player, target, ability)
    local pet = player:getPet()

    if pet:hasStatusEffect(xi.effect.HEALING) then
        pet:delStatusEffect(xi.effect.HEALING)
    end

    target:despawnPet()
end

return abilityObject
