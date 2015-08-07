local bauxite_ore_tint = {r=0.777, g=0.7, b=0.333}
local bauxite_ore_map_color = {r=0.777, g=0.7, b=0.333}

data:extend(
{
  {
    type = "autoplace-control",
    name = "bauxite-ore",
    richness = true,
    order = "b-f-b"
  },

  {
    type = "noise-layer",
    name = "bauxite-ore"
  },

  {
    type = "item",
    name = "bauxite-ore",
    icon = "__bobores__/graphics/icons/bauxite-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "f-a[bauxite-ore]",
    stack_size = 200
  },

  ore_particle{name = "bauxite-ore-particle", tint = bauxite_ore_tint},

  {
    type = "resource",
    name = "bauxite-ore",
    icon = "__bobores__/graphics/icons/bauxite-ore.png",
    flags = {"placeable-neutral"},
    order="a-b-f-f",
    minable =
    {
      hardness = 1.4,
      mining_particle = "bauxite-ore-particle",
      mining_time = 2,
      results =
      {
        {type="item", name="bauxite-ore", amount=1},
      }
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "bauxite-ore",
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
          noise_layer = "bauxite-ore",
          noise_octaves_difference = -2.7,
          noise_persistence = 0.4,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages = ore_sheet{sheet = 1, tint = bauxite_ore_tint},
    map_color = bauxite_ore_map_color
  },
}
)