data:extend({
  {
    type = "technology",
    name = "OilBurning",
    icon = "__OilSteamBoiler__/graphics/technology/OilBurning.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "OilSteamBoiler"
      },
	  {
        type = "unlock-recipe",
        recipe = "burn-crude-oil"
      },
	  {
        type = "unlock-recipe",
        recipe = "burn-light-oil"
      },
	  {
        type = "unlock-recipe",
        recipe = "burn-heavy-oil"
      },
     
    },
    prerequisites = {"oil-processing"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "d-a-c",
  },
  }
  )
  