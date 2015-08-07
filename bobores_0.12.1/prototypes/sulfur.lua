data:extend(
{
  {
    type = "autoplace-control",
    name = "sulfur",
    richness = true,
    order = "b-f-s"
  },

  {
    type = "noise-layer",
    name = "sulfur"
  },

  ore_particle{name = "sulfur-particle", tint = {r = 1, g = 0.94, b = 0}},

  {
    type = "resource",
    name = "sulfur",
    icon = "__base__/graphics/icons/sulfur.png",
    flags = {"placeable-neutral"},
    order = "a-b-f-k",
    minable =
    {
      hardness = 0.3,
      mining_particle = "sulfur-particle",
      mining_time = 1,
      result = "sulfur"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "sulfur",
      sharpness = 1,
      richness_multiplier = 13000,
      richness_base = 250,
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
          noise_layer = "sulfur",
          noise_octaves_difference = -3,
          noise_persistence = 0.45,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },

        {
          influence = -0.1,
          max_influence = 0,
          noise_layer = "copper-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.1,
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
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__bobores__/graphics/entity/sulfur/sulfur.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.8, g=0.75, b=0.1}
  },
}
)
