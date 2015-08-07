local cobalt_ore_tint = {r = 0.3, g = 0.53, b = 0.77}
local cobalt_ore_map_color = {r=0.18, g=0.35, b=0.53}

data:extend(
{
  {
    type = "autoplace-control",
    name = "cobalt-ore",
    richness = true,
    order = "b-f-c"
  },

  {
    type = "noise-layer",
    name = "cobalt-ore"
  },

  {
    type = "item",
    name = "cobalt-ore",
    icon = "__bobores__/graphics/icons/cobalt-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "f-a[cobalt-ore]",
    stack_size = 200
  },

  ore_particle{name = "cobalt-ore-particle", tint = cobalt_ore_tint},

  {
    type = "resource",
    name = "cobalt-ore",
    icon = "__bobores__/graphics/icons/cobalt-ore.png",
    flags = {"placeable-neutral"},
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    map_color = cobalt_ore_map_color,
    order="a-b-f-j",
    minable =
    {
      hardness = 1.4,
      mining_particle = "cobalt-ore-particle",
      mining_time = 2.5,
      results =
      {
        {type = "item", name = "cobalt-ore", amount = 1},
      }
    },
    stages = ore_sheet{sheet = 1, tint = cobalt_ore_tint},
    autoplace =
    {
      control = "cobalt-ore",
      sharpness = 1,
      richness_multiplier = 10000,
      richness_base = 150,
      size_control_multiplier = 0.06,
      peaks =
      {
        {
          influence = 0.1,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.65,
          noise_layer = "cobalt-ore",
          noise_octaves_difference = -2.9,
          noise_persistence = 0.4,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
  },
}
)
