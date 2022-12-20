-----------------------------------
-- Area: Windurst Waters
--  NPC: Goblin Merrymaker
-- Type: Starlight Festival Event NPCs
-- Multiple locations
-----------------------------------
local ID = require("scripts/zones/Windurst_Waters/IDs")
require("scripts/globals/events/starlight_celebrations")
-----------------------------------

local entity = {}

local startNodes =
{
    [17752302] =
    {
        { x = -13.000, y = -3.500, z = 38.000, wait = 0 },
        { x = -33.500, y = -3.500, z = 40.000, wait = 0 },
        { x = -57.000, y = -3.500, z = 41.000, wait = 0 },
        { x = -78.000, y = -5.000, z = 63.000, wait = 0 },
        { x = -80.000, y = -5.000, z = 87.000, wait = 0 },
        { x = -58.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -54.000, y = -4.000, z = 66.000, wait = 0 },
        { x = -40.000, y = -4.000, z = 61.000, wait = 0 },
    },
    [17752303] =
    {
        { x = -32.000, y = -5.000, z = 40.000, wait = 0 },
        { x = -57.000, y = -5.000, z = 41.000, wait = 0 },
        { x = -78.000, y = -5.000, z = 63.000, wait = 0 },
        { x = -80.000, y = -5.000, z = 87.000, wait = 0 },
        { x = -58.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -54.000, y = -5.000, z = 66.000, wait = 0 },
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
    },
    [17752304] =
    {
        { x = -57.000, y = -5.000, z = 41.000, wait = 0 },
        { x = -78.000, y = -5.000, z = 63.000, wait = 0 },
        { x = -80.000, y = -5.000, z = 87.000, wait = 0 },
        { x = -58.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -54.000, y = -5.000, z = 66.000, wait = 0 },
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
    },
    [17752305] =
    {
        { x = -78.000, y = -5.000, z = 63.000, wait = 0 },
        { x = -80.000, y = -5.000, z = 87.000, wait = 0 },
        { x = -58.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -54.000, y = -5.000, z = 66.000, wait = 0 },
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
    },
    [17752306] =
    {
        { x = -80.000, y = -5.000, z = 87.000, wait = 0 },
        { x = -58.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -54.000, y = -5.000, z = 66.000, wait = 0 },
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
    },
    [17752307] =
    {
        { x = -58.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -54.000, y = -5.000, z = 66.000, wait = 0 },
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
    },
    [17752308] =
    {
        { x = -54.000, y = -5.000, z = 66.000, wait = 0 },
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
    },
    [17752309] =
    {
        { x = -40.000, y = -11.000, z = 61.000, wait = 0 },
    },
    [17752310] =
    {
        { x = -27.000, y = -5.000, z = 67.000, wait = 0 },
        { x = -22.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -2.500, y = -5.000, z = 86.800, wait = 0 },
        { x = -2.500, y = -2.000, z = 37.000, wait = 0 },
        { x = -13.000, y = -5.000, z = 38.000, wait = 0 },
        { x = -32.000, y = -5.000, z = 40.000, wait = 0 },
        { x = -57.000, y = -5.000, z = 41.000, wait = 0 },
        { x = -78.000, y = -5.000, z = 63.000, wait = 0 },
        { x = -80.000, y = -5.000, z = 87.000, wait = 0 },
        { x = -58.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -54.000, y = -5.000, z = 66.000, wait = 0 },
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
    },
    [17752311] =
    {
        { x = -22.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -2.500, y = -5.000, z = 86.800, wait = 0 },
        { x = -2.500, y = -2.000, z = 37.000, wait = 0 },
        { x = -13.000, y = -5.000, z = 38.000, wait = 0 },
        { x = -32.000, y = -5.000, z = 40.000, wait = 0 },
        { x = -57.000, y = -5.000, z = 41.000, wait = 0 },
        { x = -78.000, y = -5.000, z = 63.000, wait = 0 },
        { x = -80.000, y = -5.000, z = 87.000, wait = 0 },
        { x = -58.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -54.000, y = -5.000, z = 66.000, wait = 0 },
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
    },
}

