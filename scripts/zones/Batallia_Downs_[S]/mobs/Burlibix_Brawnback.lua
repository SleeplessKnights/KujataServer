-----------------------------------
-- Area: Batallia Downs [S]
--   NM: Burlibix Brawnback
-----------------------------------
require("scripts/globals/hunts")
-----------------------------------
local entity = {}

entity.onMobSpawn = function(mob)
    mob:addMod(xi.mod.STUNRES, 50)
end

entity.onMobDeath = function(mob, player, optParams)
    xi.hunts.checkHunt(mob, player, 494)
end

return entity
