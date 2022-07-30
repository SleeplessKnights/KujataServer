-----------------------------------
-- Area: Marjami_Ravine
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.MARJAMI_RAVINE] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED    = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED              = 6390, -- Obtained: <item>.
        GIL_OBTAINED               = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED           = 6393, -- Obtained key item: <keyitem>.
        KEYITEM_LOST               = 6394, -- Lost key item: <keyitem>.
        CARRIED_OVER_POINTS        = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY    = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER               = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        BAYLD_OBTAINED             = 7007, -- You have obtained <number> bayld!
        YOU_HAVE_LEARNED           = 7015, -- You have learned <keyitem>!
        WAYPOINT_ATTUNED           = 7694, -- Your <keyitem> has been attuned to a geomagnetic fount[/ at the frontier station/ at Frontier Bivouac #1/ at Frontier Bivouac #2/ at Frontier Bivouac #3/ at Frontier Bivouac #4]!
        EXPENDED_KINETIC_UNITS     = 7705, -- You have expended <number> kinetic unit[/s] and will be transported to another locale.
        INSUFFICIENT_UNITS         = 7706, -- Your stock of kinetic units is insufficient.
        REACHED_KINETIC_UNIT_LIMIT = 7707, -- You have reached your limit of kinetic units and cannot charge your artifact any further.
        CANNOT_RECEIVE_KINETIC     = 7708, -- There is no response. You apparently cannot receive kinetic units from this item.
        ARTIFACT_HAS_BEEN_CHARGED  = 7709, -- Your artifact has been charged with <number> kinetic unit[/s]. Your current stock of kinetic units totals <number>.
        ARTIFACT_TERMINAL_VOLUME   = 7710, -- Your artifact has been charged to its terminal volume of kinetic units.
        SURPLUS_LOST_TO_AETHER     = 7711, -- A surplus of <number> kinetic unit[/s] has been lost to the aether.
        LEATHER_SCRAPS_STREWN      = 7733, -- Leather scraps are strewn about the ground.
        HOMEPOINT_SET              = 7876, -- Home point set!
        LEARNS_SPELL               = 8174, -- <name> learns <spell>!
        UNCANNY_SENSATION          = 8176, -- You are assaulted by an uncanny sensation.
    },
    mob =
    {
    },
    npc =
    {
    },
}

return zones[xi.zone.MARJAMI_RAVINE]
