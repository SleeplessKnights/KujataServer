-----------------------------------
-- Global file for Apollyopn and Temenos
-----------------------------------
require("scripts/globals/battlefield")
require("scripts/globals/keyitems")
require('scripts/globals/interaction/container')
require("scripts/globals/status")
require("scripts/globals/zone")
-----------------------------------

xi = xi or {}
xi.limbus = xi.limbus or {}

function xi.limbus.enter(player, entrance)
    switch (entrance): caseof
    {
        [0] = function ()
            player:setPos(-668, 0.1, -666, 209, 38)  --  instance entrer -599 0 -600
        end, --  sortiezone -642, -4, -642, -637, 4, -637

        [1] = function ()
            player:setPos(643, 0.1, -600, 124, 38)  --  instance entrer 600 1 -600
        end, --  sortiezone  637, -4, -642, 642, 4, -637
    }
end

function xi.limbus.setupArmouryCrates(bfid, hide)
    local ID = zones[xi.zone.TEMENOS]
    switch (bfid): caseof
    {
        -- Central Temenos: Basement
        [1301] = function()
            GetNPCByID(ID.npc.TEMENOS_C_CRATE[5]):setStatus(xi.status.DISAPPEAR)
        end,

        -- Central Temenos: 1st Floor
        [1303] = function()
            GetNPCByID(ID.npc.TEMENOS_C_CRATE[1]):setStatus(xi.status.DISAPPEAR)
        end,

        -- Central Temenos: 2nd Floor
        [1304] = function()
            GetNPCByID(ID.npc.TEMENOS_C_CRATE[2]):setStatus(xi.status.DISAPPEAR)
        end,

        -- Central Temenos: 3rd Floor
        [1305] = function()
            GetNPCByID(ID.npc.TEMENOS_C_CRATE[3]):setStatus(xi.status.DISAPPEAR)
        end,

        -- Central Temenos: 4th Floor
        [1306] = function()
            GetNPCByID(ID.npc.TEMENOS_C_CRATE[4][1]):setStatus(xi.status.DISAPPEAR)

            for i = ID.npc.TEMENOS_C_CRATE[4][1] + 2, ID.npc.TEMENOS_C_CRATE[4][1] + 20 do
                if hide then
                    GetNPCByID(i):setStatus(xi.status.DISAPPEAR)
                else
                    GetNPCByID(i):setStatus(xi.status.NORMAL)
                end
            end
        end,
    }
end

function xi.limbus.handleDoors(battlefield, open, door)
    local battlefieldID = battlefield:getID()
    local animation     = xi.animation.CLOSE_DOOR
    local ID = zones[xi.zone.TEMENOS]

    if open then
        animation = xi.animation.OPEN_DOOR
    end

    if door then
        if open then
            local players = battlefield:getPlayers()

            for i, member in pairs(players) do
                member:messageSpecial(ID.text.GATE_OPEN)
                member:messageSpecial(ID.text.TIME_LEFT, battlefield:getRemainingTime() / 60)
            end
        end

        GetNPCByID(door):setAnimation(animation)
        return
    end

    switch (battlefieldID): caseof
    {
        -- Temenos: Northern Tower
        [1299] = function()
            for i = 1, 7 do
                GetNPCByID(ID.npc.TEMENOS_N_GATE[i]):setAnimation(animation)
            end
        end,

        -- Temenos: Eastern Tower
        [1300] = function()
            for i = 1, 7 do
                GetNPCByID(ID.npc.TEMENOS_E_GATE[i]):setAnimation(animation)
            end
        end,

        -- Temenos: Western Tower
        [1298] = function()
            for i = 1, 7 do
                GetNPCByID(ID.npc.TEMENOS_W_GATE[i]):setAnimation(animation)
            end
        end,

        -- Central Temenos: 1st Floor
        [1303] = function()
            GetNPCByID(ID.npc.TEMENOS_C_GATE[1]):setAnimation(animation)
        end,

        -- Central Temenos: 2nd Floor
        [1304] = function()
            GetNPCByID(ID.npc.TEMENOS_C_GATE[2]):setAnimation(animation)
        end,

        -- Central Temenos: 3rd Floor
        [1305] = function()
            GetNPCByID(ID.npc.TEMENOS_C_GATE[3]):setAnimation(animation)
        end,

        -- Central Temenos: 4th Floor
        [1306] = function()
            GetNPCByID(ID.npc.TEMENOS_C_GATE[4]):setAnimation(animation)
        end,

        -- Central Temenos: Basement
        [1301] = function()
            GetNPCByID(ID.npc.TEMENOS_C_GATE[5]):setAnimation(animation)
        end,
    }
end

