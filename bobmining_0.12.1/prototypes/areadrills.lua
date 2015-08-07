data.raw["mining-drill"]["basic-mining-drill"].fast_replaceable_group = "mining-drill"
data.raw.item["basic-mining-drill"].order = "a[items]-b-0[basic-mining-drill]"

data:extend(
{
  {
    type = "item",
    name = "bob-area-mining-drill-1",
    icon = "__base__/graphics/icons/basic-mining-drill.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "a[items]-b-b[mining-drill-1]",
    place_result = "bob-area-mining-drill-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "bob-area-mining-drill-2",
    icon = "__base__/graphics/icons/basic-mining-drill.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "a[items]-b-b[mining-drill-2]",
    place_result = "bob-area-mining-drill-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "bob-area-mining-drill-3",
    icon = "__base__/graphics/icons/basic-mining-drill.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "a[items]-b-b[mining-drill-3]",
    place_result = "bob-area-mining-drill-3",
    stack_size = 50
  },
  {
    type = "item",
    name = "bob-area-mining-drill-4",
    icon = "__base__/graphics/icons/basic-mining-drill.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "a[items]-b-b[mining-drill-4]",
    place_result = "bob-area-mining-drill-4",
    stack_size = 50
  },
}
)


data:extend(
{
  {
    type = "recipe",
    name = "bob-area-mining-drill-1",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {"basic-mining-drill", 1},
    },
    result = "bob-area-mining-drill-1"
  },
  {
    type = "recipe",
    name = "bob-area-mining-drill-2",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {"bob-area-mining-drill-1", 1},
    },
    result = "bob-area-mining-drill-2"
  },
  {
    type = "recipe",
    name = "bob-area-mining-drill-3",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {"bob-area-mining-drill-2", 1},
    },
    result = "bob-area-mining-drill-3"
  },
  {
    type = "recipe",
    name = "bob-area-mining-drill-4",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {"bob-area-mining-drill-3", 1},
    },
    result = "bob-area-mining-drill-4"
  },
}
)


data:extend(
{
  {
    type = "mining-drill",
    name = "bob-area-mining-drill-1",
    icon = "__base__/graphics/icons/basic-mining-drill.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bob-area-mining-drill-1"},
    max_health = 450,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__base__/graphics/entity/basic-mining-drill/north.png",
        frame_count = 64,
        animation_speed = 0.75,
        run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__base__/graphics/entity/basic-mining-drill/east.png",
        frame_count = 64,
        animation_speed = 0.75,
        run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__base__/graphics/entity/basic-mining-drill/south.png",
        frame_count = 64,
        animation_speed = 0.75,
        run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__base__/graphics/entity/basic-mining-drill/west.png",
        frame_count = 64,
        animation_speed = 0.75,
        run_mode = "forward-then-backward",
      }
    },
    energy_source =
    {
      type = "electric",
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "171kW",
    mining_speed = 0.75,
    mining_power = 4,
    resource_searching_radius = 3.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 3,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    storage_slots = 6,
    fast_replaceable_group = "mining-drill",
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/basic-mining-drill/mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "bob-area-mining-drill-2",
    icon = "__base__/graphics/icons/basic-mining-drill.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bob-area-mining-drill-2"},
    max_health = 600,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__base__/graphics/entity/basic-mining-drill/north.png",
        frame_count = 64,
        animation_speed = 1,
        run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__base__/graphics/entity/basic-mining-drill/east.png",
        frame_count = 64,
        animation_speed = 1,
        run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__base__/graphics/entity/basic-mining-drill/south.png",
        frame_count = 64,
        animation_speed = 1,
        run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__base__/graphics/entity/basic-mining-drill/west.png",
        frame_count = 64,
        animation_speed = 1,
        run_mode = "forward-then-backward",
      }
    },
    energy_source =
    {
      type = "electric",
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "270kW",
    mining_speed = 1,
    mining_power = 5,
    resource_searching_radius = 5.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    storage_slots = 6,
    fast_replaceable_group = "mining-drill",
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/basic-mining-drill/mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "bob-area-mining-drill-3",
    icon = "__base__/graphics/icons/basic-mining-drill.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bob-area-mining-drill-3"},
    max_health = 750,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__base__/graphics/entity/basic-mining-drill/north.png",
        frame_count = 64,
        animation_speed = 1.25,
        run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__base__/graphics/entity/basic-mining-drill/east.png",
        frame_count = 64,
        animation_speed = 1.25,
        run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__base__/graphics/entity/basic-mining-drill/south.png",
        frame_count = 64,
        animation_speed = 1.25,
        run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__base__/graphics/entity/basic-mining-drill/west.png",
        frame_count = 64,
        animation_speed = 1.25,
        run_mode = "forward-then-backward",
      }
    },
    energy_source =
    {
      type = "electric",
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "383kW",
    mining_speed = 1.25,
    mining_power = 6,
    resource_searching_radius = 6.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    storage_slots = 6,
    fast_replaceable_group = "mining-drill",
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/basic-mining-drill/mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "bob-area-mining-drill-4",
    icon = "__base__/graphics/icons/basic-mining-drill.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bob-area-mining-drill-4"},
    max_health = 900,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__base__/graphics/entity/basic-mining-drill/north.png",
        frame_count = 64,
        animation_speed = 1.5,
        run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__base__/graphics/entity/basic-mining-drill/east.png",
        frame_count = 64,
        animation_speed = 1.5,
        run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__base__/graphics/entity/basic-mining-drill/south.png",
        frame_count = 64,
        animation_speed = 1.5,
        run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__base__/graphics/entity/basic-mining-drill/west.png",
        frame_count = 64,
        animation_speed = 1.5,
        run_mode = "forward-then-backward",
      }
    },
    energy_source =
    {
      type = "electric",
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "504kW",
    mining_speed = 1.5,
    mining_power = 7,
    resource_searching_radius = 8.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 5,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    storage_slots = 6,
    fast_replaceable_group = "mining-drill",
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/basic-mining-drill/mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "bob-area-drills-1",
    icon = "__base__/graphics/icons/basic-mining-drill.png",
    order = "d-a-b-1",
    upgrade = "true",
    prerequisites =
    {
      "steel-processing"
    },
    unit =
    {
      count = 50,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-area-mining-drill-1"
      },
    },
  },
  {
    type = "technology",
    name = "bob-area-drills-2",
    icon = "__base__/graphics/icons/basic-mining-drill.png",
    order = "d-a-b-2",
    upgrade = "true",
    prerequisites =
    {
      "bob-area-drills-1"
    },
    unit =
    {
      count = 75,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-area-mining-drill-2"
      },
    },
  },
  {
    type = "technology",
    name = "bob-area-drills-3",
    icon = "__base__/graphics/icons/basic-mining-drill.png",
    order = "d-a-b-3",
    upgrade = "true",
    prerequisites =
    {
      "bob-area-drills-2"
    },
    unit =
    {
      count = 100,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-area-mining-drill-3"
      },
    },
  },
  {
    type = "technology",
    name = "bob-area-drills-4",
    icon = "__base__/graphics/icons/basic-mining-drill.png",
    order = "d-a-b-4",
    upgrade = "true",
    prerequisites =
    {
      "bob-area-drills-3"
    },
    unit =
    {
      count = 150,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-area-mining-drill-4"
      },
    },
  },
}
)

