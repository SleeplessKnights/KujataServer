-----------------------------------------
-- ID: 5990
-- Scroll of Instant Stoneskin
-- Grants the user a 200 HP Stoneskin effect
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    return 0
end

item_object.onItemUse = function(target)
    if target:addStatusEffect(tpz.effect.STONESKIN, 200, 0, 300, 0, 0, 4) then
        target:messageBasic(tpz.msg.basic.GAINS_EFFECT_OF_STATUS, tpz.effect.STONESKIN)
    else
        target:messageBasic(tpz.msg.basic.NO_EFFECT)
    end
end

return item_object
