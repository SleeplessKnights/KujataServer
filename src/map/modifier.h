﻿/*
===========================================================================
  Copyright (c) 2010-2015 Darkstar Dev Teams
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  You should have received a copy of the GNU General Public License
  along with this program.  If not, see http://www.gnu.org/licenses/
===========================================================================
*/

#ifndef _CMODIFIER_H
#define _CMODIFIER_H

#include "../common/cbasetypes.h"

enum class Mod
{
    // IF YOU ADD ANY NEW MODIFIER HERE, ADD IT IN scripts/globals/status.lua ASWELL!

    NONE = 0,       // Essential, but does nothing :)
                    //  NAME                  = ID, // Comment
    DEF        = 1, // Target's Defense
    HP         = 2, // Target's HP
    HPP        = 3, // HP Percentage
    CONVMPTOHP = 4, // MP -> HP (Cassie Earring)
    MP         = 5, // MP +/-
    MPP        = 6, // MP Percentage
    CONVHPTOMP = 7, // HP -> MP

    STR = 8,  // Strength
    DEX = 9,  // Dexterity
    VIT = 10, // Vitality
    AGI = 11, // Agility
    INT = 12, // Intelligence
    MND = 13, // Mind
    CHR = 14, // Charisma

    // Magic Evasion versus elements (resistance)
    // This has been repeatedly mixed up with SDT - be careful!
    FIRE_MEVA    = 15, // Fire Resistance
    ICE_MEVA     = 16, // Ice Resistance
    WIND_MEVA    = 17, // Wind Resistance
    EARTH_MEVA   = 18, // Earth Resistance
    THUNDER_MEVA = 19, // Thunder Resistance
    WATER_MEVA   = 20, // Water Resistance
    LIGHT_MEVA   = 21, // Light Resistance
    DARK_MEVA    = 22, // Dark Resistance

    ATT  = 23, // Attack
    RATT = 24, // Ranged Attack

    ACC  = 25, // Accuracy
    RACC = 26, // Ranged Accuracy

    ENMITY                = 27,  // Enmity
    ENMITY_LOSS_REDUCTION = 427, // Reduces Enmity lost when taking damage

    MATT = 28, // Magic Attack
    MDEF = 29, // Magic Defense
    MACC = 30, // Magic Accuracy - note that this is NOT iLvl "magic accuracy skill" which happens in item_weapon.sql
    MEVA = 31, // Magic Evasion

    // Magic Accuracy and Elemental Attacks
    FIREATT    = 32, // Fire Damage
    ICEATT     = 33, // Ice Damage
    WINDATT    = 34, // Wind Damage
    EARTHATT   = 35, // Earth Damage
    THUNDERATT = 36, // Thunder Damage
    WATERATT   = 37, // Water Damage
    LIGHTATT   = 38, // Light Damage
    DARKATT    = 39, // Dark Damage
    FIREACC    = 40, // Fire Accuracy
    ICEACC     = 41, // Ice Accuracy
    WINDACC    = 42, // Wind Accuracy
    EARTHACC   = 43, // Earth Accuracy
    THUNDERACC = 44, // Thunder Accuracy
    WATERACC   = 45, // Water Accuracy
    LIGHTACC   = 46, // Light Accuracy
    DARKACC    = 47, // Dark Accuracy

    WSACC = 48, // Weaponskill Accuracy

    // Specific Damage Taken vs physical damage type
    // Value is stored as a percentage of damage reduction (to within 1000)
    // Example: 1000 = 100%, 875= 87.5%
    SLASH_SDT  = 49, // Slash Damage Taken
    PIERCE_SDT = 50, // Piercing Damage Taken
    IMPACT_SDT = 51, // Impact Damage Taken
    HTH_SDT    = 52, // Hand-To-Hand Damage Taken

    // Elemental SDT
    // This has been repeatedly mixed up with RESISTANCE - be careful!
    FIRE_SDT    = 54, // Fire Damage Taken
    ICE_SDT     = 55, // Ice Damage Taken
    WIND_SDT    = 56, // Wind Damage Taken
    EARTH_SDT   = 57, // Earth Damage Taken
    THUNDER_SDT = 58, // Thunder Damage Taken
    WATER_SDT   = 59, // Water Damage Taken
    LIGHT_SDT   = 60, // Light Damage Taken
    DARK_SDT    = 61, // Dark Damage Taken

    ATTP = 62, // % Attack
    DEFP = 63, // % Defense

    COMBAT_SKILLUP_RATE = 64, // % increase in skillup combat rate
    MAGIC_SKILLUP_RATE  = 65, // % increase in skillup magic rate

    RATTP = 66, // % Ranged Attack

    EVA             = 68,  // Evasion
    RDEF            = 69,  // Ranged Defense
    REVA            = 70,  // Ranged Evasion
    MPHEAL          = 71,  // MP Recovered while healing
    HPHEAL          = 72,  // HP Recovered while healing
    STORETP         = 73,  // Increases the rate at which TP is gained
    TACTICAL_PARRY  = 486, // Tactical Parry Tp Bonus
    MAG_BURST_BONUS = 487, // Magic Burst Bonus Modifier (percent)
    INHIBIT_TP      = 488, // Inhibits TP Gain (percent)

    // Working Skills (weapon combat skills)
    // These are NOT item Level skill, they are skill in your status menu. iLvl "skill" happens in item_weapon.sql
    HTH               = 80,  // Hand To Hand Skill
    DAGGER            = 81,  // Dagger Skill
    SWORD             = 82,  // Sword Skill
    GSWORD            = 83,  // Great Sword Skill
    AXE               = 84,  // Axe Skill
    GAXE              = 85,  // Great Axe Skill
    SCYTHE            = 86,  // Scythe Skill
    POLEARM           = 87,  // Polearm Skill
    KATANA            = 88,  // Katana Skill
    GKATANA           = 89,  // Great Katana Skill
    CLUB              = 90,  // Club Skill
    STAFF             = 91,  // Staff Skill
    AUTO_MELEE_SKILL  = 101, // Automaton Melee Skill
    AUTO_RANGED_SKILL = 102, // Automaton Range Skill
    AUTO_MAGIC_SKILL  = 103, // Automaton Magic Skill
    ARCHERY           = 104, // Archery Skill
    MARKSMAN          = 105, // Marksman Skill
    THROW             = 106, // Throw Skill
    GUARD             = 107, // Guard Skill
    EVASION           = 108, // Evasion Skill
    SHIELD            = 109, // Shield Skill
    PARRY             = 110, // Parry Skill

    // Magic Skills
    DIVINE    = 111, // Divine Magic Skill
    HEALING   = 112, // Healing Magic Skill
    ENHANCE   = 113, // Enhancing Magic Skill
    ENFEEBLE  = 114, // Enfeebling Magic Skill
    ELEM      = 115, // Elemental Magic Skill
    DARK      = 116, // Dark Magic Skill
    SUMMONING = 117, // Summoning Magic Skill
    NINJUTSU  = 118, // Ninjutsu Magic Skill
    SINGING   = 119, // Singing Magic Skill
    STRING    = 120, // String Magic Skill
    WIND      = 121, // Wind Magic Skill
    BLUE      = 122, // Blue Magic Skill
    GEOMANCY  = 123, // Geomancy Magic Skill
    HANDBELL  = 124, // Handbell Magic SKill

    // Synthesis Skills
    FISH      = 127, // Fishing Skill
    WOOD      = 128, // Woodworking Skill
    SMITH     = 129, // Smithing Skill
    GOLDSMITH = 130, // Goldsmithing Skill
    CLOTH     = 131, // Clothcraft Skill
    LEATHER   = 132, // Leathercraft Skill
    BONE      = 133, // Bonecraft Skill
    ALCHEMY   = 134, // Alchemy Skill
    COOK      = 135, // Cooking Skill
    SYNERGY   = 136, // Synergy Skill
    RIDING    = 137, // Riding Skill

    // Chance you will not make an hq synth (Impossibility of HQ synth)
    ANTIHQ_WOOD      = 144, // Woodworking Success Rate %
    ANTIHQ_SMITH     = 145, // Smithing Success Rate %
    ANTIHQ_GOLDSMITH = 146, // Goldsmithing Success Rate %
    ANTIHQ_CLOTH     = 147, // Clothcraft Success Rate %
    ANTIHQ_LEATHER   = 148, // Leathercraft Success Rate %
    ANTIHQ_BONE      = 149, // Bonecraft Success Rate %
    ANTIHQ_ALCHEMY   = 150, // Alchemy Success Rate %
    ANTIHQ_COOK      = 151, // Cooking Success Rate %

    // Fishing gear modifiers
    PENGUIN_RING_EFFECT   = 152, // +2 on fishing arrow delay / fish movement for mini - game
    ALBATROSS_RING_EFFECT = 153, // adds 30 seconds to mini - game time
    PELICAN_RING_EFFECT   = 154, // adds extra skillup roll for fishing
    FISHING_SKILL_GAIN    = 155, // food for fishing skill ups