local pathNodes =
{
    [1] =
    {
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
        { x = -27.000, y = -5.000, z = 67.000, wait = 0 },
        { x = -22.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -2.500, y = -5.000, z = 86.800, wait = 0 },
        { x = -2.500, y = -5.000, z = 37.000, wait = 0 },
        { x = -13.000, y = -5.000, z = 38.000, wait = 0 },
        { x = -32.000, y = -5.000, z = 40.000, wait = 0 },
        { x = -57.000, y = -5.000, z = 41.000, wait = 0 },
        { x = -78.000, y = -5.000, z = 63.000, wait = 0 },
        { x = -80.000, y = -5.000, z = 87.000, wait = 0 },
        { x = -58.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -54.000, y = -5.000, z = 66.000, wait = 0 },
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
    },
    [2] =
    {
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
        { x = -27.000, y = -5.000, z = 67.000, wait = 0 },
        { x = -22.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -2.500, y = -5.000, z = 86.800, wait = 0 },
        { x = -2.500, y = -5.000, z = 37.000, wait = 0 },
        { x = -13.000, y = -5.000, z = 38.000, wait = 0 },
        { x = -7.000, y = -2.000, z = 38.000, wait = 0 },
        { x = -7.000, y = -5.000, z = 7.000, wait = 0 },
        { x = -8.000, y = -5.000, z = -23.000, wait = 0 },
        { x = -43.000, y = -5.000, z = -60.000, wait = 0 },
        { x = -44.000, y = -5.000, z = -73.000, wait = 0 },
        { x = -36.000, y = -5.000, z = -90.000, wait = 0 },
        { x = -36.000, y = -5.000, z = -103.000, wait = 0 },
        { x = -51.000, y = -5.000, z = -119.000, wait = 0 },
        { x = -52.000, y = -5.000, z = -164.000, wait = 0 },
        { x = -63.000, y = -5.000, z = -168.000, wait = 0 },
        { x = -71.000, y = -5.000, z = -170.000, wait = 0 },
        { x = -84.000, y = -5.000, z = -162.000, wait = 0 },
        { x = -113.000, y = -5.000, z = -163.000, wait = 0 },
        { x = -145.000, y = -5.000, z = -179.000, wait = 0 },
        { x = -172.000, y = -5.000, z = -180.000, wait = 0 },
        { x = -191.000, y = -5.000, z = -170.000, wait = 0 },
        { x = -202.000, y = -5.000, z = -174.000, wait = 0 },
        { x = -209.000, y = -5.000, z = -166.000, wait = 0 },
        { x = -220.000, y = -5.000, z = -143.000, wait = 0 },
        { x = -202.000, y = -5.000, z = -96.000, wait = 0 },
        { x = -200.000, y = -5.000, z = -81.000, wait = 0 },
        { x = -201.000, y = -5.000, z = -72.000, wait = 0 },
    },
    [3] =
    {
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
        { x = -27.000, y = -5.000, z = 67.000, wait = 0 },
        { x = -22.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -2.500, y = -5.000, z = 86.800, wait = 0 },
        { x = -2.500, y = -5.000, z = 37.000, wait = 0 },
        { x = -13.000, y = -5.000, z = 38.000, wait = 0 },
        { x = -7.000, y = -2.000, z = 38.000, wait = 0 },
        { x = -7.000, y = -2.000, z = 7.000, wait = 0 },
        { x = -8.000, y = -5.000, z = -23.000, wait = 0 },
        { x = -43.000, y = -5.000, z = -60.000, wait = 0 },
        { x = -44.000, y = -5.000, z = -73.000, wait = 0 },
        { x = -36.000, y = -5.000, z = -90.000, wait = 0 },
        { x = -36.000, y = -5.000, z = -103.000, wait = 0 },
        { x = -30.000, y = -5.000, z = -107.000, wait = 0 },
        { x = -5.000, y = -5.000, z = -133.000, wait = 0 },
        { x = -2.000, y = -5.000, z = -180.000, wait = 0 },
        { x = 62.000, y = -5.000, z = -180.000, wait = 0 },
        { x = 76.000, y = -5.000, z = -167.000, wait = 0 },
        { x = 62.000, y = -5.000, z = -180.000, wait = 0 },
        { x = -4.000, y = -5.000, z = -180.000, wait = 0 },
        { x = -2.000, y = -5.000, z = -180.000, wait = 0 },
        { x = -1.500, y = -9.000, z = -207.000, wait = 0 },
        { x = 26.000, y = -9.000, z = -207.000, wait = 0 },
        { x = 25.000, y = -10.000, z = -195.000, wait = 0 },
        { x = 16.000, y = -10.000, z = -194.000, wait = 0 },
        { x = 16.000, y = -10.000, z = -170.000, wait = 0 },
        { x = 8.500, y = -10.000, z = -163.000, wait = 0 },
    },
    [4] =
    {
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
        { x = -27.000, y = -5.000, z = 67.000, wait = 0 },
        { x = -22.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -2.500, y = -5.000, z = 86.800, wait = 0 },
        { x = -2.500, y = -5.000, z = 37.000, wait = 0 },
        { x = -32.000, y = -5.000, z = 40.000, wait = 0 },
        { x = -32.112, y = -5.000, z = 8.000, wait = 0 },
        { x = -42.000, y = -5.000, z = 1.000, wait = 0 },
        { x = -78.000, y = -5.000, z = 15.500, wait = 0 },
        { x = -80.400, y = -8.000, z = 10.000, wait = 0 },
        { x = -69.000, y = -10.000, z = 5.000, wait = 0 },
        { x = -80.400, y = -8.000, z = 10.000, wait = 0 },
        { x = -78.000, y = -5.000, z = 15.500, wait = 0 },
        { x = -98.000, y = -5.000, z = 24.500, wait = 0 },
        { x = -108.000, y = -5.000, z = 44.500, wait = 0 },
        { x = -102.000, y = -5.000, z = 52.500, wait = 0 },
        { x = -80.000, y = -5.000, z = 63.500, wait = 0 },
        { x = -82.000, y = -5.000, z = 87.500, wait = 0 },
        { x = -67.000, y = -9.000, z = 88.000, wait = 0 },
        { x = -66.500, y = -11.000, z = 115.000, wait = 0 },
        { x = -57.000, y = -11.000, z = 115.000, wait = 0 },
        { x = -57.000, y = -11.000, z = 105.000, wait = 0 },
        { x = -30.000, y = -11.000, z = 104.700, wait = 0 },
        { x = -22.500, y = -11.000, z = 98.000, wait = 0 },
    },
    [5] =
    {
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
        { x = -27.000, y = -5.000, z = 67.000, wait = 0 },
        { x = -22.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -2.500, y = -5.000, z = 86.800, wait = 0 },
        { x = -1.700, y = -2.000, z = 50.000, wait = 0 },
        { x = 33.000, y = -2.000, z = 49.500, wait = 0 },
        { x = 57.000, y = -2.000, z = 41.000, wait = 0 },
        { x = 74.000, y = -3.000, z = 27.000, wait = 0 },
        { x = 83.000, y = -3.000, z = 28.000, wait = 0 },
        { x = 121.000, y = -2.000, z = 49.000, wait = 0 },
        { x = 106.000, y = -3.000, z = 70.000, wait = 0 },
        { x = 112.000, y = -3.000, z = 85.000, wait = 0 },
        { x = 123.000, y = -3.000, z = 93.500, wait = 0 },
        { x = 124.000, y = -3.000, z = 112.000, wait = 0 },
        { x = 147.000, y = -3.000, z = 135.000, wait = 0 },
        { x = 147.500, y = -3.000, z = 158.000, wait = 0 },
        { x = 148.000, y = 0.000, z = 186.000, wait = 0 },
        { x = 147.000, y = -3.000, z = 209.000, wait = 0 },
        { x = 155.000, y = -8.000, z = 208.000, wait = 0 },
        { x = 155.400, y = -8.000, z = 257.000, wait = 0 },
        { x = 179.000, y = -8.000, z = 256.000, wait = 0 },
        { x = 178.000, y = -8.000, z = 237.000, wait = 0 },
        { x = 177.000, y = -3.000, z = 213.000, wait = 0 },
    },
    [6] =
    {
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
        { x = -27.000, y = -5.000, z = 67.000, wait = 0 },
        { x = -22.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -2.500, y = -5.000, z = 86.800, wait = 0 },
        { x = -1.700, y = -2.000, z = 50.000, wait = 0 },
        { x = 33.000, y = -2.000, z = 49.500, wait = 0 },
        { x = 57.000, y = -2.000, z = 41.000, wait = 0 },
        { x = 74.000, y = -3.000, z = 27.000, wait = 0 },
        { x = 83.000, y = -3.000, z = 28.000, wait = 0 },
        { x = 121.000, y = -2.000, z = 49.000, wait = 0 },
        { x = 106.000, y = -3.000, z = 70.000, wait = 0 },
        { x = 112.000, y = -3.000, z = 85.000, wait = 0 },
        { x = 123.000, y = -3.000, z = 93.500, wait = 0 },
        { x = 124.000, y = -3.000, z = 112.000, wait = 0 },
        { x = 147.000, y = -3.000, z = 135.000, wait = 0 },
        { x = 147.500, y = -3.000, z = 158.000, wait = 0 },
        { x = 148.000, y = 0.000, z = 186.000, wait = 0 },
        { x = 147.000, y = -3.000, z = 209.000, wait = 0 },
        { x = 111.000, y = -3.000, z = 211.000, wait = 0 },
        { x = 99.000, y = -3.000, z = 199.000, wait = 0 },
        { x = 99.000, y = -3.000, z = 171.000, wait = 0 },
        { x = 117.000, y = -3.000, z = 171.000, wait = 0 },
        { x = 118.500, y = -3.000, z = 185.000, wait = 0 },
        { x = 148.000, y = 0.000, z = 186.000, wait = 0 },
    },
    [7] =
    {
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
        { x = -27.000, y = -5.000, z = 67.000, wait = 0 },
        { x = -22.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -2.500, y = -5.000, z = 86.800, wait = 0 },
        { x = -1.700, y = -2.000, z = 50.000, wait = 0 },
        { x = 33.000, y = -2.000, z = 49.500, wait = 0 },
        { x = 57.000, y = -2.000, z = 41.000, wait = 0 },
        { x = 74.000, y = -3.000, z = 27.000, wait = 0 },
        { x = 83.000, y = -3.000, z = 28.000, wait = 0 },
        { x = 121.000, y = -2.000, z = 49.000, wait = 0 },
        { x = 106.000, y = -3.000, z = 70.000, wait = 0 },
        { x = 112.000, y = -3.000, z = 85.000, wait = 0 },
        { x = 123.000, y = -3.000, z = 93.500, wait = 0 },
        { x = 124.000, y = -3.000, z = 112.000, wait = 0 },
        { x = 147.000, y = -3.000, z = 135.000, wait = 0 },
        { x = 147.500, y = -3.000, z = 158.000, wait = 0 },
        { x = 148.000, y = 0.000, z = 186.000, wait = 0 },
        { x = 147.000, y = -3.000, z = 209.000, wait = 0 },
        { x = 155.000, y = -8.000, z = 211.000, wait = 0 },
        { x = 155.400, y = -8.000, z = 257.000, wait = 0 },
        { x = 179.000, y = -8.000, z = 256.000, wait = 0 },
        { x = 178.000, y = -8.000, z = 237.000, wait = 0 },
        { x = 177.000, y = -3.000, z = 213.000, wait = 0 },
        { x = 155.000, y = -8.000, z = 211.000, wait = 0 },
        { x = 147.000, y = -3.000, z = 209.000, wait = 0 },
        { x = 148.000, y = 0.000, z = 186.000, wait = 0 },
        { x = 147.500, y = -3.000, z = 158.000, wait = 0 },
        { x = 147.000, y = -3.000, z = 135.000, wait = 0 },
    },
    [8] =
    {
        { x = -40.000, y = -5.000, z = 61.000, wait = 0 },
        { x = -40.000, y = -5.000, z = 86.000, wait = 0 },
        { x = -40.000, y = -7.000, z = 160.000, wait = 0 },
        { x = -43.000, y = -7.000, z = 173.000, wait = 0 },
        { x = -49.000, y = -7.000, z = 185.000, wait = 0 },
        { x = -40.000, y = -7.000, z = 205.000, wait = 0 },
        { x = -39.000, y = -7.000, z = 222.000, wait = 0 },
    },
}

