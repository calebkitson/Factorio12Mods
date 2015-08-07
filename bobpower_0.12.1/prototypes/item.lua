data.raw.item["boiler"].order = "b[steam-power]-a[boiler-1]"
data.raw.item["boiler"].subgroup = "bob-energy-boiler"

data:extend(
{
  {
    type = "item",
    name = "boiler-2",
    icon = "__base__/graphics/icons/boiler.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-boiler",
    order = "b[steam-power]-a[boiler-2]",
    place_result = "boiler-2",
    stack_size = 50,
  },

  {
    type = "item",
    name = "boiler-3",
    icon = "__base__/graphics/icons/boiler.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-boiler",
    order = "b[steam-power]-a[boiler-3]",
    place_result = "boiler-3",
    stack_size = 50,
  },

  {
    type = "item",
    name = "boiler-4",
    icon = "__base__/graphics/icons/boiler.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-boiler",
    order = "b[steam-power]-a[boiler-4]",
    place_result = "boiler-4",
    stack_size = 50,
  },
}
)


data.raw["item"]["steam-engine"].order="b[steam-power]-b[steam-engine-1]"
data.raw["item"]["steam-engine"].subgroup = "bob-energy-steam-engine"

data:extend(
{
  {
    type = "item",
    name = "steam-engine-2",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-steam-engine",
    order = "b[steam-power]-b[steam-engine]-2",
    place_result = "steam-engine-2",
    stack_size = 10,
  },
  {
    type = "item",
    name = "steam-engine-3",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-steam-engine",
    order = "b[steam-power]-b[steam-engine]-3",
    place_result = "steam-engine-3",
    stack_size = 10,
  },
}
)


data.raw["item"]["solar-panel"].order="d[solar-panel]-a[solar-panel-1-b]"
data.raw["item"]["solar-panel"].subgroup = "bob-energy-solar-panel"

data:extend(
{
  {
    type = "item",
    name = "solar-panel-small",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-solar-panel",
    order = "d[solar-panel]-a[solar-panel-1-a]",
    place_result = "solar-panel-small",
    stack_size = 50
  },

  {
    type = "item",
    name = "solar-panel-large",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-solar-panel",
    order = "d[solar-panel]-a[solar-panel-1-c]",
    place_result = "solar-panel-large",
    stack_size = 50
  },


  {
    type = "item",
    name = "solar-panel-small-2",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-solar-panel",
    order = "d[solar-panel]-a[solar-panel-2-a]",
    place_result = "solar-panel-small-2",
    stack_size = 50
  },

  {
    type = "item",
    name = "solar-panel-2",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-solar-panel",
    order = "d[solar-panel]-a[solar-panel-2-b]",
    place_result = "solar-panel-2",
    stack_size = 50
  },

  {
    type = "item",
    name = "solar-panel-large-2",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-solar-panel",
    order = "d[solar-panel]-a[solar-panel-2-c]",
    place_result = "solar-panel-large-2",
    stack_size = 50
  },


  {
    type = "item",
    name = "solar-panel-small-3",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-solar-panel",
    order = "d[solar-panel]-a[solar-panel-3-a]",
    place_result = "solar-panel-small-3",
    stack_size = 50
  },

  {
    type = "item",
    name = "solar-panel-3",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-solar-panel",
    order = "d[solar-panel]-a[solar-panel-3-b]",
    place_result = "solar-panel-3",
    stack_size = 50
  },

  {
    type = "item",
    name = "solar-panel-large-3",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-solar-panel",
    order = "d[solar-panel]-a[solar-panel-3-c]",
    place_result = "solar-panel-large-3",
    stack_size = 50
  },
}
)


data.raw["item"]["basic-accumulator"].order="e[accumulator]-a[basic-accumulator]-a-b"
data.raw["item"]["basic-accumulator"].subgroup = "bob-energy-accumulator"

data:extend(
{
  {
    type = "item",
    name = "large-accumulator",
    icon = "__base__/graphics/icons/basic-accumulator.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-accumulator",
    order = "e[accumulator]-a[basic-accumulator]-a-l",
    place_result = "large-accumulator",
    stack_size = 50
  },

  {
    type = "item",
    name = "fast-accumulator",
    icon = "__base__/graphics/icons/basic-accumulator.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-accumulator",
    order = "e[accumulator]-a[basic-accumulator]-a-f",
    place_result = "fast-accumulator",
    stack_size = 50
  },


  {
    type = "item",
    name = "basic-accumulator-2",
    icon = "__base__/graphics/icons/basic-accumulator.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-accumulator",
    order = "e[accumulator]-a[basic-accumulator]-b-b",
    place_result = "basic-accumulator-2",
    stack_size = 50
  },

  {
    type = "item",
    name = "large-accumulator-2",
    icon = "__base__/graphics/icons/basic-accumulator.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-accumulator",
    order = "e[accumulator]-a[basic-accumulator]-b-l",
    place_result = "large-accumulator-2",
    stack_size = 50
  },

  {
    type = "item",
    name = "fast-accumulator-2",
    icon = "__base__/graphics/icons/basic-accumulator.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-accumulator",
    order = "e[accumulator]-a[basic-accumulator]-b-f",
    place_result = "fast-accumulator-2",
    stack_size = 50
  },


  {
    type = "item",
    name = "basic-accumulator-3",
    icon = "__base__/graphics/icons/basic-accumulator.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-accumulator",
    order = "e[accumulator]-a[basic-accumulator]-c-b",
    place_result = "basic-accumulator-3",
    stack_size = 50
  },

  {
    type = "item",
    name = "large-accumulator-3",
    icon = "__base__/graphics/icons/basic-accumulator.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-accumulator",
    order = "e[accumulator]-a[basic-accumulator]-c-l",
    place_result = "large-accumulator-3",
    stack_size = 50
  },

  {
    type = "item",
    name = "fast-accumulator-3",
    icon = "__base__/graphics/icons/basic-accumulator.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-accumulator",
    order = "e[accumulator]-a[basic-accumulator]-c-f",
    place_result = "fast-accumulator-3",
    stack_size = 50
  },
}
)


