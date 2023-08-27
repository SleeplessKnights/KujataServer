-----------------------------------
-- ID: 4505
-- Item: handful_of_sunflower_seeds
-- Food Effect: 5Min, All Races
-----------------------------------
-- Dexterity -3
-- Intelligence 1
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target)
    local result = 0
    if
        target:hasStatusEffect(xi.effect.FOOD) or
        target:hasStatusEffect(xi.effect.FIELD_SUPPORT_FOOD)
    then
        result = xi.msg.basic.IS_FULL
    end

    return result
end

itemObject.onItemUse = function(target)
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 300, 4505)
end

itemObject.onEffectGain = function(target, effect)
    target:addMod(xi.mod.DEX, -3)
    target:addMod(xi.mod.INT, 1)
end

itemObject.onEffectLose = function(target, effect)
    target:delMod(xi.mod.DEX, -3)
    target:delMod(xi.mod.INT, 1)
end

return itemObject
