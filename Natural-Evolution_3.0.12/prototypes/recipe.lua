data:extend({
    --- Terraforming Station
	{
        type = "recipe",
        name = "TerraformingStation",
        energy_required = 20,
        enabled = "false",
        ingredients =
        {
            {"stone-brick", 70},
            {"advanced-circuit", 15},
            {"alien-artifact", 10},
        },
        result = "TerraformingStation"
    },
	
	--[[
	--- Alien Control Station
	{
		type = "recipe",
		name = "AlienControlStation",
        energy_required = 20,
		enabled = "false",
		ingredients =
        {
            {"basic-beacon", 5},
            {"advanced-circuit", 15},
            {"alien-artifact", 10},
        },
		result = "AlienControlStation"
	}, 
	]]
})