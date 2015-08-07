data:extend(
{
  {
    type = "recipe",
    name = "ap-cannon-shell",
    enabled = "false",
    energy_required = 8,
    ingredients =
    {
      {"cannon-shell", 1},
      {"advanced-circuit", 2},
      {"steel-plate", 4},
    },
    result = "ap-cannon-shell"
  },
  {
    type = "recipe",
    name = "hiex-cannon-shell",
    enabled = "false",
    energy_required = 8,
    ingredients =
    {
      {"explosive-cannon-shell", 1},
      {"steel-plate", 4},
      {"explosives", 8},
    },
    result = "hiex-cannon-shell"
  },
  {
    type = "recipe",
    name = "hydra-rocket",
    enabled = "false",
    energy_required = 4,
    ingredients =
    {
      {"steel-plate", 2},
      {"plastic-bar", 1},
      {"explosives", 2},
      {"electronic-circuit", 2},
    },
    result = "hydra-rocket"
  },
  {
    type = "recipe",
    name = "heavy-mg-ammo",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"piercing-bullet-magazine", 10},
      {"steel-plate", 6},
      {"advanced-circuit", 1},
    },
    result = "heavy-mg-ammo"
  },
  {
    type = "recipe",
    name = "chem-ammo",
    category = "chemistry",
    enabled = "false",
    energy_required = 3,
    ingredients =
    {
      {type="item", name="iron-plate", amount=5},
      {type="item", name="sulfur", amount=2},
      {type="item", name="coal", amount=2},
      {type="fluid", name="heavy-oil", amount=2.5}
    },
    result = "chem-ammo"
  }
}
)
