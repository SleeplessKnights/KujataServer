-----------------------------------
-- ID: 6297
-- Item: Juji Shr. Pouch
-- When used, you will obtain one stack of Juji Shurikens
-----------------------------------
require("scripts/globals/msg")
require("scripts/globals/items")
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target)
    local result = 0
    if target:getFreeSlotsCount() == 0 then
        result = xi.msg.basic.ITEM_NO_USE_INVENTORY
    end

    return result
end

itemObject.onItemUse = function(target)
    target:addItem(xi.items.JUJI_SHURIKEN, 99)
end

return itemObject