    // Damage - 10000 base, 375 = 3.75%
    DMG         = 160, // Damage Taken %
    DMGPHYS     = 161, // Physical Damage Taken %
    DMGPHYS_II  = 190, // Physical Damage Taken II % (Burtgang)
    DMGBREATH   = 162, // Breath Damage Taken %
    DMGMAGIC    = 163, // Magic Damage Taken %
    DMGMAGIC_II = 831, // Magic Damage Taken II % (Aegis)
    DMGRANGE    = 164, // Range Damage Taken %

    // Uncapped damage - 10000 base, 375 = 3.75%
    UDMGPHYS   = 387, // Uncapped Damage Multipliers
    UDMGBREATH = 388, // Used in sentinel, invincible, physical shield etc
    UDMGMAGIC  = 389, //
    UDMGRANGE  = 390, //

    // Crit Damage / Delay
    CRITHITRATE              = 165, // Raises chance to crit
    CRIT_DMG_INCREASE        = 421, // Raises the damage of critical hit by percent %
    RANGED_CRIT_DMG_INCREASE = 964, // Increases ranged critical damage by a percent
    ENEMYCRITRATE            = 166, // Raises chance enemy will crit
    CRIT_DEF_BONUS           = 908, // Reduces crit hit damage
    MAGIC_CRITHITRATE        = 562, // Raises chance to magic crit
    MAGIC_CRIT_DMG_INCREASE  = 563, // Raises damage done when criting with magic

    FENCER_TP_BONUS    = 903, // TP Bonus to weapon skills from Fencer Trait
    FENCER_CRITHITRATE = 904, // Increased Crit chance from Fencer Trait

    SMITE          = 898, // Raises attack when using H2H or 2H weapons (256 scale)
    TACTICAL_GUARD = 899, // Tp increase when guarding
    GUARD_PERCENT  = 976, // Guard Percent

    HASTE_MAGIC             = 167, // Haste (and Slow) from magic - 10000 base, 375 = 3.75%
    HASTE_ABILITY           = 383, // Haste (and Slow) from abilities - 10000 base, 375 = 3.75%
    HASTE_GEAR              = 384, // Haste (and Slow) from equipment - 10000 base, 375 = 3.75%
    SPELLINTERRUPT          = 168, // % Spell Interruption Rate
    MOVE                    = 169, // % Movement Speed
    MOUNT_MOVE              = 972, // % Mount Movement Speed
    FASTCAST                = 170, // Increases Spell Cast Time (TRAIT)
    UFASTCAST               = 407, // uncapped fast cast
    CURE_CAST_TIME          = 519, // cure cast time reduction
    ELEMENTAL_CELERITY      = 901, // Quickens Elemental Magic Casting
    DELAY                   = 171, // Increase/Decrease Delay
    RANGED_DELAY            = 172, // Increase/Decrease Ranged Delay
    MARTIAL_ARTS            = 173, // The integer amount of delay to reduce from H2H weapons' base delay. (TRAIT)
    SKILLCHAINBONUS         = 174, // Damage bonus applied to skill chain damage.  Modifier from effects/traits
    SKILLCHAINDMG           = 175, // Damage bonus applied to skill chain damage.  Modifier from gear (multiplicative after effect/traits)
    MAX_SWINGS              = 978, // Max swings for "Occasionally attacks X times"
    ADDITIONAL_SWING_CHANCE = 979, // Chance that allows for an additional swing despite of multiple hits, mostly for Amood weapons

    MAGIC_DAMAGE = 311, // Magic damage added directly to the spell's base damage

    // FOOD!
    FOOD_HPP      = 176, //
    FOOD_HP_CAP   = 177, //
    FOOD_MPP      = 178, //
    FOOD_MP_CAP   = 179, //
    FOOD_ATTP     = 180, //
    FOOD_ATT_CAP  = 181, //
    FOOD_DEFP     = 182, //
    FOOD_DEF_CAP  = 183, //
    FOOD_ACCP     = 184, //
    FOOD_ACC_CAP  = 185, //
    FOOD_RATTP    = 186, //
    FOOD_RATT_CAP = 187, //
    FOOD_RACCP    = 188, //
    FOOD_RACC_CAP = 189, //
    FOOD_MACCP    = 99,  // Macc% see https://www.bg-wiki.com/bg/Category:Magic_Accuracy_Food
    FOOD_MACC_CAP = 100, // Sets Upper limit for FOOD_MACCP
    FOOD_DURATION = 937, // Percentage to increase food duration

    // Killer-Effects - (Most by Traits/JobAbility)
    VERMIN_KILLER            = 224,  // Enhances "Vermin Killer" effect
    BIRD_KILLER              = 225,  // Enhances "Bird Killer" effect
    AMORPH_KILLER            = 226,  // Enhances "Amorph Killer" effect
    LIZARD_KILLER            = 227,  // Enhances "Lizard Killer" effect
    AQUAN_KILLER             = 228,  // Enhances "Aquan Killer" effect
    PLANTOID_KILLER          = 229,  // Enhances "Plantiod Killer" effect
    BEAST_KILLER             = 230,  // Enhances "Beast Killer" effect
    UNDEAD_KILLER            = 231,  // Enhances "Undead Killer" effect
    ARCANA_KILLER            = 232,  // Enhances "Arcana Killer" effect
    DRAGON_KILLER            = 233,  // Enhances "Dragon Killer" effect
    DEMON_KILLER             = 234,  // Enhances "Demon Killer" effect
    EMPTY_KILLER             = 235,  // Enhances "Empty Killer" effect
    HUMANOID_KILLER          = 236,  // Enhances "Humanoid Killer" effect
    LUMINIAN_KILLER          = 237,  // Enhances "Luminian Killer" effect
    LUMINION_KILLER          = 238,  // Enhances "Luminion Killer" effect
    WYRMAL_ABJ_KILLER_EFFECT = 1178, // Wyrmal Abjuration(Crimson / Blood) which makes players susceptible to Dragon Killer effects

    // Resistances to enfeebles - Traits/Job Ability
    SLEEPRES    = 240, // Enhances "Resist Sleep" effect
    POISONRES   = 241, // Enhances "Resist Poison" effect
    PARALYZERES = 242, // Enhances "Resist Paralyze" effect
    BLINDRES    = 243, // Enhances "Resist Blind" effect
    SILENCERES  = 244, // Enhances "Resist Silence" effect
    VIRUSRES    = 245, // Enhances "Resist Virus" effect
    PETRIFYRES  = 246, // Enhances "Resist Petrify" effect
    BINDRES     = 247, // Enhances "Resist Bind" effect
    CURSERES    = 248, // Enhances "Resist Curse" effect
    GRAVITYRES  = 249, // Enhances "Resist Gravity" effect
    SLOWRES     = 250, // Enhances "Resist Slow" effect
    STUNRES     = 251, // Enhances "Resist Stun" effect
    CHARMRES    = 252, // Enhances "Resist Charm" effect
    AMNESIARES  = 253, // Enhances "Resist Amnesia" effect
    LULLABYRES  = 254, // Enhances "Resist Lullaby" effect
    DEATHRES    = 255, // Used by gear and ATMA that give resistance to instance KO
    STATUSRES   = 958, // "Resistance to All Status Ailments"

    PARALYZE      = 257, // Paralyze -- percent chance to proc
    MIJIN_RERAISE = 258, // Augments Mijin Gakure
    DUAL_WIELD    = 259, // Percent reduction in dual wield delay.

    // Warrior
    DOUBLE_ATTACK       = 288,  // Percent chance to proc
    DOUBLE_ATTACK_DMG   = 1038, // Increases "Double Attack" damage/"Double Attack" damage + (in percents, e.g. +20 = +20% damage)
    WARCRY_DURATION     = 483,  // Warcy duration bonus from gear
    BERSERK_POTENCY     = 948,  // Augments "Berserk"/Enhances "Berserk" effect (Conqueror)
    BERSERK_DURATION    = 954,  // Berserk Duration
    AGGRESSOR_DURATION  = 955,  // Aggressor Duration
    DEFENDER_DURATION   = 956,  // Defender Duration
    ENHANCES_RESTRAINT  = 1045, // Enhances "Restraint" effect/"Restraint" + (Increases the damage bonus of Restraint by XXX%)
    ENHANCES_BLOOD_RAGE = 1046, // Enhances "Blood Rage" effect/"Blood Rage" duration +