local goblinText =
{
    [1] = ID.text.MERRYMAKER_TOY,
    [2] = ID.text.MERRYMAKER_TOY2,
}

entity.onSpawn = function(npc)
    npc:initNpcAi()
    local npcID = npc:getID()
    local currentPath = startNodes[npcID]
    npc:setPos(xi.path.first(startNodes[npcID]))
    npc:pathThrough(currentPath, xi.path.flag.COORDS)
end

entity.onTrade = function(player, npc, trade)
    xi.events.starlightCelebration.merryMakersGoblinOnTrade(player, npc, trade, ID)
end

entity.onPathPoint = function(npc)
end

entity.onTrigger = function(player, npc)
    xi.events.starlightCelebration.merryMakersGoblinOnTrigger(player, npc, ID)

end

entity.onPathComplete = function(npc)
    local estPath = npc:getLocalVar("[StarlightMerryMakers]EstPath")
    local pathCheck = npc:getLocalVar("[StarlightMerryMakers]Path")
    local rndMsg = math.random(1, 2)
    local rndPath = math.random(1, 8)

    if estPath ~= 0 then -- has returned to establishing path
        npc:setLocalVar("[StarlightMerryMakers]EstPath", 0)
        npc:timer(1500, function(npcArg)
            npcArg:showText(npc, goblinText[rndMsg])
            npcArg:pathThrough(pathNodes[1], xi.path.flag.COORDS)
        end)
    else
        if pathCheck == 0 then -- on establishing path, can pick a new path
            npc:setLocalVar("[StarlightMerryMakers]Path", rndPath)
            npc:timer(1500, function(npcArg)
                npcArg:showText(npc, goblinText[rndMsg])
                npcArg:pathThrough(pathNodes[rndPath], xi.path.flag.COORDS)
            end)
        else -- on a path branch, return to estlabishing path
            npc:setLocalVar("[StarlightMerryMakers]Path", 0)
            npc:setLocalVar("[StarlightMerryMakers]EstPath", 1)
            npc:timer(1500, function(npcArg)
                npcArg:showText(npc, goblinText[rndMsg])
                npcArg:pathThrough(pathNodes[pathCheck], bit.bor(xi.path.flag.COORDS, xi.path.flag.REVERSE))
            end)
        end
    end

end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    xi.events.starlightCelebration.merryMakersGoblinOnFinish(player, csid, option, ID)
end

return entity

-- path 3, 5