data:extend(
{
  {
    type = "technology",
    name = "bob-boiler-1",
    prerequisites =
    {
      "advanced-material-processing",
    },
    icon = "__base__/graphics/icons/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-2"
      },
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "[boiler]-1",
  },

  {
    type = "technology",
    name = "bob-boiler-2",
    prerequisites =
    {
      "bob-boiler-1",
      "electric-energy-distribution-1"
    },
    icon = "__base__/graphics/icons/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-3"
      },
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "[boiler]-2",
  },

  {
    type = "technology",
    name = "bob-boiler-3",
    prerequisites =
    {
      "bob-boiler-2",
      "advanced-electronics"
    },
    icon = "__base__/graphics/icons/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-4"
      },
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "[boiler]-3",
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "steam-engine-generator-1",
    prerequisites = {"electric-energy-distribution-1"},
    icon = "__base__/graphics/icons/steam-engine.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-engine-2"
      },
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "[steam]-1",
  },

  {
    type = "technology",
    name = "steam-engine-generator-2",
    prerequisites = {"steam-engine-generator-1", "advanced-electronics"},
    icon = "__base__/graphics/icons/steam-engine.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-engine-3"
      },
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "[steam]-2",
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "bob-solar-energy-2",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-small"
      },
      {
        type = "unlock-recipe",
        recipe = "solar-panel-large"
      }
    },
    prerequisites = {"solar-energy"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "a-h-c-b",
  },

  {
    type = "technology",
    name = "bob-solar-energy-3",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-small-2"
      },
      {
        type = "unlock-recipe",
        recipe = "solar-panel-2"
      },
      {
        type = "unlock-recipe",
        recipe = "solar-panel-large-2"
      }
    },
    prerequisites = {"bob-solar-energy-2", "advanced-electronics-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "a-h-c-c",
  },

  {
    type = "technology",
    name = "bob-solar-energy-4",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-small-3"
      },
      {
        type = "unlock-recipe",
        recipe = "solar-panel-3"
      },
      {
        type = "unlock-recipe",
        recipe = "solar-panel-large-3"
      }
    },
    prerequisites = {"bob-solar-energy-3", "advanced-electronics-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "a-h-c-d",
  },
}
)



data:extend(
{
  {
    type = "technology",
    name = "bob-electric-energy-accumulators-2",
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "large-accumulator"
      },
      {
        type = "unlock-recipe",
        recipe = "fast-accumulator"
      }
    },
    prerequisites =
    {
      "electric-energy-accumulators-1"
    },
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
    upgrade = true,
    order = "c-e-a-2",
  },

  {
    type = "technology",
    name = "bob-electric-energy-accumulators-3",
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-accumulator-2"
      },
      {
        type = "unlock-recipe",
        recipe = "large-accumulator-2"
      },
      {
        type = "unlock-recipe",
        recipe = "fast-accumulator-2"
      }
    },
    prerequisites =
    {
      "bob-electric-energy-accumulators-2",
      "advanced-electronics"
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-e-a-3",
  },

  {
    type = "technology",
    name = "bob-electric-energy-accumulators-4",
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-accumulator-3"
      },
      {
        type = "unlock-recipe",
        recipe = "large-accumulator-3"
      },
      {
        type = "unlock-recipe",
        recipe = "fast-accumulator-3"
      }
    },
    prerequisites =
    {
      "bob-electric-energy-accumulators-3",
      "advanced-electronics-2"
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-e-a-4",
  },
}
)

