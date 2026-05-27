--------------------------------------------------------------------------------------------------------------
-- COUNTRY, COMMAND POWER & STRATEGIC WEIGHTS
--------------------------------------------------------------------------------------------------------------
NDefines.NCountry.BASE_COMMAND_POWER_GAIN = 0.5
NDefines.NCountry.BASE_MAX_COMMAND_POWER = 100

-- Special forces: broader elite force availability without making every army special forces-heavy.
NDefines.NCountry.SPECIAL_FORCES_CAP_MIN = 36
NDefines.NCountry.SPECIAL_FORCES_CAP_BASE = 0.05

-- Air supply: useful for emergency support, not a replacement for rail and truck logistics.
NDefines.NCountry.AIR_SUPPLY_CONVERSION_SCALE = 0.075

--------------------------------------------------------------------------------------------------------------
-- MILITARY EXPERIENCE, TRAINING & DIVISION DESIGN
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.BASE_DIVISION_BRIGADE_GROUP_COST = 16
NDefines.NMilitary.BASE_DIVISION_BRIGADE_CHANGE_COST = 4
NDefines.NMilitary.BASE_DIVISION_SUPPORT_SLOT_COST = 8

NDefines.NMilitary.MAX_ARMY_EXPERIENCE = 950
NDefines.NMilitary.MAX_NAVY_EXPERIENCE = 950
NDefines.NMilitary.MAX_AIR_EXPERIENCE = 950

NDefines.NMilitary.ARMY_LEADER_XP_GAIN_PER_UNIT_IN_COMBAT = 0.12

NDefines.NMilitary.TRAINING_MAX_DAILY_COUNTRY_EXP = 0.12
NDefines.NMilitary.UNIT_EXPERIENCE_PER_TRAINING_DAY = 0.002
NDefines.NMilitary.TRAINING_ATTRITION = 0.03
NDefines.NMilitary.TRAINING_MIN_STRENGTH = 0.2

--------------------------------------------------------------------------------------------------------------
-- DIG-IN & DEFENSIVE PREPARATION
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.DIG_IN_FACTOR = 0.02
NDefines.NMilitary.UNIT_DIGIN_CAP = 7.5
NDefines.NMilitary.UNIT_DIGIN_SPEED = 1.5

--------------------------------------------------------------------------------------------------------------
-- LAND COMBAT: CORE FLOW
--------------------------------------------------------------------------------------------------------------
-- Recon has a stronger impact on tactics and battlefield initiative.
NDefines.NMilitary.RECON_SKILL_IMPACT = 10

-- Damage is less concentrated on a single first target, making battles feel less binary.
NDefines.NMilitary.DAMAGE_SPLIT_ON_FIRST_TARGET = 0.60

-- Limits effective enemy engagement per friendly width, reducing perfect target saturation.
NDefines.NMilitary.ENGAGEMENT_WIDTH_PER_WIDTH = 1.5

-- Earlier but smoother stacking penalties discourage over-concentration without breaking normal fronts.
NDefines.NMilitary.COMBAT_STACKING_START = 8
NDefines.NMilitary.COMBAT_STACKING_EXTRA = 4
NDefines.NMilitary.COMBAT_STACKING_PENALTY = -0.05

-- More committed attacks and less attack-cancel abuse.
NDefines.NMilitary.COMBAT_VALUE_ORG_IMPORTANCE = 1.3

-- Reserves are useful, but not perfectly reliable.
NDefines.NMilitary.REINFORCE_CHANCE = 0.04

-- Maneuver and operational pressure.
NDefines.NMilitary.ENCIRCLED_PENALTY = -0.35
NDefines.NMilitary.HOURLY_ORG_MOVEMENT_IMPACT = -0.10
NDefines.NMilitary.WITHDRAWING_SPEED_FACTOR = 0.20

-- Width abuse control.
NDefines.NMilitary.COMBAT_OVER_WIDTH_PENALTY = -0.50
NDefines.NMilitary.COMBAT_OVER_WIDTH_PENALTY_MAX = -0.50

--------------------------------------------------------------------------------------------------------------
-- LAND COMBAT: DAMAGE, CASUALTIES & COLLAPSE BEHAVIOR
--------------------------------------------------------------------------------------------------------------
-- Slightly longer battles than vanilla while keeping offensive outcomes decisive.
NDefines.NMilitary.LAND_COMBAT_STR_DAMAGE_MODIFIER = 0.055
NDefines.NMilitary.LAND_COMBAT_ORG_DAMAGE_MODIFIER = 0.045

-- Tighter organization variance reduces extreme random collapses.
NDefines.NMilitary.LAND_COMBAT_ORG_DICE_SIZE = 3
NDefines.NMilitary.LAND_COMBAT_STR_DICE_SIZE = 2

-- Armor advantage remains valuable but less overwhelming.
NDefines.NMilitary.LAND_COMBAT_ORG_ARMOR_ON_SOFT_DICE_SIZE = 5
NDefines.NMilitary.LAND_COMBAT_STR_ARMOR_ON_SOFT_DICE_SIZE = 2

-- Equipment recovery and capture: more realistic battlefield salvage and post-battle capture.
NDefines.NMilitary.EQUIPMENT_COMBAT_LOSS_FACTOR = 0.5
NDefines.NMilitary.RELIABILTY_RECOVERY = 0.50
NDefines.NMilitary.BASE_CAPTURE_EQUIPMENT_RATIO = 0.15

