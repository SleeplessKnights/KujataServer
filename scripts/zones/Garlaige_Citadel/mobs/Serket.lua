-----------------------------------
-- Area: Garlaige Citadel (200)
--   NM: Serket
-----------------------------------
mixins = { require("scripts/mixins/rage") }
require("scripts/globals/status")
require("scripts/globals/titles")
-----------------------------------
local entity = {}

entity.onMobInitialize = function(mob)
    mob:setMobMod(xi.mobMod.DRAW_IN, 1)
end

entity.onMobSpawn = function(mob)
    mob:setLocalVar("[rage]timer", 1800) -- 30 minutes
end

entity.onMobDeath = function(mob, player, optParams)
    player:addTitle(xi.title.SERKET_BREAKER)
end

entity.onMobDespawn = function(mob)
    UpdateNMSpawnPoint(mob:getID())
    if xi.settings.main.ENABLE_ABYSSEA == 1 then
        xi.mob.nmTODPersist(mob, math.random(3600, 43200)) -- 1 to 12 hours
    else
        xi.mob.nmTODPersist(mob, math.random(75600, 86400)) -- 21 to 24 hours
    end
end

return entity
