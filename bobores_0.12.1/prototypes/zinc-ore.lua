local zinc_ore_tint = {r=0.34, g=0.9, b=0.81}
local zinc_ore_map_color = {r=0.47, g=1, b=0.96}

data:extend(
{
  {
    type = "autoplace-control",
    name = "zinc-ore",
    richness = true,
    order = "b-f-z"
  },

  {
    type = "noise-layer",
    name = "zinc-ore"
  },

  {
    type = "item",
    name = "zinc-ore",
    icon = "__bobores__/graphics/icons/zinc-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "f-a[zinc-ore]",
    stack_size = 200
  },

  ore_particle{name = "zinc-ore-particle", tint = zinc_ore_tint},

  {
    type = "resource",
    name = "zinc-ore",
    icon = "__bobores__/graphics/icons/zinc-ore.png",
    flags = {"placeable-neutral"},
    order="a-b-f-b",
    minable =
    {
      hardness = 1.4,
      mining_particle = "zinc-ore-particle",
      mining_time = 2,
      results = 
      {
        {type="item", name="zinc-ore", amount=1},
      },
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "zinc-ore",
      sharpness = 1,
      richness_multiplier = 12000,
      richness_base = 250,
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
          noise_layer = "zinc-ore",
          noise_octaves_difference = -2.7,
          noise_persistence = 0.4,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages = ore_sheet{sheet = 2, tint = zinc_ore_tint},
    map_color = zinc_ore_map_color
  },
}
)
