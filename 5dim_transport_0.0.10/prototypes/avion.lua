data:extend({
--Entity
  {
    type = "car",
    name = "car",
    icon = "__5dim_transport__/graphics/icon/avion.png",
    flags = {"pushable", "placeable-neutral", "player-creation","placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "car"},
    max_health = 300,
	energy_per_hit_point = 0.1,
    corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
    resistances = 
    {
      {
        type = "physical",
        percent = 10
      },
      {
        type = "impact",
        decrease = 80,
        percent = 80
      }
    },
    collision_box = {{-0.7, -1}, {0.7, 1}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
	collision_mask = {"ghost-layer"},
    effectivity = 0.6,
    braking_power = "200kW",
    burner =
    {
      effectivity = 1,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.25, 0.25},
          frequency = 10,
          position = {0, 1.5},
          slow_down_factor = 0.9,
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        }
      }
    },
    consumption = "150kW",
    friction = 2e-3,
    light =
    {
      {
        minimum_darkness = 0.3,
        intensity = 0.5,
        size = 40,
      }
    },
    animation =
    {
      filename = "__5dim_transport__/graphics/icon/avion.png",
      line_length = 6,
      width = 88,
      height = 83,
      scale=1.4,
	  frame_count = 1,
      axially_symmetrical = false,
      direction_count = 36
    },    
	stop_trigger_speed = 0.2,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    crash_trigger = crash_trigger(),
    sound_minimum_speed = 0.2;
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/car-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.008,
    weight = 10000,
    inventory_size = 80
  },
})