    // Monk
    BOOST_EFFECT        = 97,    // Boost power in tenths
    CHAKRA_MULT         = 1026,  // Chakra multiplier increase (from gear)
    CHAKRA_REMOVAL      = 1027,  // Extra statuses removed by Chakra
    SUBTLE_BLOW         = 289,   // How much TP to reduce.
    COUNTER             = 291,   // Percent chance to counter
    KICK_ATTACK_RATE    = 292,   // Percent chance to kick
    PERFECT_COUNTER_ATT = 428,   // TODO: Raises weapon damage by 20 when countering while under the Perfect Counter effect. This also affects Weapon Rank (though
                                 // not if fighting barehanded).
    COUNTER_DAMAGE       = 1047, // TODO: Increases Damage from Counter Attacks (Percent)
    FOOTWORK_ATT_BONUS   = 429,  // Raises the attack bonus of Footwork. (Tantra Gaiters +2 raise 25/256 to 38/256)
    COUNTERSTANCE_EFFECT = 543,  // Counterstance effect in percents
    DODGE_EFFECT         = 552,  // Dodge effect in percents
    FOCUS_EFFECT         = 561,  // Focus effect in percents

    // White Mage
    AFFLATUS_SOLACE  = 293, // Pool of HP accumulated during Afflatus Solace
    AFFLATUS_MISERY  = 294, // Pool of HP accumulated during Afflatus Misery
    AUSPICE_EFFECT   = 484, // Bonus to Auspice Subtle Blow Effect.
    AOE_NA           = 524, // Set to 1 to make -na spells/erase always AoE w/ Divine Veil
    REGEN_MULTIPLIER = 838, // Multiplier to base regen rate
    CURE2MP_PERCENT  = 860, // Converts % of "Cure" amount to MP
    DIVINE_BENISON   = 910, // Adds fast cast and enmity reduction to -Na spells (includes Erase). Enmity reduction is half of the fast cast amount
    REGEN_BONUS      = 989, // Increases the amount of HP restored by Regen

    // Black Mage
    CLEAR_MIND  = 295, // Used in conjunction with HEALMP to increase amount between tics
    CONSERVE_MP = 296, // Percent chance

    // Red Mage
    BLINK             = 299, // Tracks blink shadows
    STONESKIN         = 300, // Tracks stoneskin HP pool
    PHALANX           = 301, // Tracks direct damage reduction
    ENF_MAG_POTENCY   = 290, // Increases Enfeebling magic potency %
    ENHANCES_SABOTEUR = 297, // Increases Saboteur Potency %

    // Thief
    FLEE_DURATION        = 93,   // Flee duration in seconds
    STEAL                = 298,  // Increase/Decrease THF Steal chance
    DESPOIL              = 896,  // Increases THF Despoil chance
    PERFECT_DODGE        = 883,  // Increases Perfect Dodge duration in seconds
    TRIPLE_ATTACK        = 302,  // Percent chance
    TRIPLE_ATTACK_DMG    = 1039, // Increases "Triple Attack" damage/"Triple Attack" damage + (in percents, e.g. +20 = +20% damage)
    TREASURE_HUNTER      = 303,  // Percent chance
    TREASURE_HUNTER_PROC = 1048, // TODO: Increases Treasure Hunter proc rate (percent)
    TREASURE_HUNTER_CAP  = 1049, // TODO: Increases the Treasure Hunter Cap (e.g. THF JP Gift)
    SNEAK_ATK_DEX        = 830,  // % DEX boost to Sneak Attack (if gear mod, needs to be equipped on hit)
    TRICK_ATK_AGI        = 520,  // % AGI boost to Trick Attack (if gear mod, needs to be equipped on hit)
    MUG_EFFECT           = 835,  // Mug effect as multiplier
    ACC_COLLAB_EFFECT    = 884,  // Increases amount of enmity transferred for Accomplice/Collaborator
    HIDE_DURATION        = 885,  // Hide duration increase (percentage based)
    GILFINDER            = 897,  // Gilfinder, duh

    // Paladin
    HOLY_CIRCLE_DURATION   = 857,  // Holy Circle extended duration in seconds
    RAMPART_DURATION       = 92,   // Rampart duration in seconds
    ABSORB_PHYSDMG_TO_MP   = 426,  // Absorbs a percentage of physical damage taken to MP.
    SHIELD_MASTERY_TP      = 485,  // Shield mastery TP bonus when blocking with a shield
    SENTINEL_EFFECT        = 837,  // Sentinel effect in percents
    SHIELD_DEF_BONUS       = 905,  // Shield Defense Bonus
    COVER_TO_MP            = 965,  // Converts a successful cover's phsyical damage to MP
    COVER_MAGIC_AND_RANGED = 966,  // Redirects ranged and single target magic attacks to the cover ability user
    COVER_DURATION         = 967,  // Increases Cover Duration
    ENHANCES_CHIVALRY      = 1061, // Enhances "Chivalry" effect (increases the base TP modifier by the provided value / 100, e.g. mod value 5 = +0.05)
    ENHANCES_DIVINE_EMBLEM = 1062, // Enhances "Divine Emblem" effect/"Divine Emblem" + (increases the ability's special enmity bonus by the provided value)
    ENHANCES_FEALTY        = 1063, // Enhances "Fealty" effect (increases Fealty's duration by 4 seconds per Fealty merit)
    ENHANCES_IRON_WILL     = 1064, // Enhances "Iron Will" effect (adds +3% Fast Cast per Iron Will merit to Rampart)
    ENHANCES_GUARDIAN      = 1065, // Enhances "Guardian" effect (increases Sentinel's duration by 2 seconds per Guardian merit)
    PALISADE_BLOCK_BONUS   = 1066, // Increases base block rate while under the effects of Palisade (additive, not multiplicative)
    REPRISAL_BLOCK_BONUS   = 1067, // Increases block rate while under the effects of Reprisal (multiplicative, not additive)
    REPRISAL_SPIKES_BONUS  = 1068, // Increases Reprisal spikes damage by percentage (e.g. mod value 50 = +50% spikes damage)

    // Dark Knight
    ARCANE_CIRCLE_DURATION = 858,  // Arcane Circle extended duration in seconds
    ARCANE_CIRCLE_POTENCY  = 1069, // Increases the potency of the Arcane Circle effect (e.g. mod value 2 = +2% Arcana Killer)
    SOULEATER_EFFECT       = 96,   // Souleater power in percents
    SOULEATER_EFFECT_II    = 53,   // Uncapped additive Souleaterbonus in percents, 10 = .1
    DESPERATE_BLOWS        = 906,  // Adds ability haste to Last Resort
    STALWART_SOUL          = 907,  // Reduces damage taken from Souleater
    DREAD_SPIKES_EFFECT    = 998,  // Percent increase to total HP drain for Dread Spikes
    ENHANCES_BLOOD_WEAPON  = 1070, // Enhances "Blood Weapon" effect (increases Blood Weapon's duration in seconds)
    DARK_MAGIC_CAST        = 1071, // Reduces Dark Magic Casting Time by percentage (e.g. mod value -10 = -10% cast time)
    DARK_MAGIC_DURATION    = 1072, // Increases Dark Magic spell durations by percentage (e.g. mod value 10 = +10% duration)
    ENHANCES_DARK_SEAL     = 1073, // Enhances "Dark Seal" effect (Increases Dark Magic spell durations by 10% per Dark Seal merit while Dark Seal active)

    // Beastmaster
    TAME                = 304,  // Additional percent chance to charm
    CHARM_TIME          = 360,  // extends the charm time only, no effect of charm chance
    REWARD_HP_BONUS     = 364,  // Percent to add to reward HP healed. (364)
    CHARM_CHANCE        = 391,  // extra chance to charm (light+apollo staff ect)
    FERAL_HOWL_DURATION = 503,  // +20% duration per merit when wearing augmented Monster Jackcoat +2
    JUG_LEVEL_RANGE     = 564,  // Decreases the level range of spawned jug pets. Maxes out at 2.
    SIC_READY_RECAST    = 1052, // TODO: SIC/Ready recast reduction (seconds)

    // Bard
    MINNE_EFFECT           = 433,  //
    MINUET_EFFECT          = 434,  //
    PAEON_EFFECT           = 435,  //
    REQUIEM_EFFECT         = 436,  //
    THRENODY_EFFECT        = 437,  //
    MADRIGAL_EFFECT        = 438,  //
    MAMBO_EFFECT           = 439,  //
    LULLABY_EFFECT         = 440,  //
    ETUDE_EFFECT           = 441,  //
    BALLAD_EFFECT          = 442,  //
    MARCH_EFFECT           = 443,  //
    FINALE_EFFECT          = 444,  //
    CAROL_EFFECT           = 445,  //
    MAZURKA_EFFECT         = 446,  //
    ELEGY_EFFECT           = 447,  //
    PRELUDE_EFFECT         = 448,  //
    HYMNUS_EFFECT          = 449,  //
    VIRELAI_EFFECT         = 450,  //
    SCHERZO_EFFECT         = 451,  //
    ALL_SONGS_EFFECT       = 452,  //
    MAXIMUM_SONGS_BONUS    = 453,  //
    SONG_DURATION_BONUS    = 454,  //
    SONG_SPELLCASTING_TIME = 455,  //
    SONG_RECAST_DELAY      = 833,  // Reduces song recast time in seconds.
    AUGMENT_SONG_STAT      = 1003, // Bonus to Stat of Element of Enhancing Song.

