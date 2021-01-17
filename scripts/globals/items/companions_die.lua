-----------------------------------------
-- ID: 5504
-- Companions Die
-- Teaches the job ability Companions Roll
-----------------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    return target:canLearnAbility(tpz.jobAbility.COMPANIONS_ROLL)
end

item_object.onItemUse = function(target)
    target:addLearnedAbility(tpz.jobAbility.COMPANIONS_ROLL)
end

return item_object
