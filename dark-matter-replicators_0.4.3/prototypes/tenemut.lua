
data:extend(
{
  {
    type = "tool",
    name = "tenemut",
    icon = "__dark-matter-replicators__/graphics/icons/tenemut.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-resource",
    order = "f[tenemut]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount"
  },
  {
    type = "noise-layer",
    name = "tenemut"
  },
  {
    type = "autoplace-control",
    name = "tenemut",
    richness = true,
    order = "b-f"
  },
  {
    type = "resource",
    name = "tenemut",
    icon = "__dark-matter-replicators__/graphics/icons/tenemut.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    infinite = false,
    minimum = 50,
    normal = 200,
    minable =
    {
      hardness = 0.5,
      mining_particle = "copper-ore-particle",
      mining_time = 2.5,
      result = "tenemut"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "tenemut",
      sharpness = 1,
      richness_multiplier = 13500,
      richness_base = 165,
      size_control_multiplier = 0.04,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.45,
          noise_layer = "tenemut",
          noise_octaves_difference = -1.9,
          noise_persistence = 0.3,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.3,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.55,
          noise_layer = "tenemut",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.4,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "iron-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "coal",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "stone",
          noise_octaves_difference = -3,
          noise_persistence = 0.45,
        },
      },
    },
    stage_counts = {2000, 900, 600, 300, 150, 60, 30, 1},
    stages =
    {
      sheet =
      {
	  filename = "__dark-matter-replicators__/graphics/entity/tenemut/tenemut.png",
      priority = "extra-high",
      width = 38,
      height = 38,
      frame_count = 4,
      variation_count = 8
	  }
    },
    map_color = {r=0.550, g=0.392, b=0.550}
  },
})