    // Ranger
    CAMOUFLAGE_DURATION     = 98,   // Camouflage duration in percents
    RECYCLE                 = 305,  // Percent chance to recycle
    SNAP_SHOT               = 365,  // Percent reduction to range attack delay
    RAPID_SHOT              = 359,  // Percent chance to proc rapid shot
    WIDESCAN                = 340,  //
    BARRAGE_ACC             = 420,  // Barrage accuracy
    DOUBLE_SHOT_RATE        = 422,  // The rate that double shot can proc. Without this, the default is 40%.
    VELOCITY_SNAPSHOT_BONUS = 423,  // Increases Snapshot whilst Velocity Shot is up.
    VELOCITY_RATT_BONUS     = 424,  // Increases Ranged Attack whilst Velocity Shot is up.
    SHADOW_BIND_EXT         = 425,  // Extends the time of shadowbind
    SCAVENGE_EFFECT         = 312,  //
    SHARPSHOT               = 314,  //
    TRUE_SHOT_EFFECT        = 1053, // TODO: True Shot Ranged Damage increase (percent)
    DEAD_AIM_EFFECT         = 1054, // TODO: Dead Aim Critical Damage increase (percent)

    // Samurai
    WARDING_CIRCLE_DURATION   = 95,   // Warding Circle extended duration in seconds
    MEDITATE_DURATION         = 94,   // Meditate duration in seconds
    ZANSHIN                   = 306,  // Zanshin percent chance
    THIRD_EYE_COUNTER_RATE    = 508,  // Adds counter to 3rd eye anticipates & if using Seigan counter rate is increased by 15%
    THIRD_EYE_ANTICIPATE_RATE = 839,  // Adds anticipate rate in percents
    THIRD_EYE_BONUS           = 1055, // TODO: Bonus Third Eye Evasion (count)

    // Ninja
    UTSUSEMI          = 307, // Everyone's favorite --tracks shadows.
    UTSUSEMI_BONUS    = 900, // Extra shadows from gear
    NINJA_TOOL        = 308, // Percent chance to not use a tool.
    NIN_NUKE_BONUS    = 522, // magic attack bonus for NIN nukes
    DAKEN             = 911, // chance to throw a shuriken without consuming it
    NINJUTSU_DURATION = 1000,

    // Dragoon
    ANCIENT_CIRCLE_DURATION    = 859,  // Ancient Circle extended duration in seconds
    JUMP_TP_BONUS              = 361,  // bonus tp player receives when using jump
    JUMP_SPIRIT_TP_BONUS       = 285,  // bonus tp player receives when using jump for spirit jump only
    JUMP_ATT_BONUS             = 362,  // ATT% bonus for all jumps
    JUMP_SOUL_SPIRIT_ATT_BONUS = 286,  // ATT% bonus for Soul & Spirit jump only
    JUMP_ACC_BONUS             = 936,  // accuracy bonus for all jumps
    JUMP_DOUBLE_ATTACK         = 888,  // DA% bonus for all jumps
    HIGH_JUMP_ENMITY_REDUCTION = 363,  // for gear that reduces more enmity from high jump
    FORCE_JUMP_CRIT            = 828,  // Force critical hit for all jumps
    WYVERN_EFFECTIVE_BREATH    = 829,  // Increases the threshold for triggering healing breath/offensive breath more inclined to pick elemental weakness
    WYVERN_SUBJOB_TRAITS       = 974,  // Adds subjob traits to wyvern on spawn
    WYVERN_BREATH_MACC         = 986,  // Increases accuracy of wyvern's breath. adds 10 magic accuracy per merit to the trait Strafe
    WYVERN_LVL_BONUS           = 1043, // Wyvern: Lv.+ (Increases wyvern's base level above 99)
    WYVERN_ATTRIBUTE_DA        = 1056, // Adds an amount of Double Attack to Dragoon each time Wyverns Attributes Increase (percent)
    DRAGOON_BREATH_RECAST      = 1057, // Restoring/Smithing Breath Recast Reduction (seconds)
    ENHANCE_DEEP_BREATHING     = 283,  // Add 5/256 to deep breathing bonus per merit level when calculating healing breath
    UNCAPPED_WYVERN_BREATH     = 284,  // Uncapped wyvern breath boost. Used on retail for augments, normal gear should use WYVERN_BREATH.
    ENHANCES_STRAFE            = 282,  // Strafe merit augment, +50 TP gained per merit level on breath use.
    ENHANCES_SPIRIT_LINK       = 281,  // Adds erase/-na to Spirit Link

    // Summoner
    AVATAR_PERPETUATION       = 371,  // stores base cost of current avatar
    WEATHER_REDUCTION         = 372,  // stores perpetuation reduction depending on weather
    DAY_REDUCTION             = 373,  // stores perpetuation reduction depending on day
    PERPETUATION_REDUCTION    = 346,  // stores the MP/tick reduction from gear
    BP_DELAY                  = 357,  // stores blood pact delay reduction
    ENHANCES_ELEMENTAL_SIPHON = 540,  // Bonus Base MP added to Elemental Siphon skill.
    BP_DELAY_II               = 541,  // Blood Pact Delay Reduction II
    BP_DAMAGE                 = 126,  // Blood Pact: Rage Damage increase percentage
    BLOOD_BOON                = 913,  // Occasionally cuts down MP cost of Blood Pact abilities. Does not affect abilities that require Astral Flow.
    AVATARS_FAVOR_ENHANCE     = 630,  // Enhances Avatars Favor Effect by 1 tier per point
    AVATAR_LVL_BONUS          = 1040, // Avatar: Lv.+ (Increases all avatar's base level above 99)
    CARBUNCLE_LVL_BONUS       = 1041, // Carbuncle: Lv.+ (Increases Carbuncle's base level above 99)
    CAIT_SITH_LVL_BONUS       = 1042, // Cait Sith: Lv.+ (Increases Cait Sith's base level above 99)
    SPIRIT_SPELLCAST_DELAY    = 1179, // Reduces the time between spellcasts of a summoned spirit by seconds provided

    // Blue Mage
    BLUE_POINTS          = 309,  // Tracks extra blue points
    BLUE_LEARN_CHANCE    = 945,  // Additional chance to learn blue magic
    BLUE_JOB_TRAIT_BONUS = 1058, // TODO: Increases job traits gained from equipped blue magic (percent)
    BLUE_MAGIC_EFFECT    = 1059, // TODO: Bonus to Attribute Value of spell (percent)

    // Corsair
    EXP_BONUS         = 382,  //
    ROLL_RANGE        = 528,  // Additional range for COR roll abilities.
    JOB_BONUS_CHANCE  = 542,  // Chance to apply job bonus to COR roll without having the job in the party.
    TRIPLE_SHOT_RATE  = 999,  // Percent increase to Triple Shot Rate
    QUICK_DRAW_RECAST = 1060, // TODO: Quick Draw Charge Reduction (seconds)

    DMG_REFLECT            = 316, // Tracks totals
    ROLL_ROGUES            = 317, // Tracks totals
    ROLL_GALLANTS          = 318, // Tracks totals
    ROLL_CHAOS             = 319, // Tracks totals
    ROLL_BEAST             = 320, // Tracks totals
    ROLL_CHORAL            = 321, // Tracks totals
    ROLL_HUNTERS           = 322, // Tracks totals
    ROLL_SAMURAI           = 323, // Tracks totals
    ROLL_NINJA             = 324, // Tracks totals
    ROLL_DRACHEN           = 325, // Tracks totals
    ROLL_EVOKERS           = 326, // Tracks totals
    ROLL_MAGUS             = 327, // Tracks totals
    ROLL_CORSAIRS          = 328, // Tracks totals
    ROLL_PUPPET            = 329, // Tracks totals
    ROLL_DANCERS           = 330, // Tracks totals
    ROLL_SCHOLARS          = 331, // Tracks totals
    ROLL_BOLTERS           = 869, // Tracks totals
    ROLL_CASTERS           = 870, // Tracks totals
    ROLL_COURSERS          = 871, // Tracks totals
    ROLL_BLITZERS          = 872, // Tracks totals
    ROLL_TACTICIANS        = 873, // Tracks totals
    ROLL_ALLIES            = 874, // Tracks totals
    ROLL_MISERS            = 875, // Tracks totals
    ROLL_COMPANIONS        = 876, // Tracks totals
    ROLL_AVENGERS          = 877, // Tracks totals
    ROLL_NATURALISTS       = 878, // Tracks totals
    ROLL_RUNEISTS          = 879, // Tracks totals
    BUST                   = 332, // # of busts
    QUICK_DRAW_DMG         = 411, // Flat damage increase to base QD damage
    QUICK_DRAW_DMG_PERCENT = 834, // Percentage increase to QD damage
    QUICK_DRAW_MACC        = 191, // Quick draw magic accuracy
    PHANTOM_ROLL           = 881, // Phantom Roll+ Effect from SOA Rings.
    PHANTOM_DURATION       = 882, // Phantom Roll Duration +.

