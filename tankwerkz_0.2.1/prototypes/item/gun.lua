data:extend(
{
  {
    type = "gun",
    name = "hydra-rocket-launcher",
    icon = "__tankwerkz__/graphics/icons/hydra-rocket-launcher.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "d[rocket-launcher]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "hydra-rocket",
      movement_slow_down_factor = 0.8,
      cooldown = 10,
      projectile_creation_distance = 0.6,
      range = 30
    },
    stack_size = 5
  },
  {
    type = "gun",
    name = "heavy-mg",
    icon = "__tankwerkz__/graphics/icons/heavy-mg.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "a[basic-clips]-b[submachine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "heavy-mg",
      cooldown = 3,
      movement_slow_down_factor = 0.7,
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
      projectile_creation_distance = 0.6,
      range = 15,
      sound = make_heavy_gunshot_sounds(),
    },
    stack_size = 1
  },
  {
    type = "gun",
    name = "chem-cannon",
    icon = "__base__/graphics/icons/rocket-launcher.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "d[rocket-launcher]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "chemical",
      movement_slow_down_factor = 0.6,
      cooldown = 2,
      projectile_creation_distance = 0.6,
      range = 50
    },
    stack_size = 5
  }
}
)
