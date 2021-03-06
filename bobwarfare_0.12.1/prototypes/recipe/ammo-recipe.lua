data:extend(
{ 
  {
    type = "recipe",
    name = "bullet-magazine",
    subgroup = "bob-ammo",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {"bullet", 5},
      {"magazine", 1},
    },
    result = "bullet-magazine",
  },

  {
    type = "recipe",
    name = "ap-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = "false",
    energy_required = 3,
    ingredients =
    {
      {"ap-bullet", 5},
      {"magazine", 1},
    },
    result = "ap-bullet-magazine"
  },

  {
    type = "recipe",
    name = "he-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = "false",
    energy_required = 3,
    ingredients =
    {
      {"he-bullet", 5},
      {"magazine", 1},
    },
    result = "he-bullet-magazine"
  },

  {
    type = "recipe",
    name = "flame-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = "false",
    energy_required = 3,
    ingredients =
    {
      {"flame-bullet", 5},
      {"magazine", 1},
    },
    result = "flame-bullet-magazine"
  },

  {
    type = "recipe",
    name = "acid-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = "false",
    energy_required = 3,
    ingredients =
    {
      {"acid-bullet", 5},
      {"magazine", 1},
    },
    result = "acid-bullet-magazine"
  },

  {
    type = "recipe",
    name = "poison-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = "false",
    energy_required = 3,
    ingredients =
    {
      {"poison-bullet", 5},
      {"magazine", 1},
    },
    result = "poison-bullet-magazine"
  },

  {
    type = "recipe",
    name = "impact-bullet-magazine",
    subgroup = "bob-ammo",
    enabled = "false",
    energy_required = 3,
    ingredients =
    {
      {"impact-bullet", 5},
      {"magazine", 1},
    },
    result = "impact-bullet-magazine"
  },


  {
    type = "recipe",
    name = "better-shotgun-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"shotgun-shell-casing", 1},
      {"shot", 1},
      {"cordite", 1},
    },
    result = "better-shotgun-shell",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "shotgun-ap-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"shotgun-shell-casing", 1},
      {"tungsten-plate", 1},
      {"cordite", 1},
    },
    result = "shotgun-ap-shell",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "shotgun-impact-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"shotgun-shell-casing", 1},
      {"steel-plate", 1},
      {"cordite", 1},
    },
    result = "shotgun-impact-shell",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "shotgun-explosive-shell",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"shotgun-shell-casing", 1},
      {"explosives", 1},
      {"cordite", 1},
    },
    result = "shotgun-explosive-shell",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "shotgun-flame-shell",
    category = "chemistry",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"shotgun-shell-casing", 1},
      {type="fluid", name="light-oil", amount=0.5},
      {type="fluid", name="heavy-oil", amount=0.5},
      {"cordite", 1},
    },
    result = "shotgun-flame-shell",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "shotgun-acid-shell",
    category = "crafting-with-fluid",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"shotgun-shell-casing", 1},
      {type="fluid", name="nitric-acid", amount=1},
      {"cordite", 1},
    },
    result = "shotgun-acid-shell",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "shotgun-poison-shell",
    category = "crafting-with-fluid",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"shotgun-shell-casing", 1},
      {type="fluid", name="sulfuric-acid", amount=1},
      {"cordite", 1},
    },
    result = "shotgun-poison-shell",
    result_count = 1,
  },


--[[
  {
    type = "recipe",
    name = "flame-thrower-acid",
    category = "chemistry",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"empty-canister", 1},
      {type="fluid", name="nitric-acid", amount=5},
    },
    result = "flame-thrower-acid",
    result_count = 1,
  },
]]--


  {
    type = "recipe",
    name = "laser-rifle-battery",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"laser-rifle-battery-case", 1},
      {"battery", 4},
      {"glass", 1},
    },
    result = "laser-rifle-battery",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "laser-rifle-battery-ruby",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"laser-rifle-battery-case", 1},
      {"battery", 4},
      {"ruby-5", 1},
    },
    result = "laser-rifle-battery-ruby",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "laser-rifle-battery-sapphire",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"laser-rifle-battery-case", 1},
      {"battery", 4},
      {"sapphire-5", 1},
    },
    result = "laser-rifle-battery-sapphire",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "laser-rifle-battery-emerald",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"laser-rifle-battery-case", 1},
      {"battery", 4},
      {"emerald-5", 1},
    },
    result = "laser-rifle-battery-emerald",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "laser-rifle-battery-amethyst",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"laser-rifle-battery-case", 1},
      {"battery", 4},
      {"amethyst-5", 1},
    },
    result = "laser-rifle-battery-amethyst",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "laser-rifle-battery-topaz",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"laser-rifle-battery-case", 1},
      {"battery", 4},
      {"topaz-5", 1},
    },
    result = "laser-rifle-battery-topaz",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "laser-rifle-battery-diamond",
    subgroup = "bob-ammo",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"laser-rifle-battery-case", 1},
      {"battery", 4},
      {"diamond-5", 1},
    },
    result = "laser-rifle-battery-diamond",
    result_count = 1,
  },


  {
    type = "recipe",
    name = "bob-rocket",
    enabled = "false",
    energy_required = 8,
    ingredients =
    {
      {"rocket-body", 1},
      {"rocket-warhead", 1}
    },
    result = "bob-rocket"
  },

  {
    type = "recipe",
    name = "bob-piercing-rocket",
    enabled = "false",
    energy_required = 8,
    ingredients =
    {
      {"rocket-body", 1},
      {"piercing-rocket-warhead", 1}
    },
    result = "bob-piercing-rocket"
  },

  {
    type = "recipe",
    name = "bob-impact-rocket",
    enabled = "false",
    energy_required = 8,
    ingredients =
    {
      {"rocket-body", 1},
      {"impact-rocket-warhead", 1}
    },
    result = "bob-impact-rocket"
  },

  {
    type = "recipe",
    name = "bob-explosive-rocket",
    enabled = "false",
    energy_required = 8,
    ingredients =
    {
      {"rocket-body", 1},
      {"explosive-rocket-warhead", 1}
    },
    result = "bob-explosive-rocket"
  },

  {
    type = "recipe",
    name = "bob-acid-rocket",
    enabled = "false",
    energy_required = 8,
    ingredients =
    {
      {"rocket-body", 1},
      {"acid-rocket-warhead", 1}
    },
    result = "bob-acid-rocket"
  },

  {
    type = "recipe",
    name = "bob-flame-rocket",
    enabled = "false",
    energy_required = 8,
    ingredients =
    {
      {"rocket-body", 1},
      {"flame-rocket-warhead", 1}
    },
    result = "bob-flame-rocket"
  },

  {
    type = "recipe",
    name = "bob-poison-rocket",
    enabled = "false",
    energy_required = 8,
    ingredients =
    {
      {"rocket-body", 1},
      {"poison-rocket-warhead", 1}
    },
    result = "bob-poison-rocket"
  },
}
)



