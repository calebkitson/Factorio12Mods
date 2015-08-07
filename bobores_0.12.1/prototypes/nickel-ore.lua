local nickel_ore_tint = {r=0.54, g=0.8, b=0.75}
local nickel_ore_map_color = {r=0.380, g=0.560, b=0.515}

data:extend(
{
  {
    type = "autoplace-control",
    name = "nickel-ore",
    richness = true,
    order = "b-f-n"
  },

  {
    type = "noise-layer",
    name = "nickel-ore"
  },

  {
    type = "item",
    name = "nickel-ore",
    icon = "__bobores__/graphics/icons/nickel-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "f-a[nickel-ore]",
    stack_size = 200
  },

  ore_particle{name = "nickel-ore-particle", tint = nickel_ore_tint},

  {
    type = "resource",
    name = "nickel-ore",
    icon = "__bobores__/graphics/icons/nickel-ore.png",
    flags = {"placeable-neutral"},
    order="a-b-f-i",
    minable =
    {
      hardness = 1.4,
      mining_particle = "nickel-ore-particle",
      mining_time = 2,
      results = 
      {
        {type="item", name="nickel-ore", amount=1},
      },
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "nickel-ore",
      sharpness = 1,
      richness_multiplier = 11000,
      richness_base = 200,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.1,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },

        {
          influence = 0.65,
          noise_layer = "nickel-ore",
          noise_octaves_difference = -2.4,
          noise_persistence = 0.35,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },

      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages = ore_sheet{sheet = 1, tint = nickel_ore_tint},
    map_color = nickel_ore_map_color,
  },
}
)
