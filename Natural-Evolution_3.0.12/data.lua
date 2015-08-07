NEConfig = {}

require "config"
require "scripts.detectmod" --Detect supported Mods, currently DyTechWar and Bob's Enemies

require("prototypes.item")
require("prototypes.recipe")
require("prototypes.entity")
require("prototypes.technology")

---------------------------------------------------------------
---------------------------------------------------------------




---- Biter & Spitter Modifications --------------------------------
if NEConfig.BiterSpitter then
	
-- Vanilla Unit Adjustments
data.raw["unit"]["medium-biter"].pollution_to_join_attack = 800
data.raw["unit"]["big-biter"].pollution_to_join_attack = 1000
data.raw["unit"]["behemoth-biter"].pollution_to_join_attack = 2500


data.raw["unit"]["big-spitter"].pollution_to_join_attack = 1200
data.raw["unit"]["behemoth-spitter"].pollution_to_join_attack = 5000


-- Bob's Enemies Modifications
	if NEConfig.mod.BobEnemies then

		data.raw["unit"]["bob-bigger-biter"].pollution_to_join_attack = 1000
		data.raw["unit"]["bob-biggest-biter"].pollution_to_join_attack = 2500
		data.raw["unit"]["bob-fire-biter"].pollution_to_join_attack = 5000
		data.raw["unit"]["bob-bigger-spitter"].pollution_to_join_attack = 1000
		data.raw["unit"]["bob-biggest-spitter"].pollution_to_join_attack = 2500
		data.raw["unit"]["bob-poison-spitter"].pollution_to_join_attack = 5000

	end
	
	--[[
-- DyTechWar Modifications
	if NEConfig.mod.DyTechWar then
	
		data.raw["unit"]["berserk-biter"].pollution_to_join_attack = 1000
		data.raw["unit"]["elder-biter"].pollution_to_join_attack = 2500
		data.raw["unit"]["king-biter"].pollution_to_join_attack = 5000
		data.raw["unit"]["queen-biter"].pollution_to_join_attack = 5000
		data.raw["unit"]["berserk-spitter"].pollution_to_join_attack = 1000
		data.raw["unit"]["elder-spitter"].pollution_to_join_attack = 2500
		data.raw["unit"]["king-spitter"].pollution_to_join_attack = 5000
		data.raw["unit"]["queen-spitter"].pollution_to_join_attack = 5000

	end
		]]
end
---- END Biter & Spitter Modifications --------------------------------