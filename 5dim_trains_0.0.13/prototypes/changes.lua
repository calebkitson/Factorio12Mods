data:extend({
  {
    type = "item",
    name = "rail-chain-signal",
    icon = "__base__/graphics/icons/rail-chain-signal.png",
    flags = {"goes-to-quickbar"},
    subgroup = "trains-misc",
    order = "c",
    place_result = "rail-chain-signal",
    stack_size = 50
  },
  {
    type = "item",
    name = "straight-rail",
    icon = "__base__/graphics/icons/straight-rail.png",
    flags = {"goes-to-quickbar"},
    subgroup = "trains-rails",
    order = "a",
    place_result = "straight-rail",
    stack_size = 50
  },
  {
    type = "item",
    name = "curved-rail",
    icon = "__base__/graphics/icons/curved-rail.png",
    flags = {"goes-to-quickbar"},
    subgroup = "trains-rails",
    order = "b",
    place_result = "curved-rail",
    stack_size = 50
  },
  {
    type = "item",
    name = "diesel-locomotive",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"goes-to-quickbar"},
    subgroup = "trains-locomotive",
    order = "a",
    place_result = "diesel-locomotive",
    stack_size = 5
  },
  {
    type = "item",
    name = "cargo-wagon",
    icon = "__5dim_trains__/resources/icons/cargo-wagon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "trains-wagons",
    order = "a",
    place_result = "cargo-wagon",
    stack_size = 5
  },
  {
    type = "item",
    name = "train-stop",
    icon = "__base__/graphics/icons/train-stop.png",
    flags = {"goes-to-quickbar"},
    subgroup = "trains-misc",
    order = "a",
    place_result = "train-stop",
    stack_size = 10
  },
  {
    type = "item",
    name = "rail-signal",
    icon = "__base__/graphics/icons/rail-signal.png",
    flags = {"goes-to-quickbar"},
    subgroup = "trains-misc",
    order = "b",
    place_result = "rail-signal",
    stack_size = 50
  },
  
  
  {
    type = "cargo-wagon",
    name = "cargo-wagon",
    icon = "__5dim_trains__/resources/icons/cargo-wagon.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    inventory_size = 30,
    minable = {mining_time = 1, result = "cargo-wagon"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 600,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-0.7, -2.5}, {1, 2.5}},
    weight = 1000,
    max_speed = 1.5,
    braking_force = 3,
    friction_force = 0.0015,
    air_resistance = 0.002,
    connection_distance = 3.3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    pictures =
    {
      priority = "very-low",
      width = 256,
      height = 256,
      axially_symmetrical = false,
      back_equals_front = true,
      direction_count = 64,
      filenames =
      {
        "__5dim_trains__/resources/wagon-cargo/spritesheet-1.png",
        "__5dim_trains__/resources/wagon-cargo/spritesheet-2.png",
        "__5dim_trains__/resources/wagon-cargo/spritesheet-3.png",
        "__5dim_trains__/resources/wagon-cargo/spritesheet-4.png",
        "__5dim_trains__/resources/wagon-cargo/spritesheet-5.png",
        "__5dim_trains__/resources/wagon-cargo/spritesheet-6.png",
        "__5dim_trains__/resources/wagon-cargo/spritesheet-7.png",
        "__5dim_trains__/resources/wagon-cargo/spritesheet-8.png",
      },
      line_length = 4,
      lines_per_file = 4,
      shift={0.4, -1.20}
    },
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.5
      },
      match_volume_to_activity = true,
    },
    crash_trigger = crash_trigger(),
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
  },
})