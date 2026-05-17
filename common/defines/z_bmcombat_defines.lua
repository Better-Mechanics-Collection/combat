--------------------------------------------------------------------------------------------------------------
-- COUNTRY
--------------------------------------------------------------------------------------------------------------
NDefines.NCountry.LOCAL_MANPOWER_ACCESSIBLE_NON_CORE_FACTOR = 0.044
NDefines.NCountry.BASE_COMMAND_POWER_GAIN = 0.51
--NDefines.NCountry.POPULATION_YEARLY_GROWTH_BASE = 0.036

NDefines.NCountry.SPECIAL_FORCES_CAP_MIN = 36
NDefines.NCountry.SPECIAL_FORCES_CAP_BASE = 0.034

-- Supply & Logistics
NDefines.NCountry.AIR_SUPPLY_CONVERSION_SCALE = 0.075

-- Command Power
NDefines.NCountry.BASE_MAX_COMMAND_POWER = 105

-- AI Strategic Weights
NDefines.NCountry.ARMY_IMPORTANCE_FACTOR = 10.0
NDefines.NCountry.TERRAIN_IMPORTANCE_FACTOR = 5.0
NDefines.NCountry.VICTORY_POINTS_IMPORTANCE_FACTOR = 5.0
NDefines.NCountry.BUILDING_IMPORTANCE_FACTOR = 1.0
NDefines.NCountry.RESOURCE_IMPORTANCE_FACTOR = 5.0

-- Scorched Earth
NDefines.NCountry.SCORCHED_EARTH_STATE_COST = 20

-- Tech Tweaks
NDefines.NTechnology.BASE_YEAR_AHEAD_PENALTY_FACTOR = 1.85	
NDefines.NTechnology.BASE_RESEARCH_POINTS_SAVED = 45

--------------------------------------------------------------------------------------------------------------
-- MILITARY EXPERIENCE & TRAINING
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.BASE_DIVISION_BRIGADE_GROUP_COST = 16
NDefines.NMilitary.BASE_DIVISION_BRIGADE_CHANGE_COST = 4
NDefines.NMilitary.BASE_DIVISION_SUPPORT_SLOT_COST = 8

NDefines.NMilitary.MAX_ARMY_EXPERIENCE = 950
NDefines.NMilitary.MAX_NAVY_EXPERIENCE = 550
NDefines.NMilitary.MAX_AIR_EXPERIENCE = 675

NDefines.NMilitary.ARMY_LEADER_XP_GAIN_PER_UNIT_IN_COMBAT = 0.11

NDefines.NMilitary.TRAINING_MAX_DAILY_COUNTRY_EXP = 0.12
NDefines.NMilitary.UNIT_EXPERIENCE_PER_TRAINING_DAY = 0.00175
NDefines.NMilitary.TRAINING_ATTRITION = 0.01
NDefines.NMilitary.TRAINING_MIN_STRENGTH = 0.2

--NDefines.NMilitary.FIELD_EXPERIENCE_SCALE = 0.003
--NDefines.NMilitary.FIELD_EXPERIENCE_MAX_PER_DAY = 4
--NDefines.NMilitary.TRAINING_EXPERIENCE_SCALE = 124.0

-- Dig-in
NDefines.NMilitary.DIG_IN_FACTOR = 0.02
NDefines.NMilitary.UNIT_DIGIN_CAP = 7.5
NDefines.NMilitary.UNIT_DIGIN_SPEED = 1.5

--------------------------------------------------------------------------------------------------------------
-- LAND COMBAT (CORE)
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.RECON_SKILL_IMPACT = 10
NDefines.NMilitary.DAMAGE_SPLIT_ON_FIRST_TARGET = 0.7
NDefines.NMilitary.ENGAGEMENT_WIDTH_PER_WIDTH = 1.5	-- (was 2.0) -- how much enemy combat width we are allowed to engage per width of our own		#WICHTIG

NDefines.NMilitary.COMBAT_STACKING_START = 10
NDefines.NMilitary.COMBAT_STACKING_EXTRA = 6
NDefines.NMilitary.COMBAT_STACKING_PENALTY = -0.08

NDefines.NMilitary.COMBAT_MINIMUM_TIME = 3
NDefines.NMilitary.COMBAT_VALUE_ORG_IMPORTANCE = 1.3
NDefines.NMilitary.REINFORCE_CHANCE = 0.06

NDefines.NMilitary.MULTIPLE_COMBATS_PENALTY = -0.55
NDefines.NMilitary.ENCIRCLED_PENALTY = -0.25
NDefines.NMilitary.FLANKED_PROVINCES_COUNT = 2

NDefines.NMilitary.HOURLY_ORG_MOVEMENT_IMPACT = -0.1
NDefines.NMilitary.WITHDRAWING_SPEED_FACTOR = 0.20

