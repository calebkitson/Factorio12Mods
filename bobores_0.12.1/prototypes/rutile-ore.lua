local rutile_ore_tint = {r=0.8, g=0.55, b=0.7}
local rutile_ore_map_color = {r=0.610, g=0.325, b=0.500}

data:extend(
{
  {
    type = "autoplace-control",
    name = "rutile-ore",
    richness = true,
    order = "b-f-r"
  },

  {
    type = "noise-layer",
    name = "rutile-ore"
  },

  {
    type = "item",
    name = "rutile-ore",
    icon = "__bobores__/graphics/icons/rutile-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "f-a[rutile-ore]",
    stack_size = 200
  },

  ore_particle{name = "rutile-ore-particle", tint = rutile_ore_tint},

  {
    type = "resource",
    name = "rutile-ore",
    icon = "__bobores__/graphics/icons/rutile-ore.png",
    flags = {"placeable-neutral"},
    order="a-b-f-h",
    minable =
    {
      hardness = 2.6,
      mining_particle = "rutile-ore-particle",
      mining_time = 2,
      results = 
      {
        {type="item", name="rutile-ore", amount=1},
      },
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "rutile-ore",
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
          noise_layer = "rutile-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.35,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages = ore_sheet{sheet = 1, tint = rutile_ore_tint},
    map_color = rutile_ore_map_color
  },
}
)
