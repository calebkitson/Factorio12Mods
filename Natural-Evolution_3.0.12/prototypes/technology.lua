data:extend({
	
	--- Alien Understanding
    {
		type = "technology",
		name = "AlienUnderstanding",
		icon = "__Natural-Evolution__/graphics/technology/AlienUnderstanding.png",
		prerequisites = {"advanced-electronics"},
		unit =
		{
		  count = 50,
		  ingredients =
		  {
			{"science-pack-1", 2},
			{"science-pack-2", 1}
		  },
		  time = 50
		},
		order = "a-h-c",
	},


	--- Terraforming Station 		
	{
		type = "technology",
		name = "TerraformingStation",
		icon = "__Natural-Evolution__/graphics/technology/TerraformingStation.png",
		effects =
		{
		  {
				type = "unlock-recipe",
				recipe = "TerraformingStation"
		  }
		},
		prerequisites = {"AlienUnderstanding"},
		unit =
		{
		  count = 75,
		  ingredients =
		  {
			{"science-pack-1", 2},
			{"science-pack-2", 1}
		  },
		  time = 50
		},
		order = "a-h-c",
	},
	
	--[[
	--- Alien Control Station
    {
		type = "technology",
		name = "AlienControlStation",
		icon = "__Natural-Evolution__/graphics/technology/AlienControlStation.png",
		effects =
		{
		  {
			  type = "unlock-recipe", 
			  recipe = "AlienControlStation"
		  }
		},
		prerequisites = {"alien-technology", "AlienUnderstanding", "effect-transmission"},
		unit =
		{
		  count = 50,
		  ingredients =
		  {
			{"science-pack-1", 6},
			{"science-pack-2", 6}
		  },
		  time = 50
		},
		order = "a-h-c",
	},]]
})
