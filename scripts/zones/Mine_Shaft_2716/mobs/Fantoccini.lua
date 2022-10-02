-----------------------------------
-- Area: Mine Shaft 2716
-- Mob: Fantoccini
-- ENM: Pulling the Strings
-----------------------------------
local ID = require("scripts/zones/Mine_Shaft_2716/IDs")
require("scripts/globals/status")
-----------------------------------
local entity = {}

local spawnPet = function(mob)
    local pet = GetMobByID(mob:getLocalVar("petID"))
    local job = mob:getLocalVar("job")
    mob:setMobMod(xi.mobMod.NO_MOVE, 1)
    mob:entityAnimationPacket("casm")
    mob:setLocalVar("petSpawned", 1)
    mob:SetMagicCastingEnabled(false)
    mob:SetAutoAttackEnabled(false)
    mob:SetMobAbilityEnabled(false)

    -- Handle for SMN
    if job == xi.job.SMN then
        mob:setLocalVar("petModel", math.random(1,7)) -- Random Avatar
        pet:setModelId(ID.jobTable[job].petModelID[mob:getLocalVar("petModel")]) -- Set Model
    -- Handle for BST
    elseif job == xi.job.BST then
        mob:setLocalVar("petModel", math.random(1,4)) -- Random Beast
        pet:setModelId(ID.jobTable[job].petModelID[mob:getLocalVar("petModel")]) -- Set Model
    -- Handle for PUP
    elseif job == xi.job.PUP then
        mob:setLocalVar("petModel", math.random(1,3)) -- Random Puppet
        pet:setModelId(ID.jobTable[job].petModelID[mob:getLocalVar("petModel")][1]) -- Set Model
        pet:changeJob(ID.jobTable[job].petModelID[mob:getLocalVar("petModel")][2]) -- Change Job
    end

    mob:timer(3000, function(mobArg)
        if mobArg:isAlive() then
            local pos = mobArg:getPos()
            mobArg:setMobMod(xi.mobMod.NO_MOVE, 0)
            mobArg:entityAnimationPacket("shsm")
            mobArg:SetMagicCastingEnabled(true)
            mobArg:SetAutoAttackEnabled(true)
            mobArg:SetMobAbilityEnabled(true)
            mob:setLocalVar("control", 0)
            SpawnMob(pet:getID())
            pet:setPos(pos.x + math.random(-2,2), pos.y, pos.z + math.random(-2,2), pos.rot)
        end
    end)
end

entity.onMobSpawn = function(mob)
    mob:timer(3000, function(mobArg)
        local job = mob:getBattlefield():getPlayers()[1]:getMainJob()
        mob:setLocalVar("control", 1)
        mob:setLocalVar("job", job)

        mobArg:setModelId(ID.jobTable[job].modelID)
        mobArg:changeJob(job)

        if ID.jobTable[job].petID ~= 0 then
            mobArg:setLocalVar("petID", ID.jobTable[job].petID + mob:getID())
        end
    end)
end

entity.onMobFight = function(mob, target)
    -- Fantoccini only gains TP from moblin dice
    mob:setTP(mob:getLocalVar("tp"))

    -- Pet summoning control
    if mob:getLocalVar("petID") > 0 then
        if not GetMobByID(mob:getLocalVar("petID")):isSpawned() and mob:getLocalVar("petSpawned") == 0 then
            spawnPet(mob)
        elseif not GetMobByID(mob:getLocalVar("petID")):isSpawned() and mob:getLocalVar("control") == 0 then
            mob:setLocalVar("control", 1)
            mob:timer(30000, function(mobArg)
                mob:setLocalVar("petSpawned", 0)
            end)
        end
    end
end

entity.onMobDeath = function(mob)
    local moblin = GetMobByID(mob:getID()-2)

    moblin:showText(moblin, ID.text.NOT_HOW)
    DespawnMob(mob:getLocalVar("petID"))
    DespawnMob(moblin:getID())
end

return entity
