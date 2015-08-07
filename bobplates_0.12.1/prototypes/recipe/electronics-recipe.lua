data:extend(
{
  {
    type = "recipe",
    name = "tinned-copper-cable",
    ingredients =
    {
      {"copper-cable", 3},
      {"tin-plate", 1},
    },
    result = "tinned-copper-cable",
    result_count = 3
  },

  {
    type = "recipe",
    name = "insulated-cable",
    ingredients =
    {
      {"rubber", 1},
      {"tinned-copper-cable", 2},
    },
    result = "insulated-cable",
    result_count = 2
  },

  {
    type = "recipe",
    name = "gilded-copper-cable",
    enabled = false,
    ingredients =
    {
      {"copper-cable", 3},
      {"gold-plate", 1},
    },
    result = "gilded-copper-cable",
    result_count = 3
  },

  {
    type = "recipe",
    name = "solder",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"solder-alloy", 4},
      {"resin", 1},
    },
    result = "solder",
    result_count = 8
  },


  {
    type = "recipe",
    name = "basic-electronic-components",
    category = "crafting-with-fluid",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"carbon", 1},
      {"tinned-copper-cable", 1},
    },
    result = "basic-electronic-components",
    result_count = 5
  },

  {
    type = "recipe",
    name = "electronic-components",
    category = "crafting-with-fluid",
    energy_required = 3.5,
    enabled = false,
    ingredients =
    {
      {"plastic-bar", 1},
      {"tinned-copper-cable", 1},
      {"silicon-wafer", 2},
    },
    result = "electronic-components",
    result_count = 5
  },

  {
    type = "recipe",
    name = "intergrated-electronics",
    category = "crafting-with-fluid",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"plastic-bar", 1},
      {"tinned-copper-cable", 1},
      {"silicon-wafer", 4},
      {type="fluid", name = "sulfuric-acid", amount = 0.5},
    },
    result = "intergrated-electronics",
    result_count = 5
  },

  {
    type = "recipe",
    name = "processing-electronics",
    category = "crafting-with-fluid",
    energy_required = 7,
    enabled = false,
    ingredients =
    {
      {"silicon-nitride", 1},
      {"gilded-copper-cable", 2},
      {"silicon-wafer", 6},
      {type="fluid", name = "sulfuric-acid", amount = 0.5},
    },
    result = "processing-electronics",
    result_count = 5
  },


  {
    type = "recipe",
    name = "wooden-board-synthetic",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients =
    {
      {"synthetic-wood", 1},
    },
    result = "wooden-board",
    result_count = 2
  },

  {
    type = "recipe",
    name = "wooden-board",
    ingredients =
    {
      {"wood", 1},
    },
    result = "wooden-board",
    result_count = 2
  },

  {
    type = "recipe",
    name = "phenolic-board-synthetic",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients =
    {
      {"synthetic-wood", 1},
      {"resin", 1},
    },
    result = "phenolic-board",
    result_count = 2
  },

  {
    type = "recipe",
    name = "phenolic-board",
    enabled = false,
    ingredients =
    {
      {"wood", 1},
      {"resin", 1},
    },
    result = "phenolic-board",
    result_count = 2
  },

  {
    type = "recipe",
    name = "fibreglass-board",
    enabled = false,
    ingredients =
    {
      {"plastic-bar", 1},
      {"glass", 1},
    },
    result = "fibreglass-board",
    result_count = 2
  },


  {
    type = "recipe",
    name = "basic-circuit-board",
    ingredients =
    {
      {"wooden-board", 1},
      {"copper-cable", 3},
    },
    result = "basic-circuit-board",
  },

  {
    type = "recipe",
    name = "circuit-board",
    category = "crafting-with-fluid",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"phenolic-board", 1},
      {"copper-plate", 1},
      {"tin-plate", 1},
      {type="fluid", name="ferric-chloride-solution", amount=0.5}
    },
    result = "circuit-board",
  },

  {
    type = "recipe",
    name = "superior-circuit-board",
    category = "crafting-with-fluid",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"fibreglass-board", 1},
      {"copper-plate", 1},
      {"gold-plate", 1},
      {type="fluid", name="ferric-chloride-solution", amount=0.5}
    },
    result = "superior-circuit-board",
  },

  {
    type = "recipe",
    name = "multi-layer-circuit-board",
    category = "crafting-with-fluid",
    energy_required = 15,
    enabled = false,
    ingredients =
    {
      {"fibreglass-board", 1},
      {"copper-plate", 2},
      {"gold-plate", 2},
      {type="fluid", name="ferric-chloride-solution", amount=1}
    },
    result = "multi-layer-circuit-board",
  },


  {
    type = "recipe",
    name = "basic-electronic-circuit-board",
    enabled = false,
    ingredients =
    {
      {"basic-circuit-board", 1},
      {"basic-electronic-components", 5},
      {"solder", 1},
    },
    result = "basic-electronic-circuit-board",
  },

  {
    type = "recipe",
    name = "electronic-circuit-board",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"circuit-board", 1},
      {"basic-electronic-components", 4},
      {"electronic-components", 4},
      {"solder", 1},
    },
    result = "electronic-circuit-board",
  },

  {
    type = "recipe",
    name = "electronic-processing-board",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"superior-circuit-board", 1},
      {"basic-electronic-components", 2},
      {"electronic-components", 4},
      {"intergrated-electronics", 2},
      {"solder", 2},
    },
    result = "electronic-processing-board",
  },

  {
    type = "recipe",
    name = "electronic-processing-board-2",
    energy_required = 15,
    enabled = false,
    ingredients =
    {
      {"multi-layer-circuit-board", 1},
      {"basic-electronic-components", 1},
      {"electronic-components", 2},
      {"intergrated-electronics", 4},
      {"processing-electronics", 1},
      {"solder", 4},
    },
    result = "electronic-processing-board-2",
  },
}
)