    // Puppetmaster
    MANEUVER_BONUS              = 504,  // Maneuver Stat Bonus
    OVERLOAD_THRESH             = 505,  // Overload Threshold Bonus
    AUTO_DECISION_DELAY         = 842,  // Reduces the Automaton's global decision delay
    AUTO_SHIELD_BASH_DELAY      = 843,  // Reduces the Automaton's global shield bash delay
    AUTO_MAGIC_DELAY            = 844,  // Reduces the Automaton's global magic delay
    AUTO_HEALING_DELAY          = 845,  // Reduces the Automaton's global healing delay
    AUTO_HEALING_THRESHOLD      = 846,  // Increases the healing trigger threshold
    BURDEN_DECAY                = 847,  // Increases amount of burden removed per tick
    AUTO_SHIELD_BASH_SLOW       = 848,  // Adds a slow effect to Shield Bash
    AUTO_TP_EFFICIENCY          = 849,  // Causes the Automaton to wait to form a skillchain when its master is > 90% TP
    AUTO_SCAN_RESISTS           = 850,  // Causes the Automaton to scan a target's resistances
    REPAIR_EFFECT               = 853,  // Removes # of status effects from the Automaton
    REPAIR_POTENCY              = 854,  // Note: Only affects amount regenerated by a %, not the instant restore!
    PREVENT_OVERLOAD            = 855,  // Overloading erases a water maneuver (except on water overloads) instead, if there is one
    SUPPRESS_OVERLOAD           = 125,  // Kenkonken "Suppresses Overload" mod. Unclear how this works exactly. Requires testing on retail.
    AUTO_STEAM_JACKET           = 938,  // Causes the Automaton to mitigate damage from successive attacks of the same type
    AUTO_STEAM_JACKET_REDUCTION = 939,  // Amount of damage reduced with Steam Jacket
    AUTO_SCHURZEN               = 940,  // Prevents fatal damage leaving the automaton at 1HP and consumes an Earth manuever
    AUTO_EQUALIZER              = 941,  // Reduces damage received according to damage taken
    AUTO_PERFORMANCE_BOOST      = 942,  // Increases the performance of other attachments by a percentage
    AUTO_ANALYZER               = 943,  // Causes the Automaton to mitigate damage from a special attack a number of times
    AUTO_ELEM_CAPACITY          = 987,  // Increases the automaton's elemental capacity for attachments
    AUTO_RANGED_DELAY           = 1001, // Decreases the amount of time between ranged attacks
    AUTO_RANGED_DAMAGEP         = 1002, // Increase automaton ranged weapon damage by a %
    AUTOMATON_LVL_BONUS         = 1044, // Automaton: Lv. (Increases automaton's base level above 99)

    // Dancer
    FINISHING_MOVES          = 333, // Tracks # of finishing moves
    SAMBA_DURATION           = 490, // Samba duration bonus
    WALTZ_POTENCY            = 491, // Waltz Potency Bonus
    JIG_DURATION             = 492, // Jig duration bonus in percents
    VFLOURISH_MACC           = 493, // Violent Flourish accuracy bonus
    STEP_FINISH              = 494, // Bonus finishing moves from steps
    STEP_ACCURACY            = 403, // Bonus accuracy for Dancer's steps
    WALTZ_DELAY              = 497, // Waltz Ability Delay modifier (-1 mod is -1 second)
    SAMBA_PDURATION          = 498, // Samba percent duration bonus
    REVERSE_FLOURISH_EFFECT  = 836, // Reverse Flourish effect in tenths of squared term multiplier
    MAX_FINISHING_MOVE_BONUS = 988, // Increases the maximum number of finishing moves that may be stored

    // Scholar
    BLACK_MAGIC_COST         = 393, // MP cost for black magic (light/dark arts)
    WHITE_MAGIC_COST         = 394, // MP cost for white magic (light/dark arts)
    BLACK_MAGIC_CAST         = 395, // Cast time for black magic (light/dark arts)
    WHITE_MAGIC_CAST         = 396, // Cast time for black magic (light/dark arts)
    BLACK_MAGIC_RECAST       = 397, // Recast time for black magic (light/dark arts)
    WHITE_MAGIC_RECAST       = 398, // Recast time for white magic (light/dark arts)
    ALACRITY_CELERITY_EFFECT = 399, // Bonus for celerity/alacrity effect
    LIGHT_ARTS_EFFECT        = 334, //
    DARK_ARTS_EFFECT         = 335, //
    LIGHT_ARTS_SKILL         = 336, //
    DARK_ARTS_SKILL          = 337, //
    LIGHT_ARTS_REGEN         = 338, // Regen bonus flat HP amount from Light Arts and Tabula Rasa
    REGEN_DURATION           = 339, //
    HELIX_EFFECT             = 478, //
    HELIX_DURATION           = 477, //
    STORMSURGE_EFFECT        = 400, //
    SUBLIMATION_BONUS        = 401, //
    GRIMOIRE_SPELLCASTING    = 489, // "Grimoire: Reduces spellcasting time" bonus

    // Geo
    CARDINAL_CHANT       = 959,
    INDI_DURATION        = 960,
    GEOMANCY_BONUS       = 961, // Used to increase potency of "Geomancy +" items (only the highest value is counted)
    WIDENED_COMPASS      = 962,
    MENDING_HALATION     = 968, // This mod should never exceed 1 as the multiplier is the merit, this is basicaly just a bool mod
    RADIAL_ARCANA        = 969,
    CURATIVE_RECANTATION = 970,
    PRIMEVAL_ZEAL        = 971,
    FULL_CIRCLE          = 1025, // Increases the initial multiplier on MP returned via Full Circle
    BOLSTER_EFFECT       = 1028, // Adds bonus duration as +N seconds
    LIFE_CYCLE_EFFECT    = 1029, // Adds bonus HP% returned to the luopan when using Life Cycle
    AURA_SIZE            = 1030, // Used to extend aura size, the formula is 6.25 + (PEntity->getMod(Mod::AURA_SIZE) / 100) so adding 100 will make this 7.25

    ENSPELL           = 341, // stores the type of enspell active (0 if nothing)
    ENSPELL_DMG       = 343, // stores the base damage of the enspell before reductions
    ENSPELL_DMG_BONUS = 432, //
    ENSPELL_CHANCE    = 856, // Chance of enspell activating (0 = 100%, 10 = 10%, 30 = 30%, ...)
    SPIKES            = 342, // store the type of spike spell active (0 if nothing)
    SPIKES_DMG        = 344, // stores the base damage of the spikes before reductions

    TP_BONUS    = 345, //
    SAVETP      = 880, // SAVETP Effect for Miser's Roll / ATMA / Hagakure.
    CONSERVE_TP = 944, // Conserve TP trait, random chance between 10 and 200 TP

    // Rune Fencer
    INQUARTATA                  = 963,  // Increases parry rate by a flat %.
    ENHANCES_BATTUTA            = 1004, // Used by RUN merit point cat 2 to add +N% bonus damage to parry spikes during Battuta effect
    ENHANCES_ELEMENTAL_SFORZO   = 1005, // Bonus duration
    ENHANCES_SLEIGHT_OF_SWORD   = 1006, // Used by RUN merit point cat 2 to add +N Subtle Blow to Swordplay
    ENHANCES_INSPIRATION        = 1007, // Used by RUN merit point cat 2 to add +N Fast Cast to Vallation/Valiance
    SWORDPLAY                   = 1008, // Adds bonus starting ticks to Swordplay
    LIEMENT                     = 1009, // Adds bonus duration as +N seconds
    VALIANCE_VALLATION_DURATION = 1010, // Adds bonus duration as +N seconds
    PFLUG                       = 1011, // Adds flat additional all-resist rate in +N%
    VIVACIOUS_PULSE_POTENCY     = 1012, // Adds final HP bonus +N% to calculation of Vivacious Pulse
    AUGMENTS_VIVACIOUS_PULSE    = 1013, // Adds random erase/-na to Vivacious Pulse
    RAYKE_DURATION              = 1014, // Adds bonus duration as +N seconds
    ODYLLIC_SUBTERFUGE_DURATION = 1015, // Adds bonus duration as +N seconds
    SWIPE                       = 1016, // Adds bonus damage to the Swipe/Lunge magic damage calculation
    LIEMENT_DURATION            = 1017, // Adds bonus duration as +N seconds
    GAMBIT_DURATION             = 1018, // Adds bonus duration as +N seconds
    EMBOLDEN_DURATION           = 1019, // Adds bonus duration as +N seconds
    LIEMENT_EXTENDS_TO_AREA     = 1020, // Epeolatry's (RUN Ergon weapon) special effect, makes Liement AoE to party instead of self target only.
    INSPIRATION_FAST_CAST       = 1021, // Inspiration Fast Cast, additive with Fast Cast with a combined cap beyond 80%
    PARRY_SPIKES                = 1022, // Battuta parry spikes rate
    PARRY_SPIKES_DMG            = 1023, // Battuta parry spikes damage
    SPECIAL_ATTACK_EVASION      = 1024, // Foil "Special Attack" evasion

