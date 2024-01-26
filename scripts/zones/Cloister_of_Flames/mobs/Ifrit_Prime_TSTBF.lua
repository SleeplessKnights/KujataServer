-----------------------------------
-- Area: Cloister of Flames
--  Mob: Ifrit Prime
-- Involved in Quest: Trial Size Trial by Fire
-----------------------------------
mixins = { require("scripts/mixins/job_special") }
-----------------------------------
local entity = {}

entity.onMobInitialize = function(mob)
    mob:setWallhackAllowed(false)
end

entity.onMobSpawn = function(mob)
    mob:addMod(xi.mod.REGAIN, 50)
    mob:setMod(xi.mod.UDMGPHYS, -6000)
    mob:setMod(xi.mod.UDMGRANGE, -6000)
    mob:addMod(xi.mod.LIGHT_MEVA, -35)
    mob:setMobMod(xi.mobMod.MAGIC_RANGE, 40)

    xi.mix.jobSpecial.config(mob, {
        specials =
        {
            { id = 848, hpp = math.random(30, 55) }, -- uses Inferno once while near 50% HPP.
        },
    })
end

entity.onMobEngaged = function(mob, target)
    -- they should always use a tp move when first engaged
    mob:setTP(3000)
end

entity.onMobFight = function(mob, target)
end

entity.onMobDeath = function(mob, player, optParams)
end

return entity