function xi.limbus.handleLootRolls(battlefield, lootTable, players, npc)
    players = players or battlefield:getPlayers()

    for i = 1, #lootTable do
        local lootGroup = lootTable[i]

        if lootGroup then
            local max = 0

            for _, entry in pairs(lootGroup) do
                max = max + entry.droprate
            end

            local roll = math.random(max)

            for _, entry in pairs(lootGroup) do
                max = max - entry.droprate

                if roll > max then
                    if entry.itemid ~= 0 then
                        players[1]:addTreasure(entry.itemid, npc)
                    end

                    break
                end
            end
        end
    end
end

function xi.limbus.extendTimeLimit(battlefield, minutes, zone, npc)
    local ID        = zones[zone]
    local players   = battlefield:getPlayers()
    local timeLimit = battlefield:getTimeLimit()
    local extension = minutes * 60
    battlefield:setTimeLimit(timeLimit + extension)

    for _, player in pairs(players) do
        player:messageSpecial(ID.text.TIME_EXTENDED, minutes)
        player:messageSpecial(ID.text.TIME_LEFT, battlefield:getRemainingTime() / 60)
    end
end

function xi.limbus.showRecoverCrate(crateID)
    local crate = GetMobByID(crateID)
    crate:setAnimationSub(8)
    crate:setStatus(xi.status.NORMAL)
    crate:setUntargetable(false)
    crate:resetLocalVars()
end

function xi.limbus.hideCrate(crate)
    crate:setStatus(xi.status.DISAPPEAR)
    crate:setUntargetable(true)
    crate:resetLocalVars()
end

function xi.limbus.spawnFrom(mob, crateID)
    local crate = GetEntityByID(crateID)
    if crate:getLocalVar("opened") == 0 then
        crate:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos(), mob:getRotPos())
        crate:setStatus(xi.status.NORMAL)
        crate:setUntargetable(false)
        crate:setAnimationSub(8)
    end
end

function xi.limbus.spawnRecoverFrom(mob, crateID)
    local crate = GetMobByID(crateID)
    crate:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos(), mob:getRotPos())
    xi.limbus.showRecoverCrate(crateID)
end

Limbus = setmetatable({ }, { __index = Battlefield })
Limbus.__index = Limbus
Limbus.__eq = function(m1, m2)
    return m1.name == m2.name
end

Limbus.name = ""
Limbus.serverVar = ""

-- Creates a new Limbus Battlefield interaction
-- Data takes the additional following keys:
--  - name: The name of the Limbus area.
--  - exitLocation: Where to boot the player out. This is specifically used for Apollyon areas.
--  - timeExtension: How much time to grant when openning a time Armoury Crate.
function Limbus:new(data)
    data.createsWornItem = false
    data.showTimer = false
    local obj = Battlefield:new(data)
    setmetatable(obj, self)
    obj.name = data.name
    obj.ID = zones[obj.zoneId][obj.name]
    obj.serverVar = "[" .. obj.name .. "]Time"
    obj.exitLocation = data.exitLocation or 0
    obj.timeExtension = data.timeExtension or 0
    return obj
end

function Limbus:register()
    Battlefield.register(self)

    -- Add recover crates that are technically "mobs"
    table.insert(self.groups, { mobIds = self.ID.npc.RECOVER_CRATES })

    return self
end

function Limbus:onEventFinishEnter(player, csid, option)
    Battlefield.onEventFinishEnter(self, player, csid, option)

    local battlefield = player:getBattlefield()
    local initiatorId, _ = battlefield:getInitiator()
    if player:getID() == initiatorId then
        local ID = zones[player:getZoneID()]
        local alliance = player:getAlliance()
        for _, member in pairs(alliance) do
            if member:getZoneID() == player:getZoneID() then
                member:messageSpecial(ID.text.HUM)
            end
        end
    end
end

function Limbus:onBattlefieldInitialise(battlefield)
    Battlefield.onBattlefieldInitialise(self, battlefield)
    SetServerVariable(self.serverVar, battlefield:getTimeLimit() / 60)

    self:closeDoors()

    local ID = zones[battlefield:getZoneID()][self.name]

    -- Setup Item Crates
    if ID.npc.ITEM_CRATES then
        for i, crateID in ipairs(ID.npc.ITEM_CRATES) do
            local crate = GetEntityByID(crateID)
            xi.limbus.hideCrate(crate)
            crate:addListener("ON_TRIGGER", "TRIGGER_ITEM_CRATE", utils.bind(self.handleOpenItemCrate, self))
        end
    end

    -- Setup Time Crates
    if ID.npc.TIME_CRATES then
        for i, crateID in ipairs(ID.npc.TIME_CRATES) do
            local crate = GetEntityByID(crateID)
            xi.limbus.hideCrate(crate)
            crate:addListener("ON_TRIGGER", "TRIGGER_TIME_CRATE", utils.bind(self.handleOpenTimeCrate, self))
        end
    end

    -- Setup Recover Crates
    -- Recover crates are special in that they are mobs that perform a skill on the player when triggered
    if ID.npc.RECOVER_CRATES then
        for i, crateID in ipairs(ID.npc.RECOVER_CRATES) do
            local crate = GetEntityByID(crateID)
            xi.limbus.hideCrate(crate)
            crate:setBattleID(1) -- Different battle ID prevents the crate from being hit by AOEs
            crate:addListener("ON_TRIGGER", "TRIGGER_RECOVER_CRATE", utils.bind(self.handleOpenRecoverCrate, self))
        end
    end

    -- Setup Winning Loot Crate
    if ID.npc.LOOT_CRATE then
        local crate = GetEntityByID(ID.npc.LOOT_CRATE)
        xi.limbus.hideCrate(crate)
        crate:addListener("ON_TRIGGER", "TRIGGER_LOOT_CRATE", utils.bind(self.handleOpenLootCrate, self))
    end

    -- Setup Linked Crates (can only open one)
    if ID.LINKED_CRATES then
        for crateID, _ in pairs(ID.LINKED_CRATES) do
            local mainCrate = GetEntityByID(crateID)
            mainCrate:addListener("ON_TRIGGER", "TRIGGER_LINKED_CRATE", utils.bind(self.handleLinkedCrate, self))
        end
    end
