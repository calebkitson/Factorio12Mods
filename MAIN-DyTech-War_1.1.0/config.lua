-- Welcome to the config file of DyTech-War!
-- Here you can switch any module on or off!
-- The general rule is: TRUE is on, FALSE is off!

--[[ Difficulty ]]
Difficulty = 2
-- Difficulty 1 = EASY
-- Difficulty 2 = MEDIUM (difficulty of old DyTech!)
-- Difficulty 3 = HARD
-- Difficulty 4 = INSANE
-- Difficulty 5 = EXTREME DEATH MODE (How long can you last? :D )
-- Input anything other then those 5 numbers will result in an error at start of game!

--[[ Toggles ]]--

--[[ Enemies ]]--
-- Here you can disable or enable the enemies.
-- Base edit means the change in the spawners, to make them stronger!
EnemiesBaseEdit = true
Biters = true
Spitters = true
Dyzilla_Spawner = false
-- CAREFULL!!! Dyzilla spawner is incredible HARD, even on easy difficulty!

--[[ Weapons and Ammo ]]--
-- Here are all forms of weapons and ammo!
Ammo = true
SpecialAmmo = true
SniperRifle = true
LaserWeapons = true
Tanks = true
Equipment = true
Armor = true
Experimental_Feature = false
-- NOTE: Sniper Rifle and Laser Weapons REQUIRES Ammo to be enabled!!!!!
-- NOTE: Tanks REQUIRES Laser Rifle to be enabled!!!!!
-- NOTE: SpecialAmmo REQUIRES the following to be active: PoisonCapsules, AcidCapsules, NapalmCapsules, RadiationCapsules, SlowdownCapsules, Ammo, GunTurret, SniperRifle!!!!
-- NOTE: Experimental Feature currently contains collisions for projectiles! ALL OF THEM! this is however, highly experimental, and might break your turrets behind the walls! Enable on your own risk!

--[[ Capsules ]]--
-- Here are all different Capsules:
CombatRobots = true
PoisonCapsules = true
AcidCapsules = true
NapalmCapsules = true
RadiationCapsules = true
SlowdownCapsules = true
Grenades = true

--[[ Defences ]]--
-- Here you can find all kinds of defensive items!
GunTurret = true
FlameThrowerTurret = true
LaserTurret = true
Walls = true
Gates = true
-- NOTE: Gun Turret REQUIRES Sniper Rifle to be enabled!!!!!
-- NOTE: Gates REQUIRES Walls to be enabled!!!!!

-- [[ General Config Options ]]--

--[[ Enemies Health ]]--
Berserker_Health = 1000 --Default = 1000
Elder_Health = 750 --Default = 750
King_Health = 5000 --Default = 5000
Queen_Health = 1000 --Default = 1000
Biter_Modifier = 1.5
-- Biter Modifier is an option to have Biters have more health then Spitters. Default = 1.5 times the health of the Spitters! (so 50% more!)

Evolution_Reduced = true
-- This will halve the evolution factors, meaning you have twice as long till stronger enemies appear. This is leveled by difficulty