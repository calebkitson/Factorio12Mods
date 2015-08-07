data:extend(
{ 
  {
    type = "recipe",
    name = "OilSteamBoiler",
	enabled = false,
    energy_required = 15,
    ingredients =
    {
      {"copper-plate", 15},
	  {"steel-plate", 5},
	  {"pipe", 10},
	  {"concrete", 10},

    },
    result = "OilSteamBoiler"
  },
  
  icon = "__OilSteamBoiler__/graphics/icons/OilSteamBoiler.png",
  {
    type = "recipe",
    name = "burn-crude-oil",
    energy_required = 12,
    enabled = "false",
	order = "b[fluid-chemistry]-f",
    category = "OilBurn",
    ingredients =
    {


		{type="fluid", name="water", amount=30},
		{type="fluid", name="crude-oil", amount=2.4},
    },
      results = 
	{
		{type="fluid", name="steam", amount=120}
				
	  },
	  main_product= "",
	  icon = "__OilSteamBoiler__/graphics/icons/burn-crude-oil.png",
    subgroup = "fluid"
	  },
	  {
    type = "recipe",
    name = "burn-heavy-oil",
    energy_required = 12,
    enabled = "false",
	order = "b[fluid-chemistry]-g",	
    category = "OilBurn",
    ingredients =
    {


	  {type="fluid", name="water", amount=30},
	  {type="fluid", name="heavy-oil", amount=2.8},
    },
      results = 
	{
		{type="fluid", name="steam", amount=120}
			
	  },
	  main_product= "",
	  icon = "__OilSteamBoiler__/graphics/icons/burn-heavy-oil.png",
    subgroup = "fluid"
	  },
	  {
    type = "recipe",
    name = "burn-light-oil",
    energy_required = 12,
    enabled = "false",
    order = "b[fluid-chemistry]-h",	
    category = "OilBurn",
    ingredients =
    {


	  {type="fluid", name="water", amount=30},
	  {type="fluid", name="light-oil", amount=1.4},
    },
      results = 
	{
		{type="fluid", name="steam", amount=120}
				
	  },
	  main_product= "",
	  icon = "__OilSteamBoiler__/graphics/icons/burn-light-oil.png",
    subgroup = "fluid"
	  }
	 
	 }
	  )
	  