    // Stores the amount of elemental affinity (elemental staves mostly) - damage, acc, and perpetuation is all handled separately
    FIRE_AFFINITY_DMG    = 347, // They're stored separately due to Magian stuff - they can grant different levels of
    ICE_AFFINITY_DMG     = 348, // the damage/acc/perp affinity on the same weapon, so they must be separated.
    WIND_AFFINITY_DMG    = 349, // Each level of damage affinity is +/-5% damage, acc is +/-10 acc, and perp is
    EARTH_AFFINITY_DMG   = 350, // +/-1 mp/tic. This means that anyone adding these modifiers will have to add
    THUNDER_AFFINITY_DMG = 351, // 1 to the wiki amount. For example, Fire Staff has 2 in fire affinity for
    WATER_AFFINITY_DMG   = 352, // DMG, ACC, and PERP, while the wiki lists it as having 1 in each.
    LIGHT_AFFINITY_DMG   = 353,
    DARK_AFFINITY_DMG    = 354,

    FIRE_AFFINITY_ACC    = 544,
    ICE_AFFINITY_ACC     = 545,
    WIND_AFFINITY_ACC    = 546,
    EARTH_AFFINITY_ACC   = 547,
    THUNDER_AFFINITY_ACC = 548,
    WATER_AFFINITY_ACC   = 549,
    LIGHT_AFFINITY_ACC   = 550,
    DARK_AFFINITY_ACC    = 551,

    FIRE_AFFINITY_PERP    = 553,
    ICE_AFFINITY_PERP     = 554,
    WIND_AFFINITY_PERP    = 555,
    EARTH_AFFINITY_PERP   = 556,
    THUNDER_AFFINITY_PERP = 557,
    WATER_AFFINITY_PERP   = 558,
    LIGHT_AFFINITY_PERP   = 559,
    DARK_AFFINITY_PERP    = 560,

    // Special Modifier+
    ADDS_WEAPONSKILL     = 355, //
    ADDS_WEAPONSKILL_DYN = 356, // In Dynamis

    STEALTH            = 358, //
    SNEAK_DURATION     = 946, // Additional duration in seconds
    INVISIBLE_DURATION = 947, // Additional duration in seconds

    DMG_RATING        = 287, // adds damage rating to weapon (+DMG augments, maneater/blau dolch etc hidden effects)
    MAIN_DMG_RATING   = 366, // adds damage rating to mainhand weapon
    SUB_DMG_RATING    = 367, // adds damage rating to off hand weapon
    RANGED_DMG_RATING = 376, // adds damage rating to ranged weapon
    MAIN_DMG_RANK     = 377, // adds weapon rank to main weapon http://wiki.bluegartr.com/bg/Weapon_Rank
    SUB_DMG_RANK      = 378, // adds weapon rank to sub weapon
    RANGED_DMG_RANK   = 379, // adds weapon rank to ranged weapon

    REGAIN             = 368,  // auto regain TP (from items) | this is multiplied by 10 e.g. 20 is 2% TP
    REGAIN_DOWN        = 406,  // plague, reduce tp
    REFRESH            = 369,  // auto refresh from equipment
    REFRESH_DOWN       = 405,  // plague, reduce mp
    REGEN              = 370,  // auto regen from equipment
    REGEN_DOWN         = 404,  // poison
    CURE_POTENCY       = 374,  // % cure potency | bonus from gear is capped at 50
    CURE_POTENCY_II    = 260,  // % cure potency II | bonus from gear is capped at 30
    CURE_POTENCY_RCVD  = 375,  // % potency of received cure | healer's roll, some items have this
    CURE_POTENCY_BONUS = 1051, // TODO: Increases amount healed by Cure spells (fixed amount)
    DELAYP             = 380,  // delay addition percent (does not affect tp gain)
    RANGED_DELAYP      = 381,  // ranged delay addition percent (does not affect tp gain)

    SHIELD_BASH = 385, //
    KICK_DMG    = 386, // increases kick attack damage
    WEAPON_BASH = 392, //

    WYVERN_BREATH = 402, //

    // Gear set modifiers
    DA_DOUBLE_DMG_RATE       = 408, // Double attack's double damage chance %.
    TA_TRIPLE_DMG_RATE       = 409, // Triple attack's triple damage chance %.
    ZANSHIN_DOUBLE_DAMAGE    = 410, // Zanshin's double damage chance %.
    RAPID_SHOT_DOUBLE_DAMAGE = 479, // Rapid shot's double damage chance %.
    ABSORB_DMG_CHANCE        = 480, // Chance to absorb damage %
    EXTRA_DUAL_WIELD_ATTACK  = 481, // Chance to land an extra attack when dual wielding
    EXTRA_KICK_ATTACK        = 482, // Occasionally allows a second Kick Attack during an attack round without the use of Footwork.
    SAMBA_DOUBLE_DAMAGE      = 415, // Double damage chance when samba is up.
    NULL_PHYSICAL_DAMAGE     = 416, // Occasionally annuls damage from physical attacks, in percents
    QUICK_DRAW_TRIPLE_DAMAGE = 417, // Chance to do triple damage with quick draw.
    BAR_ELEMENT_NULL_CHANCE  = 418, // Bar Elemental spells will occasionally NULLify damage of the same element.
    GRIMOIRE_INSTANT_CAST    = 419, // Spells that match your current Arts will occasionally cast instantly, without recast.
    QUAD_ATTACK              = 430, // Quadruple attack chance.

    // Reraise (Auto Reraise, used by gear)
    RERAISE_I   = 456, // Reraise.
    RERAISE_II  = 457, // Reraise II.
    RERAISE_III = 458, // Reraise III.

    // Elemental Absorb Chance
    FIRE_ABSORB  = 459, // Occasionally absorbs fire elemental damage, in percents
    ICE_ABSORB   = 460, // Occasionally absorbs ice elemental damage, in percents
    WIND_ABSORB  = 461, // Occasionally absorbs wind elemental damage, in percents
    EARTH_ABSORB = 462, // Occasionally absorbs earth elemental damage, in percents
    LTNG_ABSORB  = 463, // Occasionally absorbs thunder elemental damage, in percents
    WATER_ABSORB = 464, // Occasionally absorbs water elemental damage, in percents
    LIGHT_ABSORB = 465, // Occasionally absorbs light elemental damage, in percents
    DARK_ABSORB  = 466, // Occasionally absorbs dark elemental damage, in percents

    // Elemental Null Chance
    FIRE_NULL  = 467, //
    ICE_NULL   = 468, //
    WIND_NULL  = 469, //
    EARTH_NULL = 470, //
    LTNG_NULL  = 471, //
    WATER_NULL = 472, //
    LIGHT_NULL = 473, //
    DARK_NULL  = 474, //

    MAGIC_ABSORB       = 475, // Occasionally absorbs magic damage taken, in percents
    MAGIC_NULL         = 476, // Occasionally annuls magic damage taken, in percents
    NULL_RANGED_DAMAGE = 239, // Occasionally annuls ranged damage taken, in percents
    PHYS_ABSORB        = 512, // Occasionally absorbs physical damage taken, in percents
    ABSORB_DMG_TO_MP   = 516, // Unlike PLD gear mod, works on all damage types (Ethereal Earring)

    ITEM_ADDEFFECT_TYPE     = 431,  // see procType table in scripts\globals\additional_effects.lua
    ITEM_SUBEFFECT          = 499,  // Animation ID of Spikes and Additional Effects
    ITEM_ADDEFFECT_DMG      = 500,  // Damage of an items Additional Effect or Spikes
    ITEM_ADDEFFECT_CHANCE   = 501,  // Chance of an items Additional Effect or Spikes
    ITEM_ADDEFFECT_ELEMENT  = 950,  // Element of the Additional Effect or Spikes, for resist purposes
    ITEM_ADDEFFECT_STATUS   = 951,  // Status Effect ID to try to apply via Additional Effect or Spikes
    ITEM_ADDEFFECT_POWER    = 952,  // Base Power for effect in MOD_ITEM_ADDEFFECT_STATUS
    ITEM_ADDEFFECT_DURATION = 953,  // Base Duration for effect in MOD_ITEM_ADDEFFECT_STATUS
    ITEM_ADDEFFECT_OPTION   = 1180, // Additional parameters for more specific latents required to proc

    GOV_CLEARS = 496, // 4% bonus per Grounds of Valor Page clear

    AFTERMATH = 256, // Aftermath ID

    EXTRA_DMG_CHANCE = 506, // Proc rate of OCC_DO_EXTRA_DMG. 111 would be 11.1%
    OCC_DO_EXTRA_DMG = 507, // Multiplier for "Occasionally do x times normal damage". 250 would be 2.5 times damage.

