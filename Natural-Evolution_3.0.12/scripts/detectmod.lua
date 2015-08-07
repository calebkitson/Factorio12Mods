-----------------------
--Cross Mod Detection--
-----------------------
NEConfig.mod = {}

--Detect DyTechWar
if data.raw["unit"]["young-berserk-biter"] ~= nil and data.raw["unit"]["young-berserk-spitter"] ~= nil then
	NEConfig.mod.DyTechWar=true
else 
	NEConfig.mod.DyTechWar=false
end

--Detect Bob's Enemies
if data.raw["unit"]["bob-bigger-biter"] ~= nil and data.raw["unit"]["bob-bigger-spitter"] ~= nil then
	NEConfig.mod.BobEnemies=true
else 
	NEConfig.mod.BobEnemies=false
end