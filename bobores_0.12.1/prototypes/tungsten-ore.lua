local tungsten_ore_tint = {r=0.75, g=0.5, b=0.25}
local tungsten_ore_map_color = {r=0.375, g=0.25, b=0.125}

data:extend(
{
  {
    type = "autoplace-control",
    name = "tungsten-ore",
    richness = true,
    order = "b-f-u"
  },

  {
    type = "noise-layer",
    name = "tungsten-ore"
  },

  {
    type = "item",
    name = "tungsten-ore",
    icon = "__bobores__/graphics/icons/tungsten-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "f-a[tungsten-ore]",
    stack_size = 200
  },

  ore_particle{name = "tungsten-ore-particle", tint = tungsten_ore_tint},

  {
    type = "resource",
    name = "tungsten-ore",
    icon = "__bobores__/graphics/icons/tungsten-ore.png",
    flags = {"placeable-neutral"},
    order="a-b-f-c",
    minable =
    {
      hardness = 2.6,
      mining_particle = "tungsten-ore-particle",
      mining_time = 2,
      results = 
      {
        {type="item", name="tungsten-ore", amount=1},
      },
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "tungsten-ore",
      sharpness = 1,
      richness_multiplier = 11000,
      richness_base = 200,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },

        {
          influence = 0.65,
          noise_layer = "tungsten-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.35,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages = ore_sheet{sheet = 1, tint = tungsten_ore_tint},
    map_color = tungsten_ore_map_color
  },
}
)
