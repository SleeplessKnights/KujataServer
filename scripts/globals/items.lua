-----------------------------------
-- Items
-- Item table by ID (used by quests)
-----------------------------------
xi = xi or {}

xi.items =
{
    IMPERIAL_STANDARD               = 129,
    TABLEWARE_SET                   = 132,
    TEA_SET                         = 133,
    SAN_DORIAN_FLAG                 = 181,
    BASTOKAN_FLAG                   = 182,
    COPY_OF_ANCIENT_BLOOD           = 206,
    HUME_M_MANNEQUIN                = 256,
    HUME_F_MANNEQUIN                = 257,
    ELVAAN_M_MANNEQUIN              = 258,
    ELVAAN_F_MANNEQUIN              = 259,
    TARUTARU_M_MANNEQUIN            = 260,
    TARUTARU_F_MANNEQUIN            = 261,
    MITHRA_MANNEQUIN                = 262,
    GALKA_MANNEQUIN                 = 263,
    PRISHE_STATUE                   = 277,
    NANAA_MIHGO_STATUE              = 286,
    CANTEEN_OF_DRACHENFALL_WATER    = 492,
    BRASS_CANTEEN                   = 493,
    QUADAV_AUGURY_SHELL             = 494,
    QUADAV_CHARM                    = 495,
    SHEEPSKIN                       = 505,
    MAGICMART_FLYER                 = 532,
    STARFALL_TEAR                   = 546,
    TOMB_GUARDS_WATERSKIN           = 547,
    DELKFUTT_KEY                    = 549,
    LOCK_OF_HIWONS_HAIR             = 552,
    DIVINATION_SPHERE               = 556,
    AHRIMAN_LENS                    = 557,
    TARUT_CARD_THE_FOOL             = 558,
    TARUT_CARD_DEATH                = 559,
    PINCH_OF_ZERUHN_SOOT            = 560,
    TARUT_CARD_THE_KING             = 561,
    TARUT_CARD_THE_HERMIT           = 562,
    GLOCOLITE                       = 563,
    SKIN_OF_WELL_WATER              = 567,
    CLAY_TABLET                     = 570,
    LUMP_OF_SELBINA_CLAY            = 571,
    SIRENS_TEAR                     = 576,
    EAGLE_BUTTON                    = 578,
    GILT_GLASSES                    = 579,
    SUPPLIES_ORDER                  = 592,
    PARCEL_FOR_THE_MAGIC_SHOP       = 593,
    CHUNK_OF_MINE_GRAVEL            = 597,
    SHARP_STONE                     = 598,
    ONZ_OF_MYTHRIL_SAND             = 599,
    DOSE_OF_OINTMENT                = 600,
    OINTMENT_CASE                   = 601,
    BLESSED_WATERSKIN               = 602,
    SKIN_OF_CHEVAL_RIVER_WATER      = 603,
    PICKAXE                         = 605,
    QUADAV_FETICH_HEAD              = 606,
    QUADAV_FETICH_TORSO             = 607,
    QUADAV_FETICH_ARMS              = 608,
    QUADAV_FETICH_LEGS              = 609,
    FADED_CRYSTAL                   = 613,
    CHAMOMILE                       = 636,
    CHUNK_OF_TIN_ORE                = 641,
    CHUNK_OF_DARKSTEEL_ORE          = 645,
    CHUNK_OF_ADAMAN_ORE             = 646,
    BRASS_SHEET                     = 661,
    MYTHRIL_SHEET                   = 663,
    PETRIFIED_LOG                   = 703,
    ROSEWOOD_LUMBER                 = 718,
    CHUNK_OF_GOLD_ORE               = 737,
    CHUNK_OF_PLATINUM_ORE           = 738,
    GOLD_BEASTCOIN                  = 748,
    MYTHRIL_BEASTCOIN               = 749,
    RED_ROCK                        = 769,
    BLUE_ROCK                       = 770,
    YELLOW_ROCK                     = 771,
    GREEN_ROCK                      = 772,
    TRANSLUCENT_ROCK                = 773,
    PURPLE_ROCK                     = 774,
    BLACK_ROCK                      = 775,
    WHITE_ROCK                      = 776,
    GOLD_THREAD                     = 823,
    VELVET_CLOTH                    = 828,
    FLAX_FLOWER                     = 835,
    LIZARD_SKIN                     = 852,
    TIGER_HIDE                      = 861,
    HANDFUL_OF_PUGIL_SCALES         = 868,
    SQUARE_OF_KARAKUL_LEATHER       = 879,
    BONE_CHIP                       = 880,
    BAT_FANG                        = 891,
    BEEHIVE_CHIP                    = 912,
    SHEET_OF_PARCHMENT              = 917,
    LIZARD_TAIL                     = 926,
    CHUNK_OF_ROCK_SALT              = 936,
    JAR_OF_BLACK_INK                = 929,
    PAPAKA_GRASS                    = 938,
    HECTEYES_EYE                    = 939,
    RED_ROSE                        = 941,
    CARNATION                       = 948,
    RAIN_LILY                       = 949,
    TAHRONGI_CACTUS                 = 950,
    LILAC                           = 956,
    AMARYLLIS                       = 957,
    MARGUERITE                      = 958,
    DAHLIA                          = 959,
    SICKLE                          = 1020,
    HATCHET                         = 1021,
    PIECE_OF_ANCIENT_PAPYRUS        = 1088,
    CLUMP_OF_EXORAY_MOLD            = 1089,
    CHUNK_OF_BOMB_COAL              = 1090,
    REGAL_DIE                       = 1092,
    ORCISH_MAIL_SCALES              = 1112,
    CASABLANCA                      = 1120,
    BEASTMENS_SEAL                  = 1126,
    KINDREDS_SEAL                   = 1127,
    MOON_ORB                        = 1130,
    STAR_ORB                        = 1131,
    NORG_SHELL                      = 1135,
    UNLIT_LANTERN                   = 1138,
    RANCOR_FLAME                    = 1139,
    FLAME_OF_CRIMSON_RANCOR         = 1140,
    FLAME_OF_BLUE_RANCOR            = 1141,
    STAR_SPINEL                     = 1149,
    LUMP_OF_ORIENTAL_STEEL          = 1151,
    LUMP_OF_BOMB_STEEL              = 1152,
    SACRED_BRANCH                   = 1153,
    WYVERN_EGG                      = 1159,
    FRAG_ROCK                       = 1160,
    BANISHING_CHARM                 = 1166,
    SACK_OF_FISH_BAIT               = 1168,
    CLOTHO_ORB                      = 1175,
    COMET_ORB                       = 1177,
    LACHESIS_ORB                    = 1178,
    ATROPOS_ORB                     = 1180,
    OFFERING_TO_UGGALEPIH           = 1183,
    UGGALEPIH_WHISTLE               = 1184,
    ANTICAN_TAG                     = 1190,
    SAHAGIN_KEY                     = 1197,
    SACRED_SPRIG                    = 1198,
    TONBERRY_RATTLE                 = 1266,
    SWEET_WILLIAM                   = 1410,
    PHALAENOPSIS                    = 1411,
    OLIVE_FLOWER                    = 1412,
    CATTLEYA                        = 1413,
    LUNGO_NANGO_JADESHELL           = 1450,
    RIMILALA_STRIPESHELL            = 1451,
    MONTIONT_SILVERPIECE            = 1453,
    RANPERRE_GOLDPIECE              = 1454,
    ONE_HUNDRED_BYNE_BILL           = 1456,
    TEN_THOUSAND_BYNE_BILL          = 1457,
    CLOUDY_ORB                      = 1551,
    SKY_ORB                         = 1552,
    THEMIS_ORB                      = 1553,
    MYSTIC_FRAGMENT                 = 1571,
    ORNATE_FRAGMENT                 = 1572,
    HOLY_FRAGMENT                   = 1573,
    INTRICATE_FRAGMENT              = 1574,
    RUNAEIC_FRAGMENT                = 1575,
    SERAPHIC_FRAGMENT               = 1576,
    TENEBROUS_FRAGMENT              = 1577,
    STELLAR_FRAGMENT                = 1578,
    DEMONIAC_FRAGMENT               = 1579,
    DIVINE_FRAGMENT                 = 1580,
    HEAVENLY_FRAGMENT               = 1581,
    CELESTIAL_FRAGMENT              = 1582,
    SNARLED_FRAGMENT                = 1583,
    MYSTERIAL_FRAGMENT              = 1584,
    ETHEREAL_FRAGMENT               = 1585,
    SHARD_OF_NECROPSYCHE            = 1589,
    MANNEQUIN_HEAD                  = 1601,
    MANNEQUIN_BODY                  = 1602,
    MANNEQUIN_HANDS                 = 1603,
    MANNEQUIN_LEGS                  = 1604,
    MANNEQUIN_FEET                  = 1605,
    SEALION_CREST_KEY               = 1658,
    CORAL_CREST_KEY                 = 1659,
    CATHEDRAL_TAPESTRY              = 1662,
    INGOT_OF_ROYAL_TREASURY_GOLD    = 1682,
    PIECE_OF_ATTOHWA_GINSENG        = 1683,
    SOILED_LETTER                   = 1686,
    HIPPOGRYPH_TAILFEATHER          = 1690,
    NYUMOMO_DOLL                    = 1706,
    SNOW_LILY                       = 1725,
    EGRET_FISHING_ROD               = 1726,
    FREE_CHOCOPASS                  = 1789,
    SUPERNAL_FRAGMENT               = 1822,
    YAGUDO_HEADDRESS_CUTTING        = 1867,
    SQUARE_OF_LM_BUFFALO_LEATHER    = 2007,
    SQUARE_OF_WOLF_FELT             = 2010,
    IMP_WING                        = 2163,
    WAMOURA_COCOON                  = 2173,
    IMPERIAL_BRONZE_PIECE           = 2184,
    IMPERIAL_SILVER_PIECE           = 2185,
    IMPERIAL_MYTHRIL_PIECE          = 2186,
    IMPERIAL_GOLD_PIECE             = 2187,
    LIGHTNING_BAND                  = 2217,
    LAMIAN_FANG_KEY                 = 2219,
    SQUARE_OF_KARAKUL_CLOTH         = 2288,
    SQUARE_OF_WAMOURA_CLOTH         = 2289,
    CHUNK_OF_IMPERIAL_CERMET        = 2290,
    RUBBER_CAP                      = 2465,
    RUBBER_HARNESS                  = 2466,
    RUBBER_GLOVES                   = 2467,
    RUBBER_CHAUSSES                 = 2468,
    RUBBER_SOLES                    = 2469,
    NETHEREYE_CHAIN                 = 2470,
    NETHERFIELD_CHAIN               = 2471,
    NETHERSPIRIT_CHAIN              = 2472,
    NETHERCANT_CHAIN                = 2473,
    NETHERPACT_CHAIN                = 2474,
    SOUL_PLATE                      = 2477,
    BLACK_PUPPET_TURBAN             = 2501,
    WHITE_PUPPET_TURBAN             = 2502,
    HEAVY_QUADAV_CHESTPLATE         = 2504,
    HEAVY_QUADAV_BACKPLATE          = 2505,
    LADYBUG_WING                    = 2506,
    LYCOPODIUM_FLOWER               = 2507,
    ASPHODEL                        = 2554,
    BALRAHNS_EYEPATCH               = 2571,
    ORCISH_PLATE_ARMOR              = 2757,
    QUADAV_BACKSCALE                = 2758,
    YAGUDO_CAULK                    = 2759,
    KINDREDS_CREST                  = 2955,
    HIGH_KINDREDS_CREST             = 2956,
    SACRED_KINDREDS_CREST           = 2957,
    WATER_LILY                      = 2960,
    PHOBOS_ORB                      = 3351,
    DEIMOS_ORB                      = 3352,
    ZELOS_ORB                       = 3454,
    BIA_ORB                         = 3455,
    SEASONING_STONE                 = 3541,
    FOSSILIZED_BONE                 = 3542,
    FOSSILIZED_FANG                 = 3543,
    VALKYRIES_TEAR                  = 3856,
    VALKYRIES_WING                  = 3867,
    VALKYRIES_SOUL                  = 3868,
    VELKK_NECKLACE                  = 3928,
    VELKK_MASK                      = 3929,
    TWITHERYM_WING                  = 3930,
    UMBRIL_OOZE                     = 3935,
    MICROCOSMIC_ORB                 = 4062,
    MACROCOSMIC_ORB                 = 4063,
    FIRE_CRYSTAL                    = 4096,
    EARTH_CRYSTAL                   = 4099,
    WATER_CRYSTAL                   = 4101,
    DARK_CRYSTAL                    = 4103,
    FLASK_OF_SLEEPING_POTION        = 4161,
    SCROLL_OF_INSTANT_WARP          = 4181,
    CRAWLER_EGG                     = 4357,
    SLICE_OF_HARE_MEAT              = 4358,
    DHALMEL_MEAT                    = 4359,
    BASTORE_SARDINE                 = 4360,
    LIZARD_EGG                      = 4362,
    CLUMP_OF_BATAGREENS             = 4367,
    POT_OF_HONEY                    = 4370,
    SLICE_OF_GRILLED_HARE           = 4371,
    SLICE_OF_GIANT_SHEEP_MEAT       = 4372,
    STRIP_OF_MEAT_JERKY             = 4376,
    SLICE_OF_COEURL_MEAT            = 4377,
    FROST_TURNIP                    = 4382,
    LAND_CRAB_MEAT                  = 4400,
    BAKED_POPOTO                    = 4436,
    COBALT_JELLYFISH                = 4443,
    SCREAM_FUNGUS                   = 4447,
    PUFFBALL                        = 4448,
    CRESCENT_FISH                   = 4473,
    THREE_EYED_FISH                 = 4478,
    CRYSTAL_BASS                    = 4528,
    BIRD_EGG                        = 4570,
    SCROLL_OF_CURE_II               = 4610,
    SCROLL_OF_CURE_V                = 4613,
    SCROLL_OF_REGEN                 = 4716,
    SCROLL_OF_FIRE                  = 4752,
    SCROLL_OF_STONE_IV              = 4770,
    SCROLL_OF_ABSORB_INT            = 4878,
    SCROLL_OF_HOJO_ICHI             = 4952,
    ISTAVRIT                        = 5136,
    PITCHER_OF_HOMEMADE_HERBAL_TEA  = 5221,
    BOWL_OF_HOMEMADE_STEW           = 5222,
    CONE_OF_HOMEMADE_GELATO         = 5223,
    HOMEMADE_RICE_BALL              = 5224,
    CHUNK_OF_HOMEMADE_CHEESE        = 5225,
    HOMEMADE_STEAK                  = 5226,
    PLATE_OF_HOMEMADE_SALAD         = 5227,
    LOAF_OF_HOMEMADE_BREAD          = 5228,
    PLATE_OF_HOMEMADE_RISOTTO       = 5229,
    MISTMELT                        = 5265,
    SMOLDERING_LAMP                 = 5413,
    GLOWING_LAMP                    = 5414,
    ISTAKOZ                         = 5453,
    MERCANBALIGI                    = 5454,
    AHTAPOT                         = 5455,
    ISTIRIDYE                       = 5456,
    CORSAIR_DIE                     = 5493,
    POT_OF_WHITE_HONEY              = 5562,
    CUP_OF_CHAI                     = 5570,
    IRMIK_HELVASI                   = 5572,
    BOWL_OF_SUTLAC                  = 5577,
    CUP_OF_IMPERIAL_COFFEE          = 5592,
    BOWL_OF_NASHMAU_STEW            = 5595,
    LYNX_MEAT                       = 5667,
    HOMEMADE_SALISBURY_STEAK        = 5705,
    DISH_OF_HOMEMADE_CARBONARA      = 5706,
    HOMEMADE_OMELETTE               = 5707,
    OLDE_RARAB_TAIL                 = 5911,
    PLATE_OF_INDI_POISON            = 6074,
    HARLEQUIN_HEAD                  = 8193,
    HARLEQUIN_FRAME                 = 8224,
    COPPER_AMAN_VOUCHER             = 8711,
    CLUMP_OF_BEE_POLLEN             = 9082,
    MANDRAGORA_DEWDROP              = 9083,
    CIPHER_OF_LIONS_ALTER_EGO_II    = 10159,
    CIPHER_OF_ZEIDS_ALTER_EGO_II    = 10160,
    CIPHER_OF_TENZENS_ALTER_EGO_II  = 10167,
    BENEDIGHT_COAT                  = 11309,
    NEXUS_CAPE                      = 11538,
    PARANA_SHIELD                   = 12298,
    BLUE_RIBBON                     = 12521,
    LEATHER_VEST                    = 12568,
    BRONZE_HARNESS                  = 12576,
    KENPOGI                         = 12584,
    ROBE                            = 12600,
    TUNIC                           = 12608,
    LEATHER_GLOVES                  = 12696,
    LIZARD_GLOVES                   = 12697,
    BRONZE_SUBLIGAR                 = 12832,
    LEATHER_GORGET                  = 13081,
    CHAIN_CHOKER                    = 13083,
    TIGER_STOLE                     = 13119,
    BEAST_COLLAR                    = 13121,
    PROMISE_BADGE                   = 13135,
    STAR_NECKLACE                   = 13136,
    WILLPOWER_TORQUE                = 13174,
    WING_PENDANT                    = 13183,
    BRASS_RING                      = 13465,
    PURPLE_RIBBON                   = 13569,
    MYOCHIN_KABUTO                  = 13868,
    BRIDAL_CORSAGE                  = 13933,
    MYOCHIN_SUNE_ATE                = 14100,
    WEDDING_BOOTS                   = 14126,
    WEDDING_HOSE                    = 14251,
    WEDDING_DRESS                   = 14386,
    DUCAL_GUARDS_RING               = 14657,
    CUNNING_EARRING                 = 14760,
    TRAINEE_GLOVES                  = 15008,
    ANCILE                          = 15069,
    AEGIS                           = 15070,
    YAGUDO_HEADGEAR                 = 15202,
    TSOO_HAJAS_HEADGEAR             = 15216,
    CORSAIRS_BOTTES                 = 15685,
    OLDUUM_RING                     = 15769,
    IOTA_RING                       = 15799,
    OMEGA_RING                      = 15800,
    BALRAHNS_RING                   = 15807,
    ULTHALAMS_RING                  = 15808,
    JALZAHNS_RING                   = 15809,
    MATRIMONY_RING                  = 15847,
    MATRIMONY_BAND                  = 15848,
    BUCCANEERS_BELT                 = 15911,
    DELTA_RING                      = 15990,
    RAISING_EARRING                 = 16003,
    ASLAN_CAPE                      = 16228,
    GLEEMANS_CAPE                   = 16229,
    RITTER_GORGET                   = 16267,
    KUBIRA_BEAD_NECKLACE            = 16268,
    MORGANAS_CHOKER                 = 16269,
    CHANOIXS_GORGET                 = 16270,
    BENEDIGHT_HOSE                  = 16364,
    LYNX_BAGHNAKHS                  = 16409,
    PATAS                           = 16419,
    MINSTRELS_DAGGER                = 16487,
    ASPIR_KNIFE                     = 16509,
    BRONZE_SWORD                    = 16535,
    MYTHRIL_PICK                    = 16651,
    ORCISH_AXE                      = 16656,
    LIGHT_AXE                       = 16667,
    MYTHRIL_PICK_HQ                 = 16670,
    AXE_OF_TRIALS                   = 16735,
    SCYTHE_OF_TRIALS                = 16793,
    SPEAR_OF_TRIALS                 = 16892,
    SWORD_OF_TRIALS                 = 16952,
    HEAVY_CROSSBOW                  = 17220,
    ICE_ARROW                       = 17323,
    WILLOW_FISHING_ROD              = 17391,
    CLUB_OF_TRIALS                  = 17456,
    KNUCKLES_OF_TRIALS              = 17507,
    POLE_OF_TRIALS                  = 17527,
    DAGGER_OF_TRIALS                = 17616,
    BUCCANEERS_KNIFE                = 17622,
    BARTHOLOMEWS_KNIFE              = 17623,
    SAPARA_OF_TRIALS                = 17654,
    KODACHI_OF_TRIALS               = 17773,
    MUMEITO                         = 17809,
    MAGOROKU                        = 17812,
    TACHI_OF_TRIALS                 = 17815,
    ANIMATOR_P1                     = 17857,
    TURBO_ANIMATOR                  = 17858,
    ANIMATOR                        = 17859,
    PICK_OF_TRIALS                  = 17933,
    BOW_OF_TRIALS                   = 18144,
    GUN_OF_TRIALS                   = 18146,
    BIBIKI_SEASHELL                 = 18257,
    CAESTUS                         = 18263,
    SPHARAI                         = 18264,
    BATARDEAU                       = 18269,
    MANDAU                          = 18270,
    CALIBURN                        = 18275,
    EXCALIBUR                       = 18276,
    VALHALLA                        = 18281,
    RAGNAROK                        = 18282,
    OGRE_KILLER                     = 18287,
    GUTTLER                         = 18288,
    ABADDON_KILLER                  = 18293,
    BRAVURA                         = 18294,
    GAE_ASSAIL                      = 18299,
    GUNGNIR                         = 18300,
    BEC_DE_FAUCON                   = 18305,
    APOCALYPSE                      = 18306,
    YOSHIMITSU                      = 18311,
    KIKOKU                          = 18312,
    TOTSUKANOTSURUGI                = 18317,
    AMANOMURAKUMO                   = 18318,
    GULLINTANI                      = 18323,
    MJOLLNIR                        = 18324,
    THYRUS                          = 18329,
    CLAUSTRUM                       = 18330,
    FERDINAND                       = 18335,
    ANNIHILATOR                     = 18336,
    MILLENNIUM_HORN                 = 18341,
    GJALLARHORN                     = 18342,
    FUTATOKOROTO                    = 18347,
    YOICHINOYUMI                    = 18348,
    TRUMP_GUN                       = 18702,
    SOULTRAPPER                     = 18721,
    BLANK_SOUL_PLATE                = 18722,
    SOULTRAPPER_2000                = 18724,
    BLANK_HIGH_SPEED_SOUL_PLATE     = 18725,
    TRAINEE_HAMMER                  = 18855,
    SOWILO_CLAYMORE                 = 20781,
    CHRONO_BULLET                   = 21296,
    CHRONO_ARROW                    = 21297,
    ARTEMIS_ARROW                   = 21298,
    YOICHIS_ARROW                   = 21299,
    QUELLING_BOLT                   = 21311,
    DEVASTATING_BULLET              = 21325,
    LIVING_BULLET                   = 21326,
    ERADICATING_BULLET              = 21327,
    MATRE_BELL                      = 21460,
    PIEUJE_UNITY_SHIRT              = 25734,
    AYAME_UNITY_SHIRT               = 25735,
    IVINCIBLE_SHIELD_UNITY_SHIRT    = 25736,
    APURURU_UNITY_SHIRT             = 25737,
    MAAT_UNITY_SHIRT                = 25738,
    ALDO_UNITY_SHIRT                = 25739,
    JAKOH_WAHCONDALO_UNITY_SHIRT    = 25740,
    NAJA_SALAHEEM_UNITY_SHIRT       = 25741,
    FLAVIRIA_UNITY_SHIRT            = 25742,
    YORAN_ORAN_UNITY_SHIRT          = 25743,
    SYLVIE_UNITY_SHIRT              = 25744,
}
