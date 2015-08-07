local silver_ore_tint = {r = 0.875, g = 0.975, b = 1}
local silver_ore_map_color = {r=0.578, g=0.684, b=0.695}


data:extend(
{
  {
    type = "autoplace-control",
    name = "silver-ore",
    richness = true,
    order = "b-f-s"
  },

  {
    type = "noise-layer",
    name = "silver-ore"
  },

  {
    type = "item",
    name = "silver-ore",
    icon = "__bobores__/graphics/icons/silver-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "f-a[silver-ore]",
    stack_size = 200
  },

  ore_particle{name = "silver-ore-particle", tint = silver_ore_tint},

  {
    type = "resource",
    name = "silver-ore",
    icon = "__bobores__/graphics/icons/silver-ore.png",
    flags = {"placeable-neutral"},
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    map_color = silver_ore_map_color,
    order="a-b-f-d",
    minable =
    {
      hardness = 0.6,
      mining_particle = "silver-ore-particle",
      mining_time = 1.5,
      results = 
      {
        {type="item", name="silver-ore", amount=1},
      },
    },
    stages = ore_sheet{sheet = 2, tint = silver_ore_tint},
    autoplace =
    {
      control = "silver-ore",
      sharpness = 1,
      richness_multiplier = 12500,
      richness_base = 300,
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
          noise_layer = "silver-ore",
          noise_octaves_difference = -2.1,
          noise_persistence = 0.32,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
  },
}
)
