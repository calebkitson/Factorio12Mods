data:extend(
{
  {
    type = "recipe",
    name = "electric-stone-furnace",
    ingredients = {
      {"stone-furnace", 1},
      {"electronic-circuit", 1},
      {"iron-plate", 1}
    },
    result = "electric-stone-furnace",
    enabled = "true"
  },
  {
    type = "recipe",
    name = "electric-furnace-2",
    ingredients = {
      {"processing-unit", 5},
      {"electric-furnace", 2}
    },
    result = "electric-furnace-2",
    energy_required = 5,
    enabled = "false"
  }
})