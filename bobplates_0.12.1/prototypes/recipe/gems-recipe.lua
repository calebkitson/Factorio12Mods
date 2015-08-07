if not bobmods then bobmods = {} end
if not bobmods.gems then bobmods.gems = {} end
if not bobmods.gems.RubyRatio then
  bobmods.gems.RubyRatio=1
end
if not bobmods.gems.SapphireRatio then
  bobmods.gems.SapphireRatio=0.8
end
if not bobmods.gems.EmeraldRatio then
  bobmods.gems.EmeraldRatio=0.6
end
if not bobmods.gems.AmethystRatio then
  bobmods.gems.AmethystRatio=0.5
end
if not bobmods.gems.TopazRatio then
  bobmods.gems.TopazRatio=0.4
end
if not bobmods.gems.DiamondRatio then
  bobmods.gems.DiamondRatio=0.2
end

data:extend(
{
  {
    type = "recipe",
    name = "sort-gem-ore",
--    category = "crafting-with-fluid",
    energy_required = 1,
    ingredients =
    {
	  {"gem-ore", 1},
    },
    results =
    {
      {type="item", name="ruby-3", amount=1, probability = bobmods.gems.RubyRatio},
      {type="item", name="sapphire-3", amount=1, probability = bobmods.gems.SapphireRatio},
      {type="item", name="emerald-3", amount=1, probability = bobmods.gems.EmeraldRatio},
      {type="item", name="amethyst-3", amount=1, probability = bobmods.gems.AmethystRatio},
      {type="item", name="topaz-3", amount=1, probability = bobmods.gems.TopazRatio},
      {type="item", name="diamond-3", amount=1, probability = bobmods.gems.DiamondRatio},
    },
    subgroup = "bob-gems-ore",
    icon = "__bobplates__/graphics/icons/ore/gem-ore.png",
    order = "a-0",
  },


  {
    type = "recipe",
    name = "bob-ruby-3",
    category = "crafting-with-fluid",
    energy_required = 1,
    ingredients =
    {
      {"ruby-ore", 1},
    },
    result = "ruby-3",
    result_count = 4
  },
  {
    type = "recipe",
    name = "bob-sapphire-3",
    category = "crafting-with-fluid",
    energy_required = 1,
    ingredients =
    {
      {"sapphire-ore", 1},
    },
    result = "sapphire-3",
    result_count = 4
  },
  {
    type = "recipe",
    name = "bob-emerald-3",
    category = "crafting-with-fluid",
    energy_required = 1,
    ingredients =
    {
      {"emerald-ore", 1},
    },
    result = "emerald-3",
    result_count = 4
  },
  {
    type = "recipe",
    name = "bob-amethyst-3",
    category = "crafting-with-fluid",
    energy_required = 1,
    ingredients =
    {
      {"amethyst-ore", 1},
    },
    result = "amethyst-3",
    result_count = 4
  },
  {
    type = "recipe",
    name = "bob-topaz-3",
    category = "crafting-with-fluid",
    energy_required = 1,
    ingredients =
    {
      {"topaz-ore", 1},
    },
    result = "topaz-3",
    result_count = 4
  },
  {
    type = "recipe",
    name = "bob-diamond-3",
    category = "crafting-with-fluid",
    energy_required = 1,
    ingredients =
    {
      {"diamond-ore", 1},
    },
    result = "diamond-3",
    result_count = 4
  },


  {
    type = "recipe",
    name = "bob-ruby-4",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 3.5,
    ingredients =
    {
      {"ruby-3", 1},
      {"grinding-wheel", 1},
      {type="fluid", name="water", amount=1},
    },
    result = "ruby-4",
  },
  {
    type = "recipe",
    name = "bob-sapphire-4",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 3.5,
    ingredients =
    {
      {"sapphire-3", 1},
      {"grinding-wheel", 1},
      {type="fluid", name="water", amount=1},
    },
    result = "sapphire-4",
  },
  {
    type = "recipe",
    name = "bob-emerald-4",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 3.5,
    ingredients =
    {
      {"emerald-3", 1},
      {"grinding-wheel", 1},
      {type="fluid", name="water", amount=1},
    },
    result = "emerald-4",
  },
  {
    type = "recipe",
    name = "bob-amethyst-4",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 3.5,
    ingredients =
    {
      {"amethyst-3", 1},
      {"grinding-wheel", 1},
      {type="fluid", name="water", amount=1},
    },
    result = "amethyst-4",
  },
  {
    type = "recipe",
    name = "bob-topaz-4",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 3.5,
    ingredients =
    {
      {"topaz-3", 1},
      {"grinding-wheel", 1},
      {type="fluid", name="water", amount=1},
    },
    result = "topaz-4",
  },
  {
    type = "recipe",
    name = "bob-diamond-4",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 3.5,
    ingredients =
    {
      {"diamond-3", 1},
      {"grinding-wheel", 1},
      {type="fluid", name="water", amount=1},
    },
    result = "diamond-4",
  },


  {
    type = "recipe",
    name = "bob-ruby-5",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 17.5,
    ingredients =
    {
      {"ruby-4", 1},
      {"polishing-wheel", 1},
      {"polishing-compound", 1},
    },
    result = "ruby-5",
  },
  {
    type = "recipe",
    name = "bob-sapphire-5",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 17.5,
    ingredients =
    {
      {"sapphire-4", 1},
      {"polishing-wheel", 1},
      {"polishing-compound", 1},
    },
    result = "sapphire-5",
  },
  {
    type = "recipe",
    name = "bob-emerald-5",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 17.5,
    ingredients =
    {
      {"emerald-4", 1},
      {"polishing-wheel", 1},
      {"polishing-compound", 1},
    },
    result = "emerald-5",
  },
  {
    type = "recipe",
    name = "bob-amethyst-5",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 17.5,
    ingredients =
    {
      {"amethyst-4", 1},
      {"polishing-wheel", 1},
      {"polishing-compound", 1},
    },
    result = "amethyst-5",
  },
  {
    type = "recipe",
    name = "bob-topaz-5",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 17.5,
    ingredients =
    {
      {"topaz-4", 1},
      {"polishing-wheel", 1},
      {"polishing-compound", 1},
    },
    result = "topaz-5",
  },
  {
    type = "recipe",
    name = "bob-diamond-5",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 17.5,
    ingredients =
    {
      {"diamond-4", 1},
      {"polishing-wheel", 1},
      {"polishing-compound", 1},
    },
    result = "diamond-5",
  },
}
)