end

function Limbus:onBattlefieldTick(battlefield, tick)
    Battlefield.onBattlefieldTick(self, battlefield, tick)
    if battlefield:getRemainingTime() % 60 == 0 then
        SetServerVariable(self.serverVar, battlefield:getRemainingTime() / 60)
    end
end

function Limbus:onBattlefieldRegister(player, battlefield)
end

function Limbus:onBattlefieldEnter(player, battlefield)
    Battlefield.onBattlefieldEnter(self, player, battlefield)
    player:setCharVar("Cosmo_Cleanse_TIME", os.time())
end

function Limbus:onBattlefieldDestroy(battlefield)
    SetServerVariable(self.serverVar, 0)
end

function Limbus:onBattlefieldWin(player, battlefield)
    player:startEvent(32001, { [0] = self.exitLocation, [4] = self.zoneId, [5] = battlefield:getArea() - 1 })
end

function Limbus:onBattlefieldLeave(player, battlefield, leavecode)
    Battlefield.onBattlefieldLeave(self, player, battlefield, leavecode)
    local ID = zones[battlefield:getZoneID()]
    player:messageSpecial(ID.text.HUM + 1)
end

function Limbus:extendTimeLimit(ID, battlefield)
    local timeLimit = battlefield:getTimeLimit()
    battlefield:setTimeLimit(timeLimit + utils.minutes(self.timeExtension))
    local remaining = battlefield:getRemainingTime() / 60

    for _, player in pairs(battlefield:getPlayers()) do
        player:messageSpecial(ID.text.TIME_EXTENDED, self.timeExtension)
        player:messageSpecial(ID.text.TIME_LEFT, remaining)
    end
end

function Limbus:handleOpenItemCrate(player, crate)
    npcUtil.openCrate(crate, function()
        self:handleLootRolls(player:getBattlefield(), self.loot[crate:getID()], crate)
    end)
end

function Limbus:handleOpenTimeCrate(player, crate)
    npcUtil.openCrate(crate, function()
        self:extendTimeLimit(zones[self.zoneId], player:getBattlefield())
    end)
end

function Limbus:handleOpenRecoverCrate(player, crate)
    npcUtil.openCrate(crate, function()
        -- Use wz_recover_all to heal players
        crate:useMobAbility(1531, player)
    end)
end

function Limbus:handleOpenLootCrate(player, crate)
    npcUtil.openCrate(crate, function()
        local battlefield = player:getBattlefield()
        self:handleLootRolls(battlefield, self.loot[self.ID.npc.LOOT_CRATE], crate)
        battlefield:setLocalVar("cutsceneTimer", self.delayToExit)
        battlefield:setStatus(xi.battlefield.status.WON)
    end)
end

function Limbus:handleLinkedCrate(player, npc)
    for _, crateID in ipairs(self.ID.LINKED_CRATES[npc:getID()]) do
        local crate = GetEntityByID(crateID)
        crate:setLocalVar("opened", 1)
        npcUtil.disappearCrate(crate)
    end
end

function Limbus:openDoor(battlefield, floor)
    local door = GetNPCByID(self.ID.npc.PORTAL[floor])
    if door:getAnimation() == xi.animation.OPEN_DOOR then
        return
    end

    local ID = zones[door:getZoneID()]
    local remaining = battlefield:getRemainingTime() / 60

    for i, player in pairs(battlefield:getPlayers()) do
        player:messageSpecial(ID.text.GATE_OPEN)
        player:messageSpecial(ID.text.TIME_LEFT, remaining)
    end

    door:setAnimation(xi.animation.OPEN_DOOR)
end

function Limbus:closeDoors()
    if self.ID.npc.PORTAL then
        for _, doorID in ipairs(self.ID.npc.PORTAL) do
            GetNPCByID(doorID):setAnimation(xi.animation.CLOSE_DOOR)
        end
    end
end
