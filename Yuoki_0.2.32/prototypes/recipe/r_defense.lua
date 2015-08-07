data:extend(
{	

	-- walls
	{
		type = "recipe",
		name = "y-mud-wall-recipe",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-dry_mud", 5}, {"y-slag",4}, {"iron-plate", 4}}, 
		result = "y-mud-wall",
		result_count = 1,
		icon = "__Yuoki__/graphics/icons/m_wall_icon.png",
		subgroup = "y-defense",
		order="w-a",
		--category = "yuoki-formpress-recipe",		
	},	
	{
		type = "recipe",
		name = "y-rare-wall-basic-recipe",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-refined-yres1", 1}, {"y-slag", 6}, {"stone-wall",1} }, 
		result = "y-rare-wall-basic",
		subgroup = "y-defense",	
		result_count = 1,
		order="w-b",
	},	
	{
		type = "recipe",
		name = "y-rare-wall-adv-recipe",
		icon = "__Yuoki__/graphics/icons/rare2-wall-icon2.png",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-orange-stuff", 6}, {"y-slag", 6}, {"stone-wall",1} }, 
		result = "y-rare-wall-adv",
		subgroup = "y-defense",	
		result_count = 1,
		order="w-c",
	},		
	{
		type = "recipe",
		name = "y-wall-forcefield-recipe",
		icon = "__Yuoki__/graphics/icons/wall-forcefield-icon.png",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y-rare-wall-basic", 1}, {"y-conductive-coil-1", 3}, {"y-conductive-wire-1",1}, }, 
		result = "y-wall-forcefield",
		subgroup = "y-defense",	
		result_count = 1,
		order="w-d",
	},		
	{
		type = "recipe",
		name = "y-wall-forcefield-a-recipe",
		icon = "__Yuoki__/graphics/icons/wall-forcefield-a-icon.png",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y-wall-forcefield", 1}, {"y-battery-single-use2",1}, }, 
		result = "y-wall-forcefield-a",
		subgroup = "y-defense",	
		result_count = 1,
		order="w-d",
	},		

	{
		type = "recipe",
		name = "y-laser-gun-upg1-recipe",
		enabled = "true",
		energy_required = 4,
		ingredients =
		{
			{"y-unicomp-a2", 3},
			{"y-unicomp-raw", 2},
			{"y-battery-single-use3", 2},
			{"stone-wall",4},
		},
		result = "y-laser-def-s4",
		order="t-c",
	},	
	
	{
		type = "recipe",
		name = "y-laser-gun-upg2-recipe",
		enabled = "true",
		energy_required = 4,
		ingredients =
		{
			{"y-unicomp-a2", 3},
			{"y-unicomp-raw", 2},
			{"y-battery-single-use3", 2},			
		},
		result = "y_turret_laser22f12",
		order="t-c",
	},	
	
	--[[
	{
		type = "recipe",
		name = "y-gun-turret-mk2-recipe",
		enabled = "true",
		energy_required = 4,
		ingredients =
		{
			{"gun-turret", 1},
			{"iron-gear-wheel", 3},						
			{"y-unicomp-raw", 1},
			{"y-orange-stuff", 1},
		},
		result = "y-gun-turret-mk2",
		order="t-a",
	},	
	]]
	{
		type = "recipe",
		name = "y-gun-turret-mk3-recipe",
		enabled = "true",
		energy_required = 4,
		ingredients =
		{
			{"y-unicomp-a2", 2},
			{"engine-unit", 1},						
			{"steel-plate", 2},
			{"y-unicomp-raw", 3},
		},
		result = "y_turret_gun1f12",
		order="t-b",
	},	
	{
		type = "recipe",
		name = "y-weapon-ztt-recipe",		
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y-rare-wall-adv", 6}, {"y-basic-t2-mf", 1}, {"y-infused-uca2", 1} }, 
		result = "y-weapon-ztt",
		subgroup = "y-defense",	
		result_count = 1,
		order="t-d",
	},		
	
	
}
)	