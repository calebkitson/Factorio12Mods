NEConfig = {}

require "config"
require "scripts.detectmod" --Detect supported Mods, currently DyTechWar and Bob's Enemies



---- Evolution Modifications ----------------------------------
if NEConfig.EvolutionFactor then
 	if NEConfig.mod.DyTechWar and NEConfig.DyTechWar_Evo_override then
		-- TIME: Only 75% of vanilla
		-- percentual increase in the evolve factor for every second (60 ticks). Default = 0.000004
		data.raw["map-settings"]["map-settings"]["enemy_evolution"].time_factor = 0.000003

		-- POLLUTION: Three times the vanilla Pollution Evolution, so don't pollute!
		-- percentual increase in the evolve factor for 1000 PU. Default = 0.000015          
		data.raw["map-settings"]["map-settings"]["enemy_evolution"].pollution_factor = 0.000045

		-- KILLING EMENY SPAWNERS: 75% less Evolution increase for killing Enemy Spawners
		-- percentual increase in the evolve factor for every destroyed spawner. Default = 0.002
		data.raw["map-settings"]["map-settings"]["enemy_evolution"].destroy_factor = 0.0005

	end
end
---- END Evolution Modifications ----------------------------------



---- Spawner Modifications ----------------------------------------
if NEConfig.Spawners then
	
	-- If you're using DyTech, I will not adjust the values of the Spawners, but use DyTech's values.
	if not NEConfig.mod.DyTechWar then
		
	-- Biter Spawner Adjustments
		data.raw["unit-spawner"]["biter-spawner"].max_count_of_owned_units = 30
		data.raw["unit-spawner"]["biter-spawner"].max_friends_around_to_spawn = 20
		data.raw["unit-spawner"]["biter-spawner"].spawning_cooldown = {500, 150}
		data.raw["unit-spawner"]["biter-spawner"].max_health = 2500
		data.raw["unit-spawner"]["biter-spawner"].spawning_radius = 25
		data.raw["unit-spawner"]["biter-spawner"].spawning_spacing = 2
		data.raw["unit-spawner"]["biter-spawner"].max_spawn_shift = 0.65
		--data.raw["unit-spawner"]["biter-spawner"].pollution_cooldown = 8

		-- Spitter Spawner Adjustments
		data.raw["unit-spawner"]["spitter-spawner"].max_count_of_owned_units = 20
		data.raw["unit-spawner"]["spitter-spawner"].max_friends_around_to_spawn = 15
		data.raw["unit-spawner"]["spitter-spawner"].spawning_cooldown = {600, 180}
		data.raw["unit-spawner"]["spitter-spawner"].max_health = 3500
		data.raw["unit-spawner"]["spitter-spawner"].spawning_radius = 20
		data.raw["unit-spawner"]["spitter-spawner"].spawning_spacing = 2
		data.raw["unit-spawner"]["spitter-spawner"].max_spawn_shift = 0.65
		--data.raw["unit-spawner"]["spitter-spawner"].pollution_cooldown = 8

	end
	-- Bob's Enemies Modifications
	if NEConfig.mod.BobEnemies and NEConfig.mod.DyTechWar then

	-- Bob's Biter Spawner Adjustments
	data.raw["unit-spawner"]["bob-biter-spawner"].max_count_of_owned_units = data.raw["unit-spawner"]["biter-spawner"].max_count_of_owned_units
	data.raw["unit-spawner"]["bob-biter-spawner"].max_friends_around_to_spawn = data.raw["unit-spawner"]["biter-spawner"].max_friends_around_to_spawn
	data.raw["unit-spawner"]["bob-biter-spawner"].spawning_cooldown = data.raw["unit-spawner"]["biter-spawner"].spawning_cooldown
	data.raw["unit-spawner"]["bob-biter-spawner"].max_health = data.raw["unit-spawner"]["biter-spawner"].max_health
	data.raw["unit-spawner"]["bob-biter-spawner"].spawning_radius = data.raw["unit-spawner"]["biter-spawner"].spawning_radius
	data.raw["unit-spawner"]["bob-biter-spawner"].spawning_spacing = data.raw["unit-spawner"]["biter-spawner"].spawning_spacing
	data.raw["unit-spawner"]["bob-biter-spawner"].max_spawn_shift = data.raw["unit-spawner"]["biter-spawner"].max_spawn_shift
	data.raw["unit-spawner"]["bob-biter-spawner"].pollution_absorbtion_proportional = data.raw["unit-spawner"]["biter-spawner"].pollution_absorbtion_proportional
	data.raw["unit-spawner"]["bob-biter-spawner"].pollution_absorbtion_absolute = data.raw["unit-spawner"]["biter-spawner"].pollution_absorbtion_absolute
	--data.raw["unit-spawner"]["bob-biter-spawner"].pollution_cooldown = data.raw["unit-spawner"]["biter-spawner"].pollution_cooldown

	-- Bob's Spitter Spawner Adjustments
	data.raw["unit-spawner"]["bob-spitter-spawner"].max_count_of_owned_units = data.raw["unit-spawner"]["spitter-spawner"].max_count_of_owned_units
	data.raw["unit-spawner"]["bob-spitter-spawner"].max_friends_around_to_spawn = data.raw["unit-spawner"]["spitter-spawner"].max_friends_around_to_spawn
	data.raw["unit-spawner"]["bob-spitter-spawner"].spawning_cooldown = data.raw["unit-spawner"]["spitter-spawner"].spawning_cooldown
	data.raw["unit-spawner"]["bob-spitter-spawner"].max_health = data.raw["unit-spawner"]["spitter-spawner"].max_health
	data.raw["unit-spawner"]["bob-spitter-spawner"].spawning_radius = data.raw["unit-spawner"]["spitter-spawner"].spawning_radius
	data.raw["unit-spawner"]["bob-spitter-spawner"].spawning_spacing = data.raw["unit-spawner"]["spitter-spawner"].spawning_spacing
	data.raw["unit-spawner"]["bob-spitter-spawner"].max_spawn_shift = data.raw["unit-spawner"]["spitter-spawner"].max_spawn_shift
	data.raw["unit-spawner"]["bob-spitter-spawner"].pollution_absorbtion_proportional = data.raw["unit-spawner"]["spitter-spawner"].pollution_absorbtion_proportional
	data.raw["unit-spawner"]["bob-spitter-spawner"].pollution_absorbtion_absolute = data.raw["unit-spawner"]["spitter-spawner"].pollution_absorbtion_absolute
	--data.raw["unit-spawner"]["bob-spitter-spawner"].pollution_cooldown = data.raw["unit-spawner"]["spitter-spawner"].pollution_cooldown

	
	
	elseif NEConfig.mod.BobEnemies and not NEConfig.mod.DyTechWar then

	-- Bob's Biter Spawner Adjustments
	data.raw["unit-spawner"]["bob-biter-spawner"].max_count_of_owned_units = 30
	data.raw["unit-spawner"]["bob-biter-spawner"].max_friends_around_to_spawn = 20
	data.raw["unit-spawner"]["bob-biter-spawner"].spawning_cooldown = {500, 150}
	data.raw["unit-spawner"]["bob-biter-spawner"].max_health = 2500
	data.raw["unit-spawner"]["bob-biter-spawner"].spawning_radius = 25
	data.raw["unit-spawner"]["bob-biter-spawner"].spawning_spacing = 2
	data.raw["unit-spawner"]["bob-biter-spawner"].max_spawn_shift = 0.65
	--data.raw["unit-spawner"]["bob-biter-spawner"].pollution_cooldown = 8

	-- Bob's Spitter Spawner Adjustments
	data.raw["unit-spawner"]["bob-spitter-spawner"].max_count_of_owned_units = 20
	data.raw["unit-spawner"]["bob-spitter-spawner"].max_friends_around_to_spawn = 15
	data.raw["unit-spawner"]["bob-spitter-spawner"].spawning_cooldown = {600, 180}
	data.raw["unit-spawner"]["bob-spitter-spawner"].max_health = 3500
	data.raw["unit-spawner"]["bob-spitter-spawner"].spawning_radius = 20
	data.raw["unit-spawner"]["bob-spitter-spawner"].spawning_spacing = 2
	data.raw["unit-spawner"]["bob-spitter-spawner"].max_spawn_shift = 0.65
	--data.raw["unit-spawner"]["bob-spitter-spawner"].pollution_cooldown = 8

	end

end
---- END Spawner Modifications ----------------------------------------
