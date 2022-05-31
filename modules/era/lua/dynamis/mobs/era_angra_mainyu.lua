-----------------------------------
-- Angra Mainyu Era Module
-----------------------------------
require("modules/era/lua/dynamis/globals/era_dynamis")
require("modules/era/lua/dynamis/globals/era_dynamis_spawning")
require("scripts/globals/dynamis")
require("scripts/globals/zone")
-----------------------------------

xi = xi or {}
xi.dynamis = xi.dynamis or {}

xi.dynamis.onSpawnAngra = function(mob)
    xi.dynamis.setMegaBossStats(mob)
    mob:setMobMod(xi.mobMod.MAGIC_COOL, 25)

    xi.mix.jobSpecial.config(mob, {
        between = 300,
        specials =
        {
            {id = xi.jsa.CHAINSPELL, hpp = 25},
        },
    })
end


xi.dynamis.onFightAngra = function(mob, target)
    local mobsInZone = zone:getMobs()
    local mobIndex = mob:getLocalVar(string.format("MobIndex_%s", mob:getID()))
    local nmchildren = xi.dynamis.mobList[mob:getZoneID()][mobIndex].nmchildren
    local children = {nmchildren[2], nmchildren[3], nmchildren[4], nmchildren[5]}
    local teles =
    {
    {279.4038, 20, 535.4518},
    {312.6868, 20.5267, 511.9843},
    {322.2653, 20, 481.8030},
    {295.9948, 20.7949, 483.1078},
    {269.6127, 19.5547, 505.3206},
    {240.9685, 20, 521.5283},
    {239.8057, 20.1687, 487.3961},
    {258.6785, 20.1525, 460.4170},
    }

    local teleTime = mob:getLocalVar("teleTime")
    if mob:getBattleTime() - teleTime > 30 then
        randPos = teles[math.random((1), (8))]
        xi.dynamis.teleport(mob, 1000)
        mob:setPos(randPos, 0)
        for _, childIndex in pairs(children) do
            local child = GetMobByID(mob:getLocalVar(string.format("ChildID_%s", childIndex)))
            if child:isAlive() and child:getHPP() <= 99 then
                child:disengage()
                child:resetEnmity(target)
                child:updateEnmity(mob:getTarget())
            end
        end
        mob:setLocalVar("teleTime", mob:getBattleTime())
    end

    for _, childIndex in pairs(children) do
        local child = GetMobByID(mob:getLocalVar(string.format("ChildID_%s", childIndex)))
        if child:isAlive() and child:getCurrentAction() == xi.act.ROAMING then
            child:updateEnmity(target)
        end
    end
end

xi.dynamis.onMagicPrepAngra = function(mob)
    if mob:getHPP() <= 25 then
        return 367 -- Death
    else
        -- Can cast Blindga, Death, Graviga, Silencega, and Sleepga II.
        -- Casts Graviga every time before he teleports.
        local rnd = math.random()

        if rnd < 0.2 then
            return 361 -- Blindga
        elseif rnd < 0.4 then
            return 367 -- Death
        elseif rnd < 0.6 then
            return 366 -- Graviga
        elseif rnd < 0.8 then
            return 274 -- Sleepga II
        else
            return 359 -- Silencega
        end
    end
end

xi.dynamis.onRoamAngra = function(mob)
    local currentPos = mob:getPos()
    local spawnPos = mob:getSpawnPos()
    local mobIndex = mob:getLocalVar(string.format("MobIndex_%s", mob:getID()))
    local nmchildren = xi.dynamis.mobList[mob:getZoneID()][mobIndex].nmchildren
    local children = {nmchildren[2], nmchildren[3], nmchildren[4], nmchildren[5]}

    if currentPos.x ~= spawnPos.x and currentPos.z ~= spawnPos.z then
        mob:pathTo(spawnPos.x, spawnPos.y, spawnPos.z)
    end

    for _, childIndex in pairs(children) do
        local child = GetMobByID(mob:getLocalVar(string.format("ChildID_%s", childIndex)))
        local childCurrentPos = child:getPos()
        local childSpawnPos = child:getSpawnPos()
        if child:isAlive() and child:getCurrentAction() == xi.act.ROAMING then
            if childCurrentPos.x ~= childSpawnPos.x and childCurrentPos.z ~= childSpawnPos.z then
            child:pathTo(childSpawnPos.x, childSpawnPos.y, childSpawnPos.z)
            end
        end
    end
end