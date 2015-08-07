data.raw["electric-turret"]["laser-turret"].fast_replaceable_group = "laser-turret"
data.raw["ammo-turret"]["gun-turret"].fast_replaceable_group = "gun-turret"

require "util"

gun_turret_extension =
{
  filename = "__base__/graphics/entity/gun-turret/gun-turret-extension.png",
  priority = "medium",
  width = 171,
  height = 102,
  direction_count = 4,
  frame_count = 5,
  axially_symmetrical = false,
  shift = {1.34375, -0.5 + 0.6}
}

laser_turret_extension =
{
  filename = "__base__/graphics/entity/laser-turret/laser-turret-extension.png",
  priority = "medium",
  width = 131,
  height = 74,
  direction_count = 4,
  frame_count = 5,
  axially_symmetrical = false,
  shift = {1.171875, -0.34375}
}


data:extend(
{
  {
    type = "item",
    name = "gun-turret",
    icon = "__base__/graphics/icons/gun-turret.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "b[turret]-a[gun-turret]",
    place_result = "gun-turret",
    stack_size = 50
  },

  {
    type = "item",
    name = "laser-turret",
    icon = "__base__/graphics/icons/laser-turret.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "b[turret]-b[laser-turret]",
    place_result = "laser-turret",
    stack_size = 50
  },
}
)


data:extend(
{
  {
    type = "recipe",
    name = "gun-turret",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"iron-gear-wheel", 5},
      {"copper-plate", 5},
      {"iron-plate", 10}
    },
    result = "gun-turret"
  },

  {
    type = "recipe",
    name = "laser-turret",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"steel-plate", 5},
      {"electronic-circuit", 5},
      {"battery", 3}
    },
    result = "laser-turret"
  }
}
)


data:extend(
{
  {
    type = "ammo-turret",
    name = "gun-turret",
    icon = "__base__/graphics/icons/gun-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret"},
    max_health = 200,
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.9 }, {0.4, 0.9}},
    selection_box = {{-0.5, -1 }, {0.5, 1}},
    rotation_speed = 0.015,
    preparing_speed = 0.08,
    folding_speed = 0.08,
    dying_explosion = "huge-explosion",
    inventory_size = 1,
    automated_ammo_count = 10,
    folded_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension,
    prepared_animation =
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret.png",
      priority = "medium",
      width = 178,
      height = 107,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.34375, -0.46875 + 0.6}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0, -0.125 + 0.6 }
    },
    attack_parameters =
    {
      ammo_category = "bullet",
      cooldown = 6,
      projectile_center = {0, 0.6},
      projectile_creation_distance = 1.2,
      shell_particle = 
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.6},
        creation_distance = 0.6,
        starting_frame_speed = 0.2,
        starting_frame_speed_deviation = 0.1
      },
      range = 17,
      sound =
      {
        {
          filename = "__base__/sound/gunshot.ogg",
          volume = 0.3
        }
      }
    }
  },

  {
    type = "electric-turret",
    name = "laser-turret",
    icon = "__base__/graphics/icons/laser-turret.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation"},
    minable = { mining_time = 0.5, result = "laser-turret" },
    max_health = 250,
    corpse = "small-remnants",
    collision_box = {{ -0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "huge-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "201kJ",
      input_flow_limit = "1200kW",
      drain = "6kW",
      usage_priority = "primary-input"
    },
    folded_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = laser_turret_extension,
    prepared_animation =
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret.png",
      priority = "medium",
      width = 131,
      height = 72,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.328125, -0.375}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 20,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 25,
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "200kJ",
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser",
                starting_speed = 0.28
              }
            }
          }
        }
      },
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      }
    }
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "turrets",
    icon = "__base__/graphics/technology/turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gun-turret"
      }
    },
    unit =
    {
      count = 10,
      time = 10,
      ingredients =
      {
        {"science-pack-1", 1}
      },
    },
    order = "a-j-a"
  },

  {
    type = "technology",
    name = "laser-turrets",
    icon = "__base__/graphics/technology/laser-turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-turret"
      }
    },
    prerequisites =
    {
      "turrets",
      "laser",
      "battery"
    },
    unit =
    {
      count = 50,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
    },
    order = "a-j-b"
  },
}
)


