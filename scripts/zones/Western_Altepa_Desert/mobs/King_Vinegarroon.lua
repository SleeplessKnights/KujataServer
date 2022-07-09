-----------------------------------
-- Area: Western Altepa Desert
--   NM: King Vinegarroon
-----------------------------------
require("scripts/globals/titles")
require("scripts/globals/world")
require("scripts/globals/mobs")
-----------------------------------
local entity = {}

entity.onMobInitialize = function(mob)
    mob:setMobMod(xi.mobMod.ADD_EFFECT, 1)
end

entity.onMobDrawIn = function(mob, target)
    -- todo make him use AoE tp move
    mob:addTP(3000)
end

entity.onAdditionalEffect = function(mob, target, damage)
    return xi.mob.onAddEffect(mob, target, damage, xi.mob.ae.PETRIFY, {chance = 100})
end

entity.onMobDisengage = function(mob)
    local weather = mob:getWeather()

    if weather ~= xi.weather.DUST_STORM and weather ~= xi.weather.SAND_STORM then
        DespawnMob(mob:getID())
    end
end

entity.onMobRoam = function(mob)
    local weather = mob:getWeather()
    entity.mobRegen(mob)

    if weather ~= xi.weather.DUST_STORM and weather ~= xi.weather.SAND_STORM then
        DespawnMob(mob:getID())
    end
end

entity.onMobDeath = function(mob, player, isKiller)
    player:addTitle(xi.title.VINEGAR_EVAPORATOR)
end

entity.onMobDespawn = function(mob)
    UpdateNMSpawnPoint(mob:getID())
    mob:setRespawnTime(math.random(75600, 86400)) -- 21 to 24 hours
end

entity.mobRegen = function(mob)
    local hour = VanadielHour()

    if hour >= 6 and hour <= 20 then
        mob:setMod(xi.mod.REGEN, 125)
    else
        mob:setMod(xi.mod.REGEN, 250)
    end
end

entity.onMobFight = function(mob, target)
    entity.mobRegen(mob)

    local drawInWait = mob:getLocalVar("DrawInWait")

    if target:getZPos() > -540 and os.time() > drawInWait then -- Northern Draw In
        local rot = target:getRotPos()
        target:setPos(target:getXPos(),target:getYPos(),-542,rot)
        mob:messageBasic(232, 0, 0, target)
        mob:setLocalVar("DrawInWait", os.time() + 2)
    elseif target:getXPos() < -350 and os.time() > drawInWait then  -- Southern Draw In
        local rot = target:getRotPos()
        target:setPos(-348,target:getYPos(),target:getZPos(),rot)
        mob:messageBasic(232, 0, 0, target)
        mob:setLocalVar("DrawInWait", os.time() + 2)
    end
end

return entity