-- Terrain & Forts
NDefines.NMilitary.RIVER_CROSSING_PENALTY_LARGE = -0.7
NDefines.NMilitary.RIVER_CROSSING_SPEED_PENALTY = -0.30
NDefines.NMilitary.RIVER_CROSSING_SPEED_PENALTY_LARGE = -0.65
NDefines.NMilitary.BASE_FORT_PENALTY = -0.25

NDefines.NMilitary.COMBAT_OVER_WIDTH_PENALTY = -0.6		-- over combat width penalty per %.
NDefines.NMilitary.COMBAT_OVER_WIDTH_PENALTY_MAX = -0.50	-- over combat width max (when you cant join no more).

--------------------------------------------------------------------------------------------------------------
-- LAND COMBAT DAMAGE
--------------------------------------------------------------------------------------------------------------

NDefines.NMilitary.EQUIPMENT_COMBAT_LOSS_FACTOR = 0.40         -- vanilla 0.70: men die, equipment mostly recovered from battlefield
NDefines.NMilitary.RELIABILTY_RECOVERY = 0.55                  -- vanilla 0.40: more post-battle equipment salvage
NDefines.NMilitary.BASE_CAPTURE_EQUIPMENT_RATIO = 0.05         -- vanilla 0.0: winners capture ~8% of enemy lost equipment


--------------------------------------------------------------------------------------------------------------
-- ARMOR & PIERCING
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.PIERCING_THRESHOLDS = {                                            -- Our piercing / their armor must be this value to deal damage fraction equal to the index in the array below [higher number = higher penetration]. If armor is 0, 1.00 will be returned.
    1.30,
    1.1,
    1.0,
    0.9,
    0.75,
    0.5,
    0.25,
    0.00, --there isn't much point setting this higher than 0
}

NDefines.NMilitary.PIERCING_THRESHOLD_DAMAGE_VALUES = {                                -- 0 armor will always receive maximum damage (so add overmatching at your own peril). the system expects at least 2 values, with no upper limit.
    1.00,
    0.90,
    0.80,
    0.70,
    0.60,
    0.55,
    0.40,
    0.20,
}

NDefines.NMilitary.ARMOR_VS_AVERAGE = 0.4
NDefines.NMilitary.PEN_VS_AVERAGE = 0.1

NDefines.NMilitary.LAND_COMBAT_STR_ARMOR_DEFLECTION_FACTOR = 0.6
NDefines.NMilitary.LAND_COMBAT_ORG_ARMOR_DEFLECTION_FACTOR = 0.8

--------------------------------------------------------------------------------------------------------------
-- SUPPLY & LOGISTICS
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.MIN_SUPPLY_CONSUMPTION = 0.03
NDefines.NMilitary.SUPPLY_GRACE = 96
NDefines.NMilitary.SUPPLY_ORG_MAX_CAP = 0.55

NDefines.NSupply.SUPPLY_HUB_FULL_MOTORIZATION_TRUCK_COST = 350
NDefines.NSupply.SUPPLY_POINTS_PER_TRAIN = 0.2

--------------------------------------------------------------------------------------------------------------
-- AIR COMBAT & CAS
--------------------------------------------------------------------------------------------------------------
NDefines.NAir.AIR_WING_FLIGHT_SPEED_MULT = 0.03
NDefines.NAir.AIR_WING_MAX_STATS_ATTACK = 200
NDefines.NAir.AIR_WING_MAX_STATS_DEFENCE = 200
NDefines.NAir.AIR_WING_MAX_STATS_AGILITY = 200
NDefines.NAir.AIR_WING_MAX_STATS_SPEED = 2000
NDefines.NAir.AIR_WING_MAX_STATS_BOMBING = 300

NDefines.NAir.BIGGEST_AGILITY_FACTOR_DIFF = 5.0
NDefines.NAir.AIR_WING_COUNTRY_XP_FROM_TRAINING_FACTOR = 0.0075

NDefines.NAir.ANTI_AIR_PLANE_DAMAGE_CHANCE = 0.03
NDefines.NAir.ANTI_AIR_PLANE_DAMAGE_FACTOR = 0.35
NDefines.NAir.ANTI_AIR_ATTACK_TO_DAMAGE_REDUCTION_FACTOR = 0.31

NDefines.NAir.CAS_NIGHT_ATTACK_FACTOR = 0.25

NDefines.NAir.FIELD_EXPERIENCE_MAX_PER_DAY = 1.75

--------------------------------------------------------------------------------------------------------------
-- STRATEGIC & LOGISTICS BOMBING
--------------------------------------------------------------------------------------------------------------
NDefines.NAir.AIR_WING_BOMB_DAMAGE_FACTOR = 7.5
NDefines.NAir.BOMBING_TARGETING_RANDOM_FACTOR = 0.15

NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRUCK_DAMAGE_FACTOR = 0.35
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRAIN_DAMAGE_FACTOR = 0.055

NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_SHIP_CHANCE = 0.2
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_SHIP_DAMAGE_FACTOR = 50
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_CHANCE = 0.65
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_DAMAGE_FACTOR = 50

NDefines.NAir.AA_INDUSTRY_AIR_DAMAGE_FACTOR = -0.045
NDefines.NAir.DETECT_CHANCE_FROM_NIGHT = -0.35

--------------------------------------------------------------------------------------------------------------
-- TRADE
--------------------------------------------------------------------------------------------------------------
NDefines.NTrade.BASE_LAND_TRADE_RANGE = 200

--------------------------------------------------------------------------------------------------------------
-- Combat: Slower Battles, Dynamic, Historical Casualties
-- Goal: Longer engagements without WW1 stalemate. Divisions bleed before they break.
--------------------------------------------------------------------------------------------------------------

-- Base damage modifiers: slightly reduced from vanilla to stretch battles out
NDefines.NMilitary.LAND_COMBAT_STR_DAMAGE_MODIFIER = 0.057  -- vanilla 0.060
NDefines.NMilitary.LAND_COMBAT_ORG_DAMAGE_MODIFIER = 0.048  -- vanilla 0.053

-- Dice sizes: tighter ORG variance keeps battles from spiking to instant collapses,
-- STR kept at vanilla so decisive fights still end decisively
NDefines.NMilitary.LAND_COMBAT_ORG_DICE_SIZE = 3            -- vanilla 4
NDefines.NMilitary.LAND_COMBAT_STR_DICE_SIZE = 2            -- vanilla 2, DO NOT lower this

-- Armor bonus dice: slight reduction so armor advantage is real but not a one-tick steamroll
NDefines.NMilitary.LAND_COMBAT_ORG_ARMOR_ON_SOFT_DICE_SIZE = 5  -- vanilla 6
NDefines.NMilitary.LAND_COMBAT_STR_ARMOR_ON_SOFT_DICE_SIZE = 2  -- vanilla 2, keep it

-- Hit avoidance: lower ceiling means breaking divisions eat more STR before retreating
-- this is what gives you historical casualty spikes on collapsing units
NDefines.NMilitary.BASE_CHANCE_TO_AVOID_HIT = 87            -- vanilla 90
NDefines.NMilitary.CHANCE_TO_AVOID_HIT_AT_NO_DEF = 55       -- vanilla 60

-- CAS: meaningful but not battle-deciding on its own
NDefines.NMilitary.LAND_AIR_COMBAT_STR_DAMAGE_MODIFIER = 0.04   -- vanilla 0.05
NDefines.NMilitary.LAND_AIR_COMBAT_ORG_DAMAGE_MODIFIER = 0.07   -- vanilla 0.10
NDefines.NMilitary.LAND_AIR_COMBAT_MAX_PLANES_PER_ENEMY_WIDTH = 2  -- vanilla 3

-- Attrition: lighter on equipment, doesn't affect battle pacing but helps campaign sustainability
NDefines.NMilitary.ATTRITION_EQUIPMENT_LOSS_CHANCE = 0.003  -- vanilla 0.005
NDefines.NSupply.TRUCK_ATTRITION = 0.002 
                   -- vanilla 0.003

	
NDefines.NAir.AIR_WING_MAX_STATS_DEFENCE = 200
NDefines.NAir.AIR_WING_MAX_STATS_AGILITY = 200
NDefines.NAir.AIR_WING_MAX_STATS_SPEED = 950
NDefines.NAir.AIR_WING_MAX_STATS_BOMBING = 300
NDefines.NAir.BIGGEST_SPEED_FACTOR_DIFF = 5.0
NDefines.NAir.COMBAT_BETTER_AGILITY_DAMAGE_REDUCTION = 0.65

NDefines.NAir.BOMBING_DAMAGE_EXPERIENCE_SCALE = 0.0002
NDefines.NAir.WAR_SCORE_STRATEGIC_BOMBING_FACTOR = 0.1
--NDefines.NAir.AIR_WING_XP_AIR_VS_AIR_COMBAT_GAIN = 1.5
--NDefines.NAir.AIR_WING_XP_GROUND_MISSION_COMPLETED_GAIN = 1.2
--NDefines.NAir.AIR_WING_XP_RECON_MISSION_COMPLETED_GAIN = 0.09

NDefines.NMilitary.PARACHUTE_PENALTY_RANDOMNESS = 0.07
NDefines.NMilitary.PARADROP_PENALTY = -0.3
NDefines.NMilitary.PARADROP_HOURS = 24
NDefines.NMilitary.PARACHUTE_ORG_REGAIN_PENALTY_DURATION = 60
NDefines.NMilitary.PARACHUTE_ORG_REGAIN_PENALTY_MULT = -0.6