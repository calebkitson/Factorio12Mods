data:extend(
{
  {
    type = "recipe",
    name = "superconductor",
    category = "chemistry",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {type="fluid", name="sulfuric-acid", amount=1},
      {"rare-earth", 10},
      {"copper-plate", 5}
    },
    result= "superconductor"
  },
  {
    type = "recipe",
    name = "superconducting-wire",
    ingredients = {{"superconductor", 1}},
    result = "superconducting-wire",
    enabled = false,
    result_count = 2
  },
  {
    type = "recipe",
    name = "alien-artifact",
    enabled = false,
    energy_required = 20,
    category = "advanced-crafting",
    ingredients =
    {
      {"superconducting-wire", 10},
      {"processing-unit", 1},
    },
    result = "alien-artifact"
  }
})