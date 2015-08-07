data:extend(
{
  {
    type = "gun",
    name = "rifle",
    icon = "__bobwarfare__/graphics/icons/rifle.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "a[basic-clips]-c[rifle]",
    stack_size = 5,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 30,
      movement_slow_down_factor = 0.5,
      projectile_creation_distance = 0.6,
      range = 20,
      damage_modifier = 7.5,
      sound = make_heavy_gunshot_sounds(),
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.6},
        creation_distance = 0.6,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
    },
  },

  {
    type = "gun",
    name = "sniper-rifle",
    icon = "__bobwarfare__/graphics/icons/sniper-rifle.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "a[basic-clips]-d[sniper-rifle]",
    stack_size = 5,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 120,
      movement_slow_down_factor = 0.75,
      projectile_creation_distance = 0.6,
      range = 60,
      damage_modifier = 30,
      sound = make_heavy_gunshot_sounds(),
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.6},
        creation_distance = 0.6,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
    },
  },

--tank weapon
  {
    type = "gun",
    name = "gatling-gun",
    icon = "__bobwarfare__/graphics/icons/gatling-gun.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-e[gatling-gun]",
    stack_size = 5,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 2,
      movement_slow_down_factor = 0.8,
      projectile_creation_distance = 0.6,
      range = 20,
      damage_modifier = 1.5,
      sound = make_heavy_gunshot_sounds(),
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.6},
        creation_distance = 0.6,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
    },
  },

--tank weapon
  {
    type = "gun",
    name = "tank-cannon-2",
    icon = "__base__/graphics/icons/tank-cannon.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon-2]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "cannon-shell",
      cooldown = 60,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 0.6,
      range = 25,
      damage_modifier = 1.5,
      sound =
      {
        {
          filename = "__base__/sound/fight/tank-cannon.ogg",
          volume = 0.7
        }
      }
    },
    stack_size = 5
  },

  {
    type = "gun",
    name = "laser-rifle",
    icon = "__bobwarfare__/graphics/icons/laser-rifle.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "b[laser-rifle]",
    stack_size = 5,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "laser-rifle",
      cooldown = 30,
      movement_slow_down_factor = 0.5,
      damage_modifier = 1,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 20,
      sound = make_laser_sounds(),
    },
  },
}
)


