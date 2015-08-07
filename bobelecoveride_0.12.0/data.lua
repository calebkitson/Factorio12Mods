data:extend(
{
  {
    type = "item",
    name = "electronic-circuit",
    icon = "__bobplates__/graphics/icons/basic-circuit-board.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-electronic-boards",
    order = "c-b1[basic-circuit-board]",
    stack_size = 200
  },

  {
    type = "item",
    name = "advanced-circuit",
    icon = "__bobplates__/graphics/icons/electronic-circuit-board.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-electronic-boards",
    order = "c-c2[electronic-circuit-board]",
    stack_size = 200
  },

  {
    type = "item",
    name = "processing-unit",
    icon = "__bobplates__/graphics/icons/electronic-processing-board.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-electronic-boards",
    order = "c-c3[electronic-processing-board]",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "electronic-circuit",
    ingredients =
    {
      {"wooden-board", 1},
      {"copper-cable", 3},
    },
    result = "electronic-circuit",
  },

  {
    type = "recipe",
    name = "advanced-circuit",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"circuit-board", 1},
      {"basic-electronic-components", 4},
      {"electronic-components", 4},
      {"solder", 1},
    },
    result = "advanced-circuit",
  },

  {
    type = "recipe",
    name = "processing-unit",
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
    result = "processing-unit",
  },
}
)


data.raw.recipe["basic-circuit-board"].enabled = false

data.raw.recipe["basic-circuit-board"].result = "electronic-circuit"
data.raw.recipe["electronic-circuit-board"].result = "advanced-circuit"
data.raw.recipe["electronic-processing-board"].result = "processing-unit"

if data.raw.item["advanced-processing-unit"] then
  data.raw.recipe["electronic-processing-board-2"].result = "advanced-processing-unit"
end

