local tin_ore_tint = {r = 0.95, g = 0.95, b = 0.95}
local tin_ore_map_color = {r=0.600, g=0.600, b=0.600}

data:extend(
{
  {
    type = "autoplace-control",
    name = "tin-ore",
    richness = true,
    order = "b-f-t"
  },

  {
    type = "noise-layer",
    name = "tin-ore"
  },

  {
    type = "item",
    name = "tin-ore",
    icon = "__bobores__/graphics/icons/tin-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "f-a[tin-ore]",
    stack_size = 200
  },

  ore_particle{name = "tin-ore-particle", tint = tin_ore_tint},

  {
    type = "resource",
    name = "tin-ore",
    icon = "__bobores__/graphics/icons/tin-ore.png",
    flags = {"placeable-neutral"},
    order="a-b-f-a",
    minable =
    {
      hardness = 0.8,
      mining_particle = "tin-ore-particle",
      mining_time = 2,
      results = 
      {
        {type="item", name="tin-ore", amount=1},
      },
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "tin-ore",
      sharpness = 1,
      richness_multiplier = 14000,
      richness_base = 300,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
        },
        {
          influence = 0.65,
          noise_layer = "tin-ore",
          noise_octaves_difference = -1.9,
          noise_persistence = 0.3,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.68,
          noise_layer = "tin-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.4,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages = ore_sheet{sheet = 1, tint = tin_ore_tint},
    map_color = tin_ore_map_color,
  },
}
)
