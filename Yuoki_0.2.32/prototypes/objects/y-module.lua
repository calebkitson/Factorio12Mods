data:extend(
{
	-- recipes
	{
		type = "recipe",
		name = "y-speed-module-1-recipe",
		energy_required = 3.0, enabled = "true",
		ingredients = {{"y-chip-1", 2}, {"copper-plate",2}, {"iron-plate", 1}}, 
		result = "y-speed-module-1",
		result_count = 1,
		order = "m-a",
	},	
	-- items
	{
		type = "module",
		name = "y-speed-module-1",
		icon = "__Yuoki__/graphics/icons/speed-module-1.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y-module",
		order = "m-a",
		stack_size = 50,
		default_request_amount = 10,
		effect = { speed = {bonus = 0.25}, consumption = {bonus = 0.6}}
	},
	-- recipes
	{
		type = "recipe",
		name = "y-speed-module-2-recipe",
		energy_required = 3.0, enabled = "true",
		ingredients = {{"y-chip-2", 2}, {"copper-plate",2}, {"iron-plate", 1}}, 
		result = "y-speed-module-2",
		result_count = 1,
		order = "m-a",
	},	
	-- items
	{
		type = "module",
		name = "y-speed-module-2",
		icon = "__Yuoki__/graphics/icons/speed-module-2.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y-module",
		order = "m-a[speed-module-2]",
		stack_size = 50,
		default_request_amount = 10,
		effect = { speed = {bonus = 0.4}, consumption = {bonus = 0.75}}
	},

	-- greens
	{
		type = "recipe",
		name = "y-green-module-1-recipe",
		energy_required = 3.0, enabled = "true",
		ingredients = {{"y-chip-1", 2}, {"copper-plate",2}, {"iron-plate", 1}}, 
		result = "y-green-module-1",
		result_count = 1,
		order = "m-b",
	},		
	{
		type = "module",
		name = "y-green-module-1",
		icon = "__Yuoki__/graphics/icons/green-module-1.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y-module",
		order = "m-b[green-module-1]",
		stack_size = 50,
		default_request_amount = 10,
		effect = { consumption = {bonus = -0.25}},
		limitation = production	
	},
	
	-- pinks
	{
		type = "recipe",
		name = "y-pink-module-1-recipe",
		energy_required = 3.0, enabled = "true",
		ingredients = {{"y-chip-1", 2}, {"copper-plate",2}, {"iron-plate", 1}}, 
		result = "y-pink-module-1",
		result_count = 1,
		order = "m-c",
	},		
	{
		type = "module",
		name = "y-pink-module-1",
		icon = "__Yuoki__/graphics/icons/pink-module-1.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y-module",
		order = "m-c[pink-module-1]",
		stack_size = 50,
		default_request_amount = 10,
		effect = { productivity = {bonus = 0.05}, consumption = {bonus = 0.3}, pollution = {bonus = 0.1}, speed = {bonus = -0.1}},
		limitation = productivitymodulelimitation(),
		limitation_message_key = "production-module-usable-only-on-intermeidates"
	},
	
	-- orginale
	--[[
	{
		type = "module",
		name = "speed-module",
		icon = "__base__/graphics/icons/speed-module.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "module",
		order = "a[speed]-a[speed-module-1]",
		stack_size = 50,
		effect = { speed = {bonus = 0.2}, consumption = {bonus = 0.5}}
	},
	{
		type = "module",
		name = "speed-module-2",
		icon = "__base__/graphics/icons/speed-module-2.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "module",
		order = "a[speed]-b[speed-module-2]",
		stack_size = 50,
		effect = { speed = {bonus = 0.3}, consumption = {bonus = 0.6}}
	},
	{
		type = "module",
		name = "speed-module-3",
		icon = "__base__/graphics/icons/speed-module-3.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "module",
		order = "a[speed]-c[speed-module-3]",
		stack_size = 50,
		effect = { speed = {bonus = 0.5}, consumption = {bonus = 0.7}}
	},
	
	{
		type = "module",
		name = "effectivity-module",
		icon = "__base__/graphics/icons/effectivity-module.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "module",
		order = "c[effectivity]-a[effectivity-module-1]",
		stack_size = 50,
		default_request_amount = 10,
		effect = { consumption = {bonus = -0.3}},
		limitation = production
	},
	{
		type = "module",
		name = "productivity-module",
		icon = "__base__/graphics/icons/productivity-module.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "module",
		order = "c[productivity]-a[productivity-module-1]",
		stack_size = 50,
		default_request_amount = 10,
		effect = { productivity = {bonus = 0.04}, consumption = {bonus = 0.4}, pollution = {bonus = 0.3}, speed = {bonus = -0.15}},
		limitation = productivitymodulelimitation(),
		limitation_message_key = "production-module-usable-only-on-intermeidates"
	},
	
	]]

})