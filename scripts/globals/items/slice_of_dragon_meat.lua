-----------------------------------
-- ID: 4272
-- Item: slice_of_dragon_meat
-- Food Effect: 5Min, Galka only
-----------------------------------
-- Strength 6
-- Intelligence -8
-- Demon Killer +2 (?)
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target)
    local result = 0
    if target:getRace() ~= xi.race.GALKA then
        result = xi.msg.basic.CANNOT_EAT
    end
    if target:getMod(xi.mod.EAT_RAW_MEAT) == 1 then
        result = 0
    end
    if target:hasStatusEffect(xi.effect.FOOD) or target:hasStatusEffect(xi.effect.FIELD_SUPPORT_FOOD) then
        result = xi.msg.basic.IS_FULL
    end
    return result
end

itemObject.onItemUse = function(target)
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 300, 4272)
end

itemObject.onEffectGain = function(target, effect)
    target:addMod(xi.mod.STR, 6)
    target:addMod(xi.mod.INT, -8)
    target:addMod(xi.mod.DEMON_KILLER, 2)
end

itemObject.onEffectLose = function(target, effect)
    target:delMod(xi.mod.STR, 6)
    target:delMod(xi.mod.INT, -8)
    target:delMod(xi.mod.DEMON_KILLER, 2)
end

return itemObject
