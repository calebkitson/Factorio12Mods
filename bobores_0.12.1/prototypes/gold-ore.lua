local gold_ore_tint = {r = 1, g = 0.75, b = 0}
local gold_ore_map_color = {r=0.9, g=0.63, b=0}

data:extend(
{
  {
    type = "autoplace-control",
    name = "gold-ore",
    richness = true,
    order = "b-f-g"
  },

  {
    type = "noise-layer",
    name = "gold-ore"
  },

  {
    type = "item",
    name = "gold-ore",
    icon = "__bobores__/graphics/icons/gold-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "f-a[gold-ore]",
    stack_size = 200
  },

  ore_particle{name = "gold-ore-particle", tint = gold_ore_tint},

  {
    type = "resource",
    name = "gold-ore",
    icon = "__bobores__/graphics/icons/gold-ore.png",
    flags = {"placeable-neutral"},
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    map_color = gold_ore_map_color,
    order="a-b-f-e",
    minable =
    {
      hardness = 0.6,
      mining_particle = "gold-ore-particle",
      mining_time = 2,
      results = 
      {
        {type="item", name="gold-ore", amount=1},
      },
    },
    stages = ore_sheet{sheet = 2, tint = gold_ore_tint},
    autoplace =
    {
      control = "gold-ore",
      sharpness = 1,
      richness_multiplier = 12000,
      richness_base = 250,
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
          noise_layer = "gold-ore",
          noise_octaves_difference = -2.4,
          noise_persistence = 0.35,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
  },
}
)
