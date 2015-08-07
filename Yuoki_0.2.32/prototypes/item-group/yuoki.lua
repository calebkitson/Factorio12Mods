data:extend(
{
	
	{
		type = "item-group",
		name = "yuoki",		
		icon = "__Yuoki__/graphics/icons/yuoki-ind-icon.png",
		inventory_order = "y",
		order = "yi-a",		
	},

	{
		type = "item-group",
		name = "yuoki-energy",
		order = "yi-b",
		inventory_order = "y",
		icon = "__Yuoki__/graphics/icons/yuoki-energy.png",
	},
	{
		type = "item-group",
		name = "yuoki-atomics",
		order = "yi-c",
		inventory_order = "y",
		icon = "__Yuoki__/graphics/icons/yuoki-atomics-icon.png",
	},
		
	
	{ type = "item-subgroup", group = "yuoki", name = "y_floor", order = "a0", },
	{ type = "item-subgroup", group = "yuoki", name = "y-parts", order = "a1", },
	{ type = "item-subgroup", group = "yuoki", name = "y-tools", order = "a2", },
	{ type = "item-subgroup", group = "yuoki", name = "y-storage", order = "5-a", },
	{ type = "item-subgroup", group = "yuoki", name = "y-fluid-storage", order = "5-b", },

	
	{ type = "item-subgroup", group = "yuoki-energy", name = "y-fuel",  order = "a1", },	
	{ type = "item-subgroup", group = "yuoki-energy", name = "y-boiler",  order = "a2", },
	{ type = "item-subgroup", group = "yuoki-energy", name = "y-e-gens",  order = "a4", },
	{ type = "item-subgroup", group = "yuoki-energy", name = "y-module",  order = "a5", },

	{ type = "item-subgroup", group = "yuoki-atomics", name = "y-atomics-f", order = "1a", },  
	{ type = "item-subgroup", group = "yuoki-atomics", name = "y-atomics-r", order = "1b", },  
	{ type = "item-subgroup", group = "yuoki-atomics", name = "y-atomics", order = "1c", },  	-- compatibility
	
	{ type = "item-subgroup", group = "yuoki-atomics", name = "y-stargate-1",  order = "2-1", },  
	{ type = "item-subgroup", group = "yuoki-atomics", name = "y-stargate-2",  order = "2-2", },  
	{ type = "item-subgroup", group = "yuoki-atomics", name = "y-stargate-3",  order = "2-3", },  
	{ type = "item-subgroup", group = "yuoki-atomics", name = "y-stargate-4",  order = "2-4", },  
	{ type = "item-subgroup", group = "yuoki-atomics", name = "y-stargate-r",  order = "2-5", },  
	{ type = "item-subgroup", group = "yuoki-atomics", name = "y-stargate",  order = "2-5", },  -- compatibility	
	{ type = "item-subgroup", group = "yuoki-atomics", name = "y-stargate-f",  order = "2-6", }, -- fame
	
	{
		type = "item-subgroup",
		name = "y-lamps",
		group = "yuoki-energy",
		order = "2"
	},
	{
		type = "item-subgroup",
		name = "y-fluid",
		group = "yuoki-energy",
		order = "3-a"
	},
	{
		type = "item-subgroup",
		name = "y-pipe",
		group = "yuoki",
		order = "3-b"
	},	
	{
		type = "item-subgroup",
		name = "y-energy",
		group = "yuoki-energy",
		order = "4"
	},
	{
		type = "item-subgroup",
		name = "y-energy-2",
		group = "yuoki-energy",
		order = "4-a"
	},	
	{
		type = "item-subgroup",
		name = "yuoki-energy-gen",
		group = "yuoki-energy",
		order = "4-b"
	},
	{
		type = "item-subgroup",
		name = "y-electric",
		group = "yuoki-energy",
		order = "4-c"
	},	

	{
		type = "item-subgroup",
		name = "yuoki-formpress",
		group = "yuoki",
		order = "4-d"
	},  
	{
		type = "item-subgroup",
		name = "y-crush",
		group = "yuoki",
		order = "4-e"
	},  

	{
		type = "item-subgroup",
		name = "y-smelting",
		group = "yuoki",
		order = "4-f"
	},
	
	{
		type = "item-subgroup",
		name = "y-raw-material",
		group = "yuoki",
		order = "4-g"
	},
	
	{
		type = "item-subgroup",
		name = "y-ore",
		group = "yuoki",
		order = "4-h"
	},

	{
		type = "item-subgroup",
		name = "y-tech",
		group = "yuoki-energy",
		order = "4-h"
	},
	

	{
		type = "item-subgroup",
		name = "yuoki-archaeology",
		group = "yuoki",
		order = "6-a"
	},  

	{
		type = "item-subgroup",
		name = "y-defense",
		group = "yuoki",
		order = "7-a"
	},  
	{
		type = "item-subgroup",
		name = "y-ammo",
		group = "yuoki",
		order = "7-b"
	},  
	
	{
		type = "recipe-category",
		name = "yuoki-archaeology",
	},

	-- energys
	{
		type = "recipe-category",
		name = "yuoki-energy",
	},
	-- +++
	
	{
		type = "recipe-category",
		name = "yuoki-raw-material-recipe",
	},
		
	{
		type = "recipe-category",
		name = "yuoki-archaeology-wash",
	},
	{
		type = "recipe-category",
		name = "y-crushing-recipe",
	},
	
	{
		type = "recipe-category",
		name = "yuoki-smelting",
	},

	{
		type = "recipe-category",
		name = "yuoki-formpress-recipe",
	},  
	{
		type = "recipe-category",
		name = "yuoki-defense-recipe",
	},
	{
		type = "recipe-category",
		name = "yuoki-pipe-recipe",
	},
	{
		type = "recipe-category",		
		name = "yuoki-wonder-recipe",
	},
	{
		type = "recipe-category",		
		name = "yuoki-atomics-recipe",		
	},
	{
		type = "recipe-category",		
		name = "yuoki-alien-recipe",		
	},
	{
		type = "recipe-category",		
		name = "yuoki-watergen-recipe",		
	},
	{ type = "recipe-category", name = "yuoki-stargate-recipe",},
	{ type = "recipe-category", name = "yuoki-fame-recipe",},
	

}
)