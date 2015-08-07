data:extend(
{
  {
    type = "ammo",
    name = "ap-cannon-shell",
    icon = "__tankwerkz__/graphics/icons/cannon-shell-ap.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "cannon-shell",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "ap-cannon-projectile",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 40
        }
      },
    },
    subgroup = "ammo",
    order = "d[rocket-launcher]-a[basic]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "hiex-cannon-shell",
    icon = "__tankwerkz__/graphics/icons/cannon-shell-hiex.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "cannon-shell",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "hiex-cannon-projectile",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 30
        }
      },
    },
    subgroup = "ammo",
    order = "d[rocket-launcher]-a[basic]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "hydra-rocket",
    icon = "__tankwerkz__/graphics/icons/hydra-rocket.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "hydra-rocket",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "hydra-rocket",
          starting_speed = 0.1,
          direction_deviation = 0.25,
          range_deviation = 0.25,
          max_range = 30,
          
        }
      }
    },
    subgroup = "ammo",
    order = "d[rocket-launcher]-a[basic]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "chem-ammo",
    icon = "__base__/graphics/icons/flame-thrower-ammo.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "chemical",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          {
            type = "flame-thrower",
            explosion = "chemical-thrower-explosion",
            direction_deviation = 0.07,
            speed_deviation = 0.1,
            starting_frame_deviation = 0.07,
            damage = { amount = 20, type = "poison"},
            projectile_starting_speed = 0.2,
            starting_distance = .6,
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "ammo",
    order = "e[flame-thrower]",
    stack_size = 50
  },
  {
    type = "ammo",
    name = "heavy-mg-ammo",
    icon = "__tankwerkz__/graphics/icons/heavy-mg-ammo.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "heavy-mg",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
              type = "create-entity",
              entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot"
            },
            {
              type = "damage",
              damage = { amount = 10 , type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "ammo",
    order = "a[basic-clips]-b[piercing-bullet-magazine]",
    stack_size = 100
  }
}
)
