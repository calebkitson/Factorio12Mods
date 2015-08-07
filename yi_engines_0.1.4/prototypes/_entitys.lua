data:extend({

	-- farming		
	{
		type = "assembling-machine",
		name = "ye_farm",
		icon = "__yi_engines__/graphics/entity/farm-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_farm"},
		max_health = 250,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			--[[
			{
				production_type = "output",
				base_area = 1,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {1.5, 0.5}},										
				}
			},
			]]			
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {2,-3}},								
				}
			},							
		},
		collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			north = { filename = "__yi_engines__/graphics/entity/farm-sheet-ns.png", width = 192, height = 192, shift = {0.44, -0.22}, frame_count = 16, line_length = 4, animation_speed=0.01, },						
			east = { filename = "__yi_engines__/graphics/entity/farm-sheet-ew.png", width = 192, height = 192, shift = {0.19, -0.34}, frame_count = 16, line_length = 4, animation_speed=0.01, }	,					
			south = { filename = "__yi_engines__/graphics/entity/farm-sheet-ns.png", width = 192, height = 192, shift = {0.44, -0.22}, frame_count = 16, line_length = 4, animation_speed=0.01, },						
			west = { filename = "__yi_engines__/graphics/entity/farm-sheet-ew.png", width = 192, height = 192, shift = {0.19, -0.34}, frame_count = 16, line_length = 4, animation_speed=0.01, }	,					
		},		
		crafting_categories = {"yrcat-farm"},
		crafting_speed = 1.0,
		
		energy_source = {		
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.1, 
		},
		energy_usage = "50kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "yie-engines",
	},
	
	-- mechanical water pump				
	{
		type = "assembling-machine",
		name = "y-mwater-pump",
		icon = "__yi_engines__/graphics/entity/pump-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-mwater-pump"},
		max_health = 150,
		corpse = "medium-remnants",
		--resistances = {{type = "physical",percent = 60},},
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 1,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {1.5, 0.5}},										
				}
			},										
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {-0.5, -1.5}},								
				}
			},							
		},
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			north = { 	filename = "__yi_engines__/graphics/entity/pump_nna_s.png",			
						width = 128, height = 128, shift = {0.34, 0.53}, frame_count = 16, line_length = 16, },	
			south = {	filename = "__yi_engines__/graphics/entity/pump_sna_s.png",			
						width = 128, height = 128, shift = {0.47, 0.22}, frame_count = 16, line_length = 16, },	
			east = {	filename = "__yi_engines__/graphics/entity/pump_ena_s.png",			
						width = 128, height = 128, shift = {0.28, 0.31}, frame_count = 16, line_length = 16, },	
			west = {	filename = "__yi_engines__/graphics/entity/pump_wna_s.png",			
						width = 128, height = 128, shift = {0.47, 0.47}, frame_count = 16, line_length = 16, },										
		},		
		crafting_categories = {"yrcat-pump"},
		crafting_speed = 1.0,
		
		energy_source = {		
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.1, 
		},
		energy_usage = "100W",						
		ingredient_count = 1,
		order="a",
		subgroup = "yie-engines",
	},			

})