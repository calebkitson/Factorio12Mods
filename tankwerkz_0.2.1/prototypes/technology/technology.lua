data.raw["technology"]["tanks"].prerequisites = {"light-tanks"}
data.raw["technology"]["tanks"].unit = {count=50,ingredients = {{"science-pack-1",1},{"science-pack-2",1},{"science-pack-3",1}},time=30}


data:extend(
{
  {
    type = "technology",
    name = "light-tanks",
    icon = "__base__/graphics/icons/tank.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "light-tank"
      }
    },
    prerequisites = {"automobilism", "military-3"},
    unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 20
    },
    order = "e-c-b"
  },
  {
    type = "technology",
    name = "adv-tanks",
    icon = "__base__/graphics/icons/tank.png",
    effects =
    {
    },
    prerequisites = {"tanks"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    order = "e-c-d"
  },
  {
    type = "technology",
    name = "hi-velocity",
    icon = "__tankwerkz__/graphics/icons/cannon-shell-ap.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ap-cannon-shell"
      }
    },
    prerequisites = {"military-4", "adv-tanks"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    order = "e-c-e"
  },
  {
    type = "technology",
    name = "hi-explosive",
    icon = "__tankwerkz__/graphics/icons/cannon-shell-hiex.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "hiex-cannon-shell"
      }
    },
    prerequisites = {"explosive-rocketry", "adv-tanks"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    order = "e-c-e"
  },
  {
    type = "technology",
    name = "fast-loading",
    icon = "__tankwerkz__/graphics/icons/heavy-mg-ammo.png",
    effects =
    {
    },
    prerequisites = {"military-4", "adv-tanks"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "e-c-f"
  },
  {
    type = "technology",
    name = "miniaturization",
    icon = "__tankwerkz__/graphics/icons/hydra-rocket.png",
    effects =
    {
    },
    prerequisites = {"military-4", "adv-tanks"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "e-c-f"
  },
  {
    type = "technology",
    name = "hydra-tank",
    icon = "__tankwerkz__/graphics/icons/hydra-tank.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "hydra-tank"
      },
      {
        type = "unlock-recipe",
        recipe = "hydra-rocket"
      }
    },
    prerequisites = {"fast-loading", "miniaturization", "explosive-rocketry"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    order = "e-c-f"
  },
  {
    type = "technology",
    name = "heavy-machinegun",
    icon = "__tankwerkz__/graphics/icons/heavy-mg.png",
    effects =
    {
    },
    prerequisites = {"adv-tanks", "fast-loading"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "e-c-i"
  },
  {
    type = "technology",
    name = "heavy-tank",
    icon = "__base__/graphics/icons/tank.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "heavy-tank"
      },
      {
        type = "unlock-recipe",
        recipe = "heavy-mg-ammo"
      }
    },
    prerequisites = {"heavy-machinegun"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 60
    },
    order = "e-c-i"
  }
}
)



--[[  {
    type = "technology",
    name = "outlawed-tech",
    icon = "__base__/graphics/icons/tank.png",
    effects =
    {
   },
    prerequisites = {"alien-technology", "adv-tanks"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 60
    },
    order = "e-c-g"
  },
  {
    type = "technology",
    name = "chemical-warfare",
    icon = "__base__/graphics/icons/tank.png",
    effects =
    {
    },
    prerequisites = {"outlawed-tech"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    order = "e-c-h"
  },
  {
    type = "technology",
    name = "chem-tank",
    icon = "__base__/graphics/icons/tank.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "chem-tank"
      },
      {
        type = "unlock-recipe",
        recipe = "chem-ammo"
      }
    },
    prerequisites = {"chemical-warfare"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    order = "e-c-h"
  },
--]]