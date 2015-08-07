data:extend({
  {
    type = "recipe-category",
    name = "crafting-air-filter"
  },
  {
    type = "recipe",
    name = "air-filter-machine",
    icon = "__air-filtering__/graphics/icons/air-filter-machine.png",
    energy_required = 10.0,
    enabled = "false",
    ingredients = 
    {
      {"assembling-machine-2", 1},
      {"electronic-circuit", 5},
      {"steel-plate", 10}
    },
    result = "air-filter-machine"
  },
  {
    type = "recipe",
    name = "air-filter",
    icon = "__air-filtering__/graphics/icons/air-filter.png",
    category = "crafting",
    subgroup = "raw-material",
    order = "f[plastic-bar]-f[air-filter]",
    energy_required = 5,
    enabled = "false",
    ingredients = 
    {
      {"coal", 10},
      {"plastic-bar", 4},
      {"steel-plate", 2}
    },
    result = "air-filter"
  },
  {
    type = "recipe",
    name = "filter-air",
    icon = "__air-filtering__/graphics/icons/air-filter-machine.png",
    category = "crafting-air-filter",
    order = "f[plastic-bar]-f[filter-air]",
    energy_required = 100,
    enabled = "false",
    ingredients = 
    {
      {"air-filter", 1}
    },
    result = "used-air-filter"
  },
  {
    type = "recipe",
    name = "air-filter-recycling",
    icon = "__air-filtering__/graphics/icons/air-filter-recycling.png",
    category = "crafting",
    subgroup = "raw-material",
    order = "f[air-filter]-f[air-filter-recycling]",
    energy_required = 5,
    enabled = "false",
    ingredients = 
    {
      {"used-air-filter", 1},
      {"coal", 5}
    },
    result = "air-filter"
  }
})