--------------------------------------------------------------------------------------------------------------
-- ARMOR & PIERCING
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.PIERCING_THRESHOLDS = {                                            -- Our piercing / their armor must be this value to deal damage fraction equal to the index in the array below [higher number = higher penetration]. If armor is 0, 1.00 will be returned.
    1.0,
    0.9,
    0.8,
    0.7,
    0.6,
    0.5,
    0.4,
	0.3,
	0.2,
	0.1,
    0.0, --there isn't much point setting this higher than 0
}

NDefines.NMilitary.PIERCING_THRESHOLD_DAMAGE_VALUES = {                                -- 0 armor will always receive maximum damage (so add overmatching at your own peril). the system expects at least 2 values, with no upper limit.
    1.0,
    0.9,
    0.8,
    0.7,
    0.6,
    0.5,
    0.4,
	0.3,
	0.2,
	0.2,
    0.2,
}

NDefines.NMilitary.ARMOR_VS_AVERAGE = 0.4
NDefines.NMilitary.PEN_VS_AVERAGE = 0.4
NDefines.NMilitary.LAND_COMBAT_STR_ARMOR_DEFLECTION_FACTOR = 0.0
NDefines.NMilitary.LAND_COMBAT_ORG_ARMOR_DEFLECTION_FACTOR = 0.0

--------------------------------------------------------------------------------------------------------------
-- TERRAIN, RIVERS & FORTS
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.RIVER_CROSSING_PENALTY_LARGE = -0.60
NDefines.NMilitary.RIVER_CROSSING_SPEED_PENALTY = -0.30
NDefines.NMilitary.RIVER_CROSSING_SPEED_PENALTY_LARGE = -0.60
NDefines.NMilitary.BASE_FORT_PENALTY = -0.20

--------------------------------------------------------------------------------------------------------------
-- SUPPLY, LOGISTICS & ATTRITION
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.MIN_SUPPLY_CONSUMPTION = 0.03

-- Supply should decide campaigns. Deep operations need rail, truck, and fuel support.
NDefines.NMilitary.SUPPLY_GRACE = 96
NDefines.NMilitary.SUPPLY_ORG_MAX_CAP = 0.6

-- Attrition is sustainable but still punishes bad logistics and bad terrain.
NDefines.NMilitary.ATTRITION_EQUIPMENT_LOSS_CHANCE = 0.003
NDefines.NSupply.TRUCK_ATTRITION = 0.002

--------------------------------------------------------------------------------------------------------------
-- AIR COMBAT & CLOSE AIR SUPPORT
--------------------------------------------------------------------------------------------------------------
NDefines.NAir.AIR_WING_FLIGHT_SPEED_MULT = 0.03

NDefines.NAir.BIGGEST_AGILITY_FACTOR_DIFF = 5.0
NDefines.NAir.BIGGEST_SPEED_FACTOR_DIFF = 5.0
NDefines.NAir.COMBAT_BETTER_AGILITY_DAMAGE_REDUCTION = 0.65
NDefines.NAir.AIR_WING_COUNTRY_XP_FROM_TRAINING_FACTOR = 0.0075

-- Stronger anti-air relevance against sustained air operations.
NDefines.NAir.ANTI_AIR_PLANE_DAMAGE_CHANCE = 0.05
NDefines.NAir.ANTI_AIR_PLANE_DAMAGE_FACTOR = 0.4

-- Night CAS remains useful but clearly weaker.
NDefines.NAir.CAS_NIGHT_ATTACK_FACTOR = 0.25

-- CAS supports land combat without deciding battles alone.
NDefines.NMilitary.LAND_AIR_COMBAT_STR_DAMAGE_MODIFIER = 0.03 -- 0.035
NDefines.NMilitary.LAND_AIR_COMBAT_ORG_DAMAGE_MODIFIER = 0.03 -- 0.035
NDefines.NMilitary.LAND_AIR_COMBAT_MAX_PLANES_PER_ENEMY_WIDTH = 2 -- 3

--------------------------------------------------------------------------------------------------------------
-- STRATEGIC & LOGISTICS BOMBING
--------------------------------------------------------------------------------------------------------------
NDefines.NAir.AIR_WING_BOMB_DAMAGE_FACTOR = 7.5
NDefines.NAir.BOMBING_TARGETING_RANDOM_FACTOR = 0.15

NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRUCK_DAMAGE_FACTOR = 0.4
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRAIN_DAMAGE_FACTOR = 0.06

NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_SHIP_CHANCE = 0.20
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_SHIP_DAMAGE_FACTOR = 50
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_CHANCE = 0.65
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_DAMAGE_FACTOR = 50

NDefines.NAir.AA_INDUSTRY_AIR_DAMAGE_FACTOR = -0.08
NDefines.NAir.DETECT_CHANCE_FROM_NIGHT = -0.5
NDefines.NAir.BOMBING_DAMAGE_EXPERIENCE_SCALE = 0.0002
NDefines.NAir.WAR_SCORE_STRATEGIC_BOMBING_FACTOR = 0.1

--------------------------------------------------------------------------------------------------------------
-- PARATROOPERS & AIRBORNE OPERATIONS
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.PARACHUTE_PENALTY_RANDOMNESS = 0.07
NDefines.NMilitary.PARADROP_PENALTY = -0.30
NDefines.NMilitary.PARADROP_HOURS = 24
NDefines.NMilitary.PARACHUTE_ORG_REGAIN_PENALTY_DURATION = 60
NDefines.NMilitary.PARACHUTE_ORG_REGAIN_PENALTY_MULT = -0.60
