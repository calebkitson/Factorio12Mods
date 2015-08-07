
--automatically generated file | fMT-Export (c)YT v0.03-215Jul17 

data:extend({

    --no longer used
    {
	type = "fluid", 
	name = "y-heated-air", 
	icon = "__yi_engines__/graphics/hot-air.png", 
	default_temperature = 30, 
	max_temperature = 380, 
	heat_capacity = "750J", 
	base_color = { r=1.0, g=1.0, b=1.0 }, 
	flow_color = { r=1.0, g=1.0, b=1.0 }, 
	pressure_to_speed_ratio = 0.200, 
	flow_to_energy_ratio = 0.200, 
	order = "a", 
	subgroup = "yie-fluids", 
    },
    --mechanical force
    {
	type = "fluid", 
	name = "y-mechanical-force", 
	icon = "__yi_engines__/graphics/mf-1.png", 
	default_temperature = 15, 
	max_temperature = 500, 
	heat_capacity = "10KJ", 
	base_color = { r=1.0, g=1.0, b=1.0 }, 
	flow_color = { r=1.0, g=1.0, b=1.0 }, 
	pressure_to_speed_ratio = 0.125, 
	flow_to_energy_ratio = 0.025, 
	order = "a", 
	subgroup = "yie-parts", 
    },
    --yie corn-oil
    {
	type = "fluid", 
	name = "ye_cornoil", 
	icon = "__yi_engines__/graphics/steam-low.png", 
	default_temperature = 25, 
	max_temperature = 90, 
	heat_capacity = "2KJ", 
	base_color = { r=0.5, g=0.5, b=0.8 }, 
	flow_color = { r=0.5, g=0.6, b=0.7 }, 
	pressure_to_speed_ratio = 0.600, 
	flow_to_energy_ratio = 0.800, 
	order = "a-a", 
	subgroup = "yie-fluids", 
    },
    --275iger steam
    {
	type = "fluid", 
	name = "ye_steam", 
	icon = "__yi_engines__/graphics/steam-275.png", 
	default_temperature = 110, 
	max_temperature = 375, 
	heat_capacity = "400J", 
	base_color = { r=0.6, g=0.7, b=0.7 }, 
	flow_color = { r=0.7, g=0.85, b=0.85 }, 
	pressure_to_speed_ratio = 0.400, 
	flow_to_energy_ratio = 0.600, 
	order = "a", 
	subgroup = "yie-fluids", 
    },
    --mechanical force / hydraulic fluid
    {
	type = "fluid", 
	name = "yie_hydraulic", 
	icon = "__yi_engines__/graphics/hydraulik-fluid.png", 
	default_temperature = 15, 
	max_temperature = 500, 
	heat_capacity = "10KJ", 
	base_color = { r=1.0, g=1.0, b=1.0 }, 
	flow_color = { r=1.0, g=1.0, b=1.0 }, 
	pressure_to_speed_ratio = 0.500, 
	flow_to_energy_ratio = 0.500, 
	order = "f1", 
	subgroup = "yie-fluids", 
    },

})