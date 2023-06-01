-----------------------------------
-- ID: 5777
-- Item: Pear Crepe
-- Food Effect: 30 Min, All Races
-----------------------------------
-- Intelligence +2
-- MP Healing +2
-- Magic Accuracy +20% (cap 45)
-- Magic Defense +1
-----------------------------------
require("scripts/globals/msg")
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
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 1800, 5777)
end

itemObject.onEffectGain = function(target, effect)
    target:addMod(xi.mod.INT, 2)
    target:addMod(xi.mod.FOOD_MACCP, 20)
    target:addMod(xi.mod.FOOD_MACC_CAP, 45)
    target:addMod(xi.mod.MDEF, 1)
    target:addMod(xi.mod.MPHEAL, 2)
end

itemObject.onEffectLose = function(target, effect)
    target:delMod(xi.mod.INT, 2)
    target:delMod(xi.mod.FOOD_MACCP, 20)
    target:delMod(xi.mod.FOOD_MACC_CAP, 45)
    target:delMod(xi.mod.MDEF, 1)
    target:delMod(xi.mod.MPHEAL, 2)
end

return itemObject
