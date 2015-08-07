data:extend({
	
	--- Terraforming Station
	{
	    type = "item",
	    name = "TerraformingStation",
	    icon = "__Natural-Evolution__/graphics/icons/TerraformingStation.png",
	    flags = {"goes-to-quickbar"},
	    subgroup = "defensive-structure",
	    order = "b[TerraformingStation]-a[TerraformingStation]",
	    place_result = "TerraformingStation",
	    stack_size = 10 ,
	},
	--[[
	--- Alien Control Station
	{
		type = "item",
		name = "AlienControlStation",
		icon = "__Natural-Evolution__/graphics/icons/AlienControlStation.png",
		flags = {"goes-to-quickbar"},
		subgroup = "defensive-structure",
		--order = "a[item]-m[AlienControlStation]",
		order = "b[AlienControlStation]-a[AlienControlStation]",
		place_result = "AlienControlStation",
		stack_size = 10
	},
	]]
})
