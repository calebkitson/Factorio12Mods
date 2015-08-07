data:extend(
{
  {
    type = "noise-layer",
    name = "rare-earth"
  },
  {
    type = "autoplace-control",
    name = "rare-earth",
    richness = true,
    order = "b-f"
  },
  {
    type = "resource",
    name = "rare-earth",
    icon = "__Crafted Artifacts__/graphics/icons/rare-earth.png",
    flags = {"placeable-neutral"},
    order="a-b-d",
    minable =
    {
      hardness = 0.9,
      mining_particle = "coal-particle",
      mining_time = 1,
      result = "rare-earth"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "rare-earth",
      sharpness = 2,
      richness_multiplier = 100,
      richness_base = 100,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.20,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.6,
          noise_layer = "rare-earth",
          noise_octaves_difference = -2,
          noise_persistence = 0.45,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.25,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        }
      },
    },
    stage_counts = {86, 74, 62, 50, 38, 26, 14, 1},
    stages =
    {
      sheet =
      {
        filename = "__Crafted Artifacts__/graphics/entity/rare-earth.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.478, g=0.247, b=0.537}
  }
})