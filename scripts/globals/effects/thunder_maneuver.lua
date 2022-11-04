-----------------------------------
-- xi.effect.THUNDER_MANEUVER
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effectObject = {}

effectObject.onEffectGain = function(target, effect)
    local pet = target:getPet()
    if pet then
        pet:addMod(xi.mod.DEX, effect:getPower())
    end
end

effectObject.onEffectTick = function(target, effect)
end

effectObject.onEffectLose = function(target, effect)
    local pet = target:getPet()
    if pet then
        pet:delMod(xi.mod.DEX, effect:getPower())
    end
end

return effectObject
