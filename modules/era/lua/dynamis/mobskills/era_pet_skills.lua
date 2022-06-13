---------------------------------------------
--   Used to Allow for Dynamic Entities    --
---------------------------------------------
---------------------------------------------
--        Module Required Scripts          --
---------------------------------------------
require("scripts/globals/dynamis")
require("modules/era/lua/dynamis/globals/era_dynamis")
require("modules/era/lua/dynamis/globals/era_dynamis_spawning")
require("modules/module_utils")
---------------------------------------------
local m = Module:new("era_pet_skills")

m:addOverride("xi.globals.mobskills.call_wyvern.onMobWeaponSkill", function(target, mob, skill)

    if mob:getLocalVar("CALL_WYVERN") == 0 then
        skill:setMsg(xi.msg.basic.SKILL_NO_EFFECT)
        return 0
    end

    if mob:getCurrentRegion() == xi.region.DYNAMIS then
        if mob:getName() == "Apocalyptic_Beast" then
            for i = 5, 1, -1 do
                xi.dynamis.spawnDynamicPet(target, mob, xi.job.DRG)
            end
        else
            xi.dynamis.spawnDynamicPet(target, mob, xi.job.DRG)
        end
    else
        mob:spawnPet()
    end

    skill:setMsg(xi.msg.basic.NONE)

    return 0

end)

m:addOverride("xi.globals.mobskills.astral_flow.onMobWeaponSkill", function(target, mob, skill)
    skill:setMsg(xi.msg.basic.USES)
    local mobID = mob:getID()
    local avatar = 0

    if mob:getLocalVar("ASTRAL_FLOW") == 0 then
        skill:setMsg(xi.msg.basic.SKILL_NO_EFFECT)
        return 0
    end

    if mob:getCurrentRegion() == xi.region.DYNAMIS then
        if mob:getName() == "Apocalyptic_Beast" then
            xi.dynamis.spawnDynamicPet(target, mob, xi.job.SMN)
            return xi.effect.ASTRAL_FLOW
        elseif mob:getName() == "Dagourmarche" then
            xi.dynamis.spawnDynamicPet(target, mob, xi.job.SMN)
            return xi.effect.ASTRAL_FLOW
        else
            return xi.effect.ASTRAL_FLOW
        end
    else
        if avatarOffsets[mobID] then
            avatar = mobID + avatarOffsets[mobID]
        else
            avatar = mobID + 2 -- default offset
        end
    
        if not GetMobByID(avatar):isSpawned() then
            GetMobByID(avatar):setSpawn(mob:getXPos() + 1, mob:getYPos(), mob:getZPos() + 1, mob:getRotPos())
            SpawnMob(avatar):updateEnmity(mob:getTarget())
        end

        return xi.effect.ASTRAL_FLOW

    end
end)

xi.dynamis.onFightApocDRG = function(mob, target)
    local apoc = GetMobByID(mob:getZone():getLocalVar("Apocalyptic Beast"))
    if os.time() >= apoc:getLocalVar("next2hrTime") then
        DespawnMob(mob:getID())
    end
end

xi.dynamis.onPetDeath = function(mob)
    if mob:getMaster():getMainJob() == xi.job.BST then
        mob:getMaster():setLocalVar("[jobSpecial]ability_", 710)
    end
end

return m
