-----------------------------------
-- ID: 13170
-- Item: Stoneskin Torque
-- Item Effect: Stoneskin
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target)
    local effect = target:getStatusEffect(xi.effect.STONESKIN)
    if effect ~= nil and effect:getItemSourceID() == xi.items.STONESKIN_TORQUE then
        target:delStatusEffect(xi.effect.STONESKIN)
    end

    return 0
end

itemObject.onItemUse = function(target)
    if target:addStatusEffect(xi.effect.STONESKIN, 104, 0, 300, xi.items.STONESKIN_TORQUE, 0, 4) then
        target:messageBasic(xi.msg.basic.GAINS_EFFECT_OF_STATUS, xi.effect.STONESKIN)
    else
        target:messageBasic(xi.msg.basic.NO_EFFECT)
    end
end

return itemObject
