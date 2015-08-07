local NE = NEConfig
--[[---------------------------------------------------------------------------
------------------------------------- Credits ---------------------------------
-------------------------------------------------------------------------------

L0771 - For his help given to me to start this MOD.
AlyxDeLunar - For his MOD Dynamic Expansion that I’ve used in my MOD.
Albatrosv13 - For his MOD Alien Temple that I’ve used in my MOD
FreeER - For his MOD Mind Control that I’ve used in my MOD
ThaPear, SpeedyBrain, Semvoz & Orzelek  - Coding help!


---------------------------------------------------------------------------
---------------------------------------------------------------------------
------------------------ On / Off Toggles ---------------------------------
---------------------------------------------------------------------------
--- true = On / Yes
--- false = Off / No
---------------------------------------------------------------------------]]



NE.EvolutionFactor = true 
-- Do you want to use the new Evolution rate settings of:
-- TIME: Only 75% of vanilla. From 0.000004 to 0.000003
-- POLLUTION: Triple the vanilla Pollution Evolution, so don't pollute! From 0.00003 to 0.000045
-- KILLING EMENY SPAWNERS: 25% of Vanilla increase for killing Enemy Spawners. From 0.002 to 0.0005
NE.DyTechWar_Evo_override = false
-- Will use DyTech Evolution Factor values and not Natural Evolution's values.
-- DyTech's values are linear, meaning at Difficulty 1 all 3 values are 1/4 of Vanilla and at Difficulty 5 they are 5x higher than vanilla's. 
-- N.E. on the other hand had a higher Pollution penalty, but lower Time and Killing Spawner values.


NE.Spawners = true 
-- Do you want tweaks made to the spawners - Mainly more units around the spawners 
-- More units around the spawners 
-- Vanilla Spawners will be higher than currently.
-- Bob's be higher and will be be adjusted to match DyTech's it you're playing with DyTech
-- Currently not adjusting DyTech, until tested a little more 


NE.BiterSpitter = true 
-- Do you want tweaks made to the games biter & spitters
-- Lower Pollution levels before attacking.


NE.Expansion = true 
-- Do you want this mod to manage biter/spitter expansion. 
-- A tiered approach that gets a lot more difficult at higher evolution rates.


-- To come in the next update....

--NE.NewBuildings = true 
-- Do you want be able to build a Alien Control & Terraforming Stations
-- The Alien Control Station has small a chance to convert biters and spitters to your side in a given radius.
-- The Terraforming Station monitors the environment and thus lowers the evolution factor. Each additional Terraforming station is less effective that the previous one.

NE.Spawner_Search_Distance = 30
NE.Unit_Search_Distance = 10
NE.Conversion_Difficulty = Hard  -- Easy , Normal or Hard
-- Spawner Conversion: Easy = 16.5% chance, Normal = 10%, Hard = 5%
-- Unit Conversion: Easy = 33% chance, Normal = 20%, Hard = 10%


----------------------------- END -------------------------------------------

NE.QCCode = false
-- Used for QC
-- Displays messages used for checking my code



