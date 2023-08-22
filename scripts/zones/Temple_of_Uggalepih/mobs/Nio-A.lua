-----------------------------------
-- Area: Temple of Uggalepih
--   NM: Nio-A
-----------------------------------
mixins = { require("scripts/mixins/job_special") }
-----------------------------------
local entity = {}

entity.onMobInitialize = function(mob)
    mob:setMobMod(xi.mobMod.IDLE_DESPAWN, 180)
end

entity.onMobSpawn = function(mob)
    DespawnMob(mob:getID(), 180)
    mob:addMod(xi.mod.UDMGMAGIC, -8000)
end

entity.onMobDeath = function(mob, player, optParams)
end

return entity