    REM_OCC_DO_DOUBLE_DMG = 863, // Proc rate for REM Aftermaths that apply "Occasionally do double damage"
    REM_OCC_DO_TRIPLE_DMG = 864, // Proc rate for REM Aftermaths that apply "Occasionally do triple damage"

    REM_OCC_DO_DOUBLE_DMG_RANGED = 867, // Ranged attack specific
    REM_OCC_DO_TRIPLE_DMG_RANGED = 868, // Ranged attack specific

    MYTHIC_OCC_ATT_TWICE  = 865, // Proc rate for "Occasionally attacks twice"
    MYTHIC_OCC_ATT_THRICE = 866, // Proc rate for "Occasionally attacks thrice"

    EAT_RAW_FISH = 412, //
    EAT_RAW_MEAT = 413, //

    ENHANCES_CURSNA_RCVD     = 67,   // Potency of "Cursna" effects received
    ENHANCES_CURSNA          = 310,  // Used by gear with the "Enhances Cursna" or "Cursna+" attribute
    ENHANCES_HOLYWATER       = 495,  // Used by gear with the "Enhances Holy Water" or "Holy Water+" attribute
    ENHANCES_PROT_SHELL_RCVD = 977,  // Enhances Protect and Shell Effects Received (Binary MOD)
    ENHANCES_PROT_RCVD       = 1050, // TODO: Enhances Protect Received (Percent)

    RETALIATION = 414, // Increases damage of Retaliation hits

    CLAMMING_IMPROVED_RESULTS  = 509, //
    CLAMMING_REDUCED_INCIDENTS = 510, //

    CHOCOBO_RIDING_TIME = 511, // Increases chocobo riding time

    HARVESTING_RESULT = 513, // Improves harvesting results
    LOGGING_RESULT    = 514, // Improves logging results
    MINING_RESULT     = 515, // Improves mining results

    EGGHELM = 517,

    SHIELDBLOCKRATE           = 518, // Affects shield block rate, percent based
    DIA_DOT                   = 313, // Increases the DoT damage of Dia
    ENH_DRAIN_ASPIR           = 315, // % damage boost to Drain and Aspir
    AUGMENTS_ABSORB           = 521, // Direct Absorb spell increase while Liberator is equipped (percentage based)
    AMMO_SWING                = 523, // Extra swing rate w/ ammo (ie. Jailer weapons). Use gearsets, and does nothing for non-players.
    AMMO_SWING_TYPE           = 826, // For the handedness of the weapon - 1h (1) vs. 2h/h2h (2). h2h can safely use the same function as 2h.
    AUGMENTS_CONVERT          = 525, // Convert HP to MP Ratio Multiplier. Value = MP multiplier rate.
    AUGMENTS_SA               = 526, // Adds Critical Attack Bonus to Sneak Attack, percentage based.
    AUGMENTS_TA               = 527, // Adds Critical Attack Bonus to Trick Attack, percentage based.
    AUGMENTS_FEINT            = 502, // Feint will give another -10 Evasion per merit level
    AUGMENTS_ASSASSINS_CHARGE = 886, // Gives Assassin's Charge +1% Critical Hit Rate per merit level
    AUGMENTS_AMBUSH           = 887, // Gives +1% Triple Attack per merit level when Ambush conditions are met
    AUGMENTS_AURA_STEAL       = 889, // 20% chance of 2 effects to be dispelled or stolen per merit level
    AUGMENTS_CONSPIRATOR      = 912, // Applies Conspirator benefits to player at the top of the hate list
    ENHANCES_REFRESH          = 529, // "Enhances Refresh" adds +1 per modifier to spell's tick result.
    NO_SPELL_MP_DEPLETION     = 530, // % to not deplete MP on spellcast.
    FORCE_FIRE_DWBONUS        = 531, // Set to above 0 to force fire day/weather spell bonus/penalty.
    FORCE_ICE_DWBONUS         = 532, // Set to above 0 to force ice day/weather spell bonus/penalty.
    FORCE_WIND_DWBONUS        = 533, // Set to above 0 to force wind day/weather spell bonus/penalty.
    FORCE_EARTH_DWBONUS       = 534, // Set to above 0 to force earth day/weather spell bonus/penalty.
    FORCE_LIGHTNING_DWBONUS   = 535, // Set to above 0 to force lightning day/weather spell bonus/penalty.
    FORCE_WATER_DWBONUS       = 536, // Set to above 0 to force water day/weather spell bonus/penalty.
    FORCE_LIGHT_DWBONUS       = 537, // Set to above 0 to force light day/weather spell bonus/penalty.
    FORCE_DARK_DWBONUS        = 538, // Set to above 0 to force dark day/weather spell bonus/penalty.
    STONESKIN_BONUS_HP        = 539, // Bonus "HP" granted to Stoneskin spell.
    DAY_NUKE_BONUS            = 565, // Bonus damage from "Elemental magic affected by day" (Sorc. Tonban)
    IRIDESCENCE               = 566, // Iridescence trait (additional weather damage/penalty)
    BARSPELL_AMOUNT           = 567, // Additional elemental resistance granted by bar- spells
    BARSPELL_MDEF_BONUS       = 827, // Extra magic defense bonus granted to the bar- spell effect
    RAPTURE_AMOUNT            = 568, // Bonus amount added to Rapture effect
    EBULLIENCE_AMOUNT         = 569, // Bonus amount added to Ebullience effect
    AQUAVEIL_COUNT            = 832, // Modifies the amount of hits that Aquaveil absorbs before being removed
    ENH_MAGIC_DURATION        = 890, // Enhancing Magic Duration increase %
    ENHANCES_COURSERS_ROLL    = 891, // Courser's Roll Bonus % chance
    ENHANCES_CASTERS_ROLL     = 892, // Caster's Roll Bonus % chance
    ENHANCES_BLITZERS_ROLL    = 893, // Blitzer's Roll Bonus % chance
    ENHANCES_ALLIES_ROLL      = 894, // Allies' Roll Bonus % chance
    ENHANCES_TACTICIANS_ROLL  = 895, // Tactician's Roll Bonus % chance
    OCCULT_ACUMEN             = 902, // Grants bonus TP when dealing damage with elemental or dark magic

    QUICK_MAGIC = 909, // Percent chance spells cast instantly (also reduces recast to 0, similar to Chainspell)

    // Crafting food effects
    SYNTH_SUCCESS             = 851, // Rate of synthesis success
    SYNTH_SKILL_GAIN          = 852, // Synthesis skill gain rate
    SYNTH_FAIL_RATE           = 861, // Synthesis failure rate (percent)
    SYNTH_HQ_RATE             = 862, // High-quality success rate (not a percent)
    DESYNTH_SUCCESS           = 916, // Rate of desynthesis success
    SYNTH_FAIL_RATE_FIRE      = 917, // Amount synthesis failure rate is reduced when using a fire crystal
    SYNTH_FAIL_RATE_ICE       = 918, // Amount synthesis failure rate is reduced when using a ice crystal
    SYNTH_FAIL_RATE_WIND      = 919, // Amount synthesis failure rate is reduced when using a wind crystal
    SYNTH_FAIL_RATE_EARTH     = 920, // Amount synthesis failure rate is reduced when using a earth crystal
    SYNTH_FAIL_RATE_LIGHTNING = 921, // Amount synthesis failure rate is reduced when using a lightning crystal
    SYNTH_FAIL_RATE_WATER     = 922, // Amount synthesis failure rate is reduced when using a water crystal
    SYNTH_FAIL_RATE_LIGHT     = 923, // Amount synthesis failure rate is reduced when using a light crystal
    SYNTH_FAIL_RATE_DARK      = 924, // Amount synthesis failure rate is reduced when using a dark crystal
    SYNTH_FAIL_RATE_WOOD      = 925, // Amount synthesis failure rate is reduced when doing woodworking
    SYNTH_FAIL_RATE_SMITH     = 926, // Amount synthesis failure rate is reduced when doing smithing
    SYNTH_FAIL_RATE_GOLDSMITH = 927, // Amount synthesis failure rate is reduced when doing goldsmithing
    SYNTH_FAIL_RATE_CLOTH     = 928, // Amount synthesis failure rate is reduced when doing clothcraft
    SYNTH_FAIL_RATE_LEATHER   = 929, // Amount synthesis failure rate is reduced when doing leathercraft
    SYNTH_FAIL_RATE_BONE      = 930, // Amount synthesis failure rate is reduced when doing bonecraft
    SYNTH_FAIL_RATE_ALCHEMY   = 931, // Amount synthesis failure rate is reduced when doing alchemy
    SYNTH_FAIL_RATE_COOK      = 932, // Amount synthesis failure rate is reduced when doing cooking

    // Weaponskill %damage modifiers
    // The following modifier should not ever be set, but %damage modifiers to weaponskills use the next 255 IDs (this modifier + the WSID)
    // For example, +10% damage to Chant du Cygne would be ID 570 + 225 (795)
    WEAPONSKILL_DAMAGE_BASE = 570,

