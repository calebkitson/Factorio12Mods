data:extend(
{
  {
    type = "technology",
    name = "electrolysis-1",
    icon = "__bobplates__/graphics/icons/technology/electrolysis.png",
    prerequisites =
    {
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electrolyser"
      },
      {
        type = "unlock-recipe",
        recipe = "water-electrolysis"
      },
    },
    unit =
    {
      count = 20,
      ingredients = 
      {
        {"science-pack-1", 1},
      },
      time = 15
    },
    upgrade = true,
    order = "d-b-a1"
  },

  {
    type = "technology",
    name = "electrolysis-2",
    icon = "__bobplates__/graphics/icons/technology/electrolysis.png",
    prerequisites =
    {
      "electrolysis-1",
      "chemical-processing-1"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "salt-water-electrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "storage-tank"
      },
    },
    unit =
    {
      count = 30,
      ingredients = 
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1}
      },
      time = 20
    },
    upgrade = true,
    order = "d-b-a2"
  },

  {
    type = "technology",
    name = "electrolysis-3",
    icon = "__bobplates__/graphics/icons/technology/electrolysis.png",
    prerequisites =
    {
      "electrolysis-2",
      "steel-processing",
      "advanced-electronics",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electrolyser-2"
      },
    },
    unit =
    {
      count = 80,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a3"
  },

  {
    type = "technology",
    name = "electrolysis-4",
    icon = "__bobplates__/graphics/icons/technology/electrolysis.png",
    prerequisites =
    {
      "electrolysis-3",
      "tungsten-processing",
      "invar-processing",
      "advanced-electronics-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electrolyser-3"
      },
    },
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
    order = "d-b-a4"
  },


  {
    type = "technology",
    name = "chemical-processing-1",
    icon = "__bobplates__/graphics/icons/technology/chemistry.png",
    prerequisites =
    {
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "chemical-boiler"
      },
      {
        type = "unlock-recipe",
        recipe = "salt"
      },
      {
        type = "unlock-recipe",
        recipe = "carbon"
      },
    },
    unit =
    {
      count = 25,
      ingredients = 
      {
        {"science-pack-1", 1},
      },
      time = 15
    },
    upgrade = true,
    order = "d-b-b1"
  },

  {
    type = "technology",
    name = "chemical-processing-2",
    icon = "__bobplates__/graphics/icons/technology/chemistry.png",
    prerequisites =
    {
      "electrolysis-2",
      "chemical-processing-1"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "chemical-plant"
      },
      {
        type = "unlock-recipe",
        recipe = "hydrogen-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "calcium-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "ferric-chloride-solution"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-hydrogen"
      },
    },
    unit =
    {
      count = 50,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-b2"
  },

  {
    type = "technology",
    name = "chemical-processing-3",
    icon = "__bobplates__/graphics/icons/technology/chemistry.png",
    prerequisites =
    {
      "chemical-processing-2",
      "advanced-material-processing-2"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "chemical-furnace"
      },
      {
        type = "unlock-recipe",
        recipe = "chemical-plant-2"
      },
    },
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
    order = "d-b-b3"
  },

  {
    type = "technology",
    name = "chemical-processing-4",
    icon = "__bobplates__/graphics/icons/technology/chemistry.png",
    prerequisites =
    {
      "chemical-processing-3",
      "titanium-processing",
      "advanced-electronics-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "chemical-plant-3"
      },
    },
    unit =
    {
      count = 150,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-b4"
  },

  {
    type = "technology",
    name = "chemical-processing-5",
    icon = "__bobplates__/graphics/icons/technology/chemistry.png",
    prerequisites =
    {
      "chemical-processing-4",
      "nitinol-processing",
      "advanced-electronics-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "chemical-plant-4"
      },
    },
    unit =
    {
      count = 150,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-b5"
  },


  {
    type = "technology",
    name = "alloy-processing-1",
    icon = "__bobplates__/graphics/icons/technology/alloy-processing.png",
    prerequisites =
    {
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mixing-furnace"
      },
      {
        type = "unlock-recipe",
        recipe = "bronze-alloy"
      },
    },
    unit =
    {
      count = 25,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-c-a-a"
  },

  {
    type = "technology",
    name = "alloy-processing-2",
    icon = "__bobplates__/graphics/icons/technology/alloy-processing.png",
    prerequisites =
    {
      "alloy-processing-1",
      "advanced-material-processing-2"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-mixing-furnace"
      },
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-c-a-b"
  },

  {
    type = "technology",
    name = "alloy-processing-3",
    icon = "__bobplates__/graphics/icons/technology/alloy-processing.png",
    prerequisites =
    {
      "alloy-processing-2",
      "chemical-processing-3",
      "tungsten-processing",
      "invar-processing",
      "advanced-electronics-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-chemical-mixing-furnace"
      },
    },
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
    order = "c-c-a-c"
  },

  {
    type = "technology",
    name = "alloy-processing-4",
    icon = "__bobplates__/graphics/icons/technology/alloy-processing.png",
    prerequisites =
    {
      "alloy-processing-3",
      "advanced-electronics-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-chemical-mixing-furnace-2"
      },
    },
    unit =
    {
      count = 120,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-c-a-d"
  },


  {
    type = "technology",
    name = "nitrogen-processing",
    icon = "__bobplates__/graphics/icons/technology/nitrogen-processing.png",
    prerequisites =
    {
      "chemical-processing-2",
      "air-compressor-1"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nitrogen"
      },
      {
        type = "unlock-recipe",
        recipe = "nitrogen-dioxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nitric-acid"
      },
    },
    unit =
    {
      count = 35,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "d-b-b5"
  },

  {
    type = "technology",
    name = "ceramics",
    icon = "__bobplates__/graphics/icons/technology/ceramics.png",
    prerequisites =
    {
      "nitrogen-processing",
      "silicon-processing"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "silicon-nitride"
      },
      {
        type = "unlock-recipe",
        recipe = "ceramic-bearing-ball"
      },
      {
        type = "unlock-recipe",
        recipe = "ceramic-bearing"
      },
    },
    unit =
    {
      count = 60,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "d-b-b6"
  },


  {
    type = "technology",
    name = "air-compressor-1",
    icon = "__bobplates__/graphics/icons/liquid-air.png",
    prerequisites =
    {
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "air-pump"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-liquid-air"
      },
    },
    unit =
    {
      count = 30,
      ingredients = 
      {
        {"science-pack-1", 1},
      },
      time = 20
    },
    upgrade = true,
    order = "d-c-a1"
  },

  {
    type = "technology",
    name = "air-compressor-2",
    icon = "__bobplates__/graphics/icons/liquid-air.png",
    prerequisites =
    {
      "air-compressor-1",
      "steel-processing",
      "alloy-processing-1",
      "advanced-electronics",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "air-pump-2"
      },
    },
    unit =
    {
      count = 50,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-c-a2"
  },

  {
    type = "technology",
    name = "air-compressor-3",
    icon = "__bobplates__/graphics/icons/liquid-air.png",
    prerequisites =
    {
      "air-compressor-2",
      "zinc-processing",
      "titanium-processing",
      "advanced-electronics-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "air-pump-3"
      },
    },
    unit =
    {
      count = 75,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 45
    },
    upgrade = true,
    order = "d-c-a3"
  },

  {
    type = "technology",
    name = "air-compressor-4",
    icon = "__bobplates__/graphics/icons/liquid-air.png",
    prerequisites =
    {
      "air-compressor-3",
      "nitinol-processing",
      "electric-engine",
      "advanced-electronics-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "air-pump-4"
      },
    },
    unit =
    {
      count = 100,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "d-c-a4"
  },


  {
    type = "technology",
    name = "water-bore-1",
    icon = "__base__/graphics/icons/fluid/water.png",
    prerequisites =
    {
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "water-pump"
      },
      {
        type = "unlock-recipe",
        recipe = "lithia-water"
      },
      {
        type = "unlock-recipe",
        recipe = "ground-water"
      },
    },
    unit =
    {
      count = 30,
      ingredients = 
      {
        {"science-pack-1", 1},
      },
      time = 20
    },
    upgrade = true,
    order = "d-c-b1"
  },

  {
    type = "technology",
    name = "water-bore-2",
    icon = "__base__/graphics/icons/fluid/water.png",
    prerequisites =
    {
      "water-bore-1",
      "steel-processing",
      "alloy-processing-1",
      "advanced-electronics",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "water-pump-2"
      },
    },
    unit =
    {
      count = 50,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-c-b2"
  },

  {
    type = "technology",
    name = "water-bore-3",
    icon = "__base__/graphics/icons/fluid/water.png",
    prerequisites =
    {
      "water-bore-2",
      "zinc-processing",
      "titanium-processing",
      "advanced-electronics-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "water-pump-3"
      },
    },
    unit =
    {
      count = 75,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 45
    },
    upgrade = true,
    order = "d-c-b3"
  },

  {
    type = "technology",
    name = "water-bore-4",
    icon = "__base__/graphics/icons/fluid/water.png",
    prerequisites =
    {
      "water-bore-3",
      "nitinol-processing",
      "electric-engine",
      "advanced-electronics-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "water-pump-4"
      },
    },
    unit =
    {
      count = 100,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "d-c-b4"
  },


  {
    type = "technology",
    name = "gas-canisters",
    icon = "__bobplates__/graphics/icons/technology/gas-canister.png",
    prerequisites =
    {
      "air-compressor-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gas-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "hydrogen-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-hydrogen-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "oxygen-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-oxygen-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "nitrogen-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nitrogen-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "chlorine-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-chlorine-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "hydrogen-chloride-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-hydrogen-chloride-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "petroleum-gas-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-petroleum-gas-canister"
      },
    },
    unit =
    {
      count = 50,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },

  {
    type = "technology",
    name = "barrels",
    icon = "__base__/graphics/icons/fluid/empty-barrel.png",
    prerequisites =
    {
      "water-bore-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "empty-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-heavy-oil-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-heavy-oil-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-light-oil-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-light-oil-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-lubricant-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-lubricant-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-sulfuric-acid-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-sulfuric-acid-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-fill-crude-oil-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-empty-crude-oil-barrel"
      },

      {
        type = "unlock-recipe",
        recipe = "empty-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-fuel-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-liquid-fuel-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "ferric-chloride-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-ferric-chloride-canister"
      },
    },
    unit =
    {
      count = 50,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },

  {
    type = "technology",
    name = "advanced-electronics-3",
    icon = "__base__/graphics/technology/advanced-electronics.png",
    prerequisites = {"advanced-electronics-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gilded-copper-cable"
      },
      {
        type = "unlock-recipe",
        recipe = "processing-electronics"
      },
      {
        type = "unlock-recipe",
        recipe = "multi-layer-circuit-board"
      },
      {
        type = "unlock-recipe",
        recipe = "electronic-processing-board-2"
      },
    },
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
    order = "a-d-d",
  },

  {
    type = "technology",
    name = "battery-2",
    icon = "__base__/graphics/technology/battery.png",
    prerequisites =
    {
      "battery",
      "lithium-processing",
      "cobalt-processing",
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lithium-cobalt-oxide"
      },
      {
        type = "unlock-recipe",
        recipe = "lithium-ion-battery"
      },
    },
    upgrade = true,
    order = "b-c-a"
  },

  {
    type = "technology",
    name = "grinding",
    icon = "__bobplates__/graphics/icons/technology/grinding.png",
    prerequisites =
    {
      "chemical-processing-1",
      "silicon-processing",
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "silicon-carbide"
      },
      {
        type = "unlock-recipe",
        recipe = "grinding-wheel"
      },
    },
    order = "b-c-b"
  },

  {
    type = "technology",
    name = "polishing",
    icon = "__bobplates__/graphics/icons/technology/polishing.png",
    prerequisites =
    {
      "oil-processing",
      "aluminium-processing",
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "polishing-compound"
      },
      {
        type = "unlock-recipe",
        recipe = "polishing-wheel"
      },
      {
        type = "unlock-recipe",
        recipe = "polishing-wheel-synthetic"
      },
    },
    order = "b-c-c"
  },


  {
    type = "technology",
    name = "gem-processing-1",
    icon = "__bobplates__/graphics/icons/technology/gems.png",
    prerequisites =
    {
      "grinding",
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-ruby-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-sapphire-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-emerald-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-amethyst-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-topaz-4"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-diamond-4"
      },
    },
    upgrade = true,
    order = "c-b-i1"
  },

  {
    type = "technology",
    name = "gem-processing-2",
    icon = "__bobplates__/graphics/icons/technology/gems.png",
    prerequisites =
    {
      "gem-processing-1",
      "polishing",
    },
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
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-ruby-5"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-sapphire-5"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-emerald-5"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-amethyst-5"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-topaz-5"
      },
      {
        type = "unlock-recipe",
        recipe = "bob-diamond-5"
      },
    },
    upgrade = true,
    order = "c-b-i2"
  },

  {
    type = "technology",
    name = "void-fluid",
    icon = "__bobplates__/graphics/icons/technology/void.png",
    prerequisites =
    {
--      "air-compressor-1",
    },
    unit =
    {
      count = 30,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 10
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "void-liquid-air"
      },
      {
        type = "unlock-recipe",
        recipe = "void-water"
      },
      {
        type = "unlock-recipe",
        recipe = "void-oxygen"
      },
      {
        type = "unlock-recipe",
        recipe = "void-hydrogen"
      },
      {
        type = "unlock-recipe",
        recipe = "void-nitrogen"
      },
      {
        type = "unlock-recipe",
        recipe = "void-chlorine"
      },
      {
        type = "unlock-recipe",
        recipe = "void-lithia-water"
      },
      {
        type = "unlock-recipe",
        recipe = "void-pump"
      },
    },
    order = "void-fluid"
  },
}
)


