data:extend(
{
  {
    type = "autoplace-control",
    name = "quartz",
    richness = true,
    order = "b-f-q"
  },

  {
    type = "noise-layer",
    name = "quartz"
  },

  {
    type = "item",
    name = "quartz",
    icon = "__bobores__/graphics/icons/quartz.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "f-a[quartz]",
    stack_size = 200
  },

  ore_particle{name = "quartz-particle", tint = {r = 1, g = 1, b = 1}},

  {
    type = "resource",
    name = "quartz",
    icon = "__bobores__/graphics/icons/quartz.png",
    flags = {"placeable-neutral"},
    order="a-b-f-g-b",
    minable =
    {
      hardness = 0.5,
      mining_particle = "quartz-particle",
      mining_time = 2,
      results =
      {
        {type="item", name="quartz", amount=1},
      }
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "quartz",
      sharpness = 1,
      richness_multiplier = 13000,
      richness_base = 250,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.15,
        },
        {
          influence = 0.65,
          noise_layer = "quartz",
          noise_octaves_difference = -2.4,
          noise_persistence = 0.35,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.7,
          noise_layer = "quartz",
          noise_octaves_difference = -4.5,
          noise_persistence = 0.5,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__bobores__/graphics/entity/quartz/quartz.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=1, g=1, b=1}
  },
}
)