    ALL_WSDMG_ALL_HITS = 840,  // Generic (all Weaponskills) damage, on all hits.
                               // Per https://www.bg-wiki.com/bg/Weapon_Skill_Damage we need all 3..
    ALL_WSDMG_FIRST_HIT = 841, // Generic (all Weaponskills) damage, first hit only.
    WS_NO_DEPLETE       = 949, // % chance a Weaponskill depletes no TP.
    WS_STR_BONUS        = 980, // % bonus to str_wsc.
    WS_DEX_BONUS        = 957, // % bonus to dex_wsc.
    WS_VIT_BONUS        = 981, // % bonus to vit_wsc.
    WS_AGI_BONUS        = 982, // % bonus to agi_wsc.
    WS_INT_BONUS        = 983, // % bonus to int_wsc.
    WS_MND_BONUS        = 984, // % bonus to mnd_wsc.
    WS_CHR_BONUS        = 985, // % bonus to chr_wsc.

    // Pet Modifiers (Job Point Gifts)
    PET_ATK_DEF    = 990, // Increases pet physical attack, ranged attack, and physical defense
    PET_ACC_EVA    = 991, // Increases pet physical accuracy, ranged accuracy, and evasion
    PET_MAB_MDB    = 992, // Increases pet magic attack and magic defense
    PET_MACC_MEVA  = 993, // Increases pet magic accuracy and evasion
    PET_ATTR_BONUS = 994, // Increases pet attributes
    PET_TP_BONUS   = 995, // Increases pet TP bonus

    EXPERIENCE_RETAINED   = 914, // Experience points retained upon death (this is a percentage)
    CAPACITY_BONUS        = 915, // Capacity point bonus granted
    CONQUEST_BONUS        = 933, // Conquest points bonus granted (percentage)
    CONQUEST_REGION_BONUS = 934, // Increases the influence points awarded to the player's nation when receiving conquest points
    CAMPAIGN_BONUS        = 935, // Increases the evaluation for allied forces by percentage

    SUBTLE_BLOW_II       = 973, // Subtle Blow II Effect (Cap 50%) Total Effect (SB + SB_II cap 75%)
    GARDENING_WILT_BONUS = 975, // Increases the number of Vanadays a plant can survive before it wilts

    SUPERIOR_LEVEL  = 997, // SU0..5
    ONE_HOUR_RECAST = 996, // Decreases the recast time of one-hour abilities by n minutes.

    // AF3 Set Bonus Modifiers
    AUGMENT_CONSERVE_MP    = 1031, // Percent chance to deal extra damage based on Conserve MP Amount (BLM AF3 Sets)
    AUGMENT_COMPOSURE      = 1032, // Percent Enhancing Duration Extension for Others (RDM AF3 Sets)
    AUGMENT_DAMAGE_HP      = 1033, // Percent chance to increase damage based on player HP% (DRK AF3 Sets)
    AUGMENT_DAMAGE_PET_HP  = 1034, // Percent chance to increase damage based on pet HP% (BST/DRG AF3 Sets)
    AUGMENT_BLOOD_BOON     = 1035, // Percent chance to deal extra damage based on Blood Boon Amount (SMN AF3 Sets)
    AUGMENT_BLU_MAGIC      = 1036, // Percent chance for BLU magic to receive 3x WSC value for spell (BLU AF3 Sets)
    GEOMANCY_MP_NO_DEPLETE = 1037, // Percent chance for Geomancy to cost 0 MP (GEO AF3 Sets)

    BREATH_DMG_DEALT = 1075, // Breath damage dealt

    // Permenant Resistance Build Modifiers
    SLEEPRESBUILD          = 1138, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    POISONRESBUILD         = 1139, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    PARALYZERESBUILD       = 1140, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    BLINDRESBUILD          = 1141, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    SILENCERESBUILD        = 1142, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    VIRUSRESBUILD          = 1143, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    PETRIFYRESBUILD        = 1144, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    BINDRESBUILD           = 1145, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    CURSERESBUILD          = 1146, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    GRAVITYRESBUILD        = 1147, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    SLOWRESBUILD           = 1148, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    STUNRESBUILD           = 1149, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    CHARMRESBUILD          = 1150, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    AMNESIARESBUILD        = 1151, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    LULLABYRESBUILD        = 1152, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    DEATHRESBUILD          = 1153, // Used to create a resbuild for the appropriate effect. Will decrease overall duration of effect. (Out of 1000)
    PET_DMG_TAKEN_PHYSICAL = 1154, // Percent increase/decrease in pet physical damage taken for the target.
    PET_DMG_TAKEN_MAGICAL  = 1155, // Percent increase/decrease in pet physical damage taken for the target.
    PET_DMG_TAKEN_BREATH   = 1156, // Percent increase/decrease in pet physical damage taken for the target.
    DIG_BYPASS_FATIGUE     = 1157, // Chocobo digging modifier found in "Blue Race Silks". Modifier works as a direct percent. Used in Chocobo_Digging.lua
    FIRE_EEM               = 1158, // Elemental Evasion Multiplier (Known as SDT in common magic accuracy formulas) (out of 100)
    ICE_EEM                = 1159, // Elemental Evasion Multiplier (Known as SDT in common magic accuracy formulas) (out of 100)
    WIND_EEM               = 1160, // Elemental Evasion Multiplier (Known as SDT in common magic accuracy formulas) (out of 100)
    EARTH_EEM              = 1161, // Elemental Evasion Multiplier (Known as SDT in common magic accuracy formulas) (out of 100)
    THUNDER_EEM            = 1162, // Elemental Evasion Multiplier (Known as SDT in common magic accuracy formulas) (out of 100)
    WATER_EEM              = 1163, // Elemental Evasion Multiplier (Known as SDT in common magic accuracy formulas) (out of 100)
    LIGHT_EEM              = 1164, // Elemental Evasion Multiplier (Known as SDT in common magic accuracy formulas) (out of 100)
    DARK_EEM               = 1165, // Elemental Evasion Multiplier (Known as SDT in common magic accuracy formulas) (out of 100)
    TAME_SUCCESS_RATE      = 1166, // Tame Success Rate +
    RAMPART_MAGIC_SHIELD   = 1167, // Rampart Magic Shield
    CRITHITRATE_SLOT       = 1168, // CRITHITRATE for slot
    ATT_SLOT               = 1169, // ATT for slot
    UDMG                   = 1170, // Uncapped dmg taken (all types)
    SLEEP_MEVA             = 1171, // Sleep MEVA from Barspells
    POISON_MEVA            = 1172, // Poison MEVA from Barspells
    PARALYZE_MEVA          = 1173, // Paralyze MEVA from Barspells
    BLIND_MEVA             = 1174, // Blind MEVA from Barspells
    SILENCE_MEVA           = 1175, // Silence MEVA from Barspells
    VIRUS_MEVA             = 1176, // Virus MEVA from Barspells
    PETRIFY_MEVA           = 1177, // Petrify MEVA from Barspells

    // Per PR comment - New ASB section starting at 2000
    TANDEM_STRIKE = 2000, // Beastmaster trait - provides acc/macc to master and pet when both engage the same target
    TANDEM_BLOW   = 2001, // Beastmaster trait - provides subtle blow to master and pet when both engage the same target

    // IF YOU ADD ANY NEW MODIFIER HERE, ADD IT IN scripts/globals/status.lua ASWELL!

    // The spares take care of finding the next ID to use so long as we don't forget to list IDs that have been freed up by refactoring.
    // 570 through 825 used by WS DMG mods these are not spares.
    //
    // SPARE IDs:
    // 74 to 79
    // 138 to 143
    // 156 to 159
    // 192 to 223
    // 261 to 280
    //
    // SPARE = 1181, and onward
};

// temporary workaround for using enum class as unordered_map key until compilers support it
struct EnumClassHash
{
    template <typename T>
    std::size_t operator()(T t) const
    {
        return static_cast<std::size_t>(t);
    }
};

/************************************************************************
 *  Modifier Class                                                       *
 ************************************************************************/

class CModifier
{
public:
    Mod   getModID() const;
    int16 getModAmount() const;

    void setModAmount(int16 amount);

    CModifier(Mod type, int16 amount = 0);

private:
    Mod   m_id{ Mod::NONE };
    int16 m_amount{ 0 };
};

enum class PetModType
{
    All        = 0,
    Avatar     = 1,
    Wyvern     = 2,
    Automaton  = 3,
    Harlequin  = 4,
    Valoredge  = 5,
    Sharpshot  = 6,
    Stormwaker = 7,
    Luopan     = 8
};

class CPetModifier : public CModifier
{
public:
    CPetModifier(Mod type, PetModType pettype, int16 amount = 0);
    PetModType getPetModType() const;

private:
    PetModType m_pettype{ PetModType::All };
};

#endif
