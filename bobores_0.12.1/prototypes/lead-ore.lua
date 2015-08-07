local lead_ore_tint = {r = 0.5, g = 0.5, b = 0.5}
local lead_ore_map_color = {r=0.250, g=0.250, b=0.250}

data:extend(
{
  {
    type = "autoplace-control",
    name = "lead-ore",
    richness = true,
    order = "b-f-l"
  },

  {
    type = "noise-layer",
    name = "lead-ore"
  },

  {
    type = "item",
    name = "lead-ore",
    icon = "__bobores__/graphics/icons/lead-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "f-a[lead-ore]",
    stack_size = 200
  },

  ore_particle{name = "lead-ore-particle", tint = lead_ore_tint},

  {
    type = "resource",
    name = "lead-ore",
    icon = "__bobores__/graphics/icons/lead-ore.png",
    flags = {"placeable-neutral"},
    order="a-b-f-g",
    minable =
    {
      hardness = 0.7,
      mining_particle = "lead-ore-particle",
      mining_time = 1.5,
      results =
      {
        {type="item", name="lead-ore", amount=1},
      }
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "lead-ore",
      sharpness = 1,
      richness_multiplier = 12000,
      richness_base = 300,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
        },
        {
          influence = 0.65,
          noise_layer = "lead-ore",
          noise_octaves_difference = -2.4,
          noise_persistence = 0.35,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.68,
          noise_layer = "lead-ore",
          noise_octaves_difference = -4.5,
          noise_persistence = 0.5,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages = ore_sheet{sheet = 1, tint = lead_ore_tint},
    map_color = lead_ore_map_color,
  },
}
)
