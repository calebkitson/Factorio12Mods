data:extend(
{
  {
    type = "recipe",
    name = "fill-heavy-oil-barrel",
    enabled = "false",
    ingredients = 
    {
      {"empty-barrel", 1},
      {type="fluid", name="heavy-oil", amount=25}
    },
    icon = "__ExtraFluidStorage__/graphics/fill-heavy-oil-barrel.png",
    result = "heavy-oil-barrel",
    subgroup = "fluid-fill",
    category = "crafting-with-fluid"
  },
  {
    type = "recipe",
    name = "fill-light-oil-barrel",
    enabled = "false",
    ingredients = 
    {
      {"empty-barrel", 1},
      {type="fluid", name="light-oil", amount=25}
    },
    icon = "__ExtraFluidStorage__/graphics/fill-light-oil-barrel.png",
    result = "light-oil-barrel",
    subgroup = "fluid-fill",
    category = "crafting-with-fluid"
  },
  {
    type = "recipe",
    name = "fill-lubricant-barrel",
    enabled = "false",
    ingredients = 
    {
      {"empty-barrel", 1},
      {type="fluid", name="lubricant", amount=25}
    },
    icon = "__ExtraFluidStorage__/graphics/fill-lubricant-barrel.png",
    result = "lubricant-barrel",
    subgroup = "fluid-fill",
    category = "crafting-with-fluid"
  },
  {
    type = "recipe",
    name = "fill-petroleum-barrel",
    enabled = "false",
    ingredients = 
    {
      {"empty-barrel", 1},
      {type="fluid", name="petroleum-gas", amount=25}
    },
    icon = "__ExtraFluidStorage__/graphics/fill-petroleum-barrel.png",
    result = "petroleum-barrel",
    subgroup = "fluid-fill",
    category = "crafting-with-fluid"
  },
  {
    type = "recipe",
    name = "fill-sulfuric-acid-barrel",
    enabled = "false",
    ingredients = 
    {
      {"empty-barrel", 1},
      {type="fluid", name="sulfuric-acid", amount=25}
    },
    icon = "__ExtraFluidStorage__/graphics/fill-sulfuric-acid-barrel.png",
    result = "sulfuric-acid-barrel",
    subgroup = "fluid-fill",
    category = "crafting-with-fluid"
  },
  {
    type = "recipe",
    name = "fill-water-barrel",
    enabled = "false",
    ingredients = 
    {
      {"empty-barrel", 1},
      {type="fluid", name="water", amount=25}
    },
    icon = "__ExtraFluidStorage__/graphics/fill-water-barrel.png",
    result = "water-barrel",
    subgroup = "fluid-fill",
    category = "crafting-with-fluid"
  },
  {
    type = "recipe",
    name = "empty-heavy-oil-barrel",
    enabled = "false",
    ingredients = 
    {
      {"heavy-oil-barrel", 1}
    },
    results = 
    {
      {type="item", name="empty-barrel", amount=1},
      {type="fluid", name="heavy-oil", amount=25}
    },
    icon = "__ExtraFluidStorage__/graphics/empty-heavy-oil-barrel.png",
    subgroup = "fluid-empty",
    category = "crafting-with-fluid"
  },
  {
    type = "recipe",
    name = "empty-light-oil-barrel",
    enabled = "false",
    ingredients = 
    {
      {"light-oil-barrel", 1}
    },
    results = 
    {
      {type="item", name="empty-barrel", amount=1},
      {type="fluid", name="light-oil", amount=25}
    },
    icon = "__ExtraFluidStorage__/graphics/empty-light-oil-barrel.png",
    subgroup = "fluid-empty",
    category = "crafting-with-fluid"
  },
  {
    type = "recipe",
    name = "empty-lubricant-barrel",
    enabled = "false",
    ingredients = 
    {
      {"lubricant-barrel", 1}
    },
    results = 
    {
      {type="item", name="empty-barrel", amount=1},
      {type="fluid", name="lubricant", amount=25}
    },
    icon = "__ExtraFluidStorage__/graphics/empty-lubricant-barrel.png",
    subgroup = "fluid-empty",
    category = "crafting-with-fluid"
  },
  {
    type = "recipe",
    name = "empty-petroleum-barrel",
    enabled = "false",
    ingredients = 
    {
      {"petroleum-barrel", 1}
    },
    results = 
    {
      {type="item", name="empty-barrel", amount=1},
      {type="fluid", name="petroleum-gas", amount=25}
    },
    icon = "__ExtraFluidStorage__/graphics/empty-petroleum-barrel.png",
    subgroup = "fluid-empty",
    category = "crafting-with-fluid"
  },
  {
    type = "recipe",
    name = "empty-sulfuric-acid-barrel",
    enabled = "false",
    ingredients = 
    {
      {"sulfuric-acid-barrel", 1}
    },
    results = 
    {
      {type="item", name="empty-barrel", amount=1},
      {type="fluid", name="sulfuric-acid", amount=25}
    },
    icon = "__ExtraFluidStorage__/graphics/empty-sulfuric-acid-barrel.png",
    subgroup = "fluid-empty",
    category = "crafting-with-fluid"
  },
  {
    type = "recipe",
    name = "empty-water-barrel",
    enabled = "false",
    ingredients = 
    {
      {"water-barrel", 1}
    },
    results = 
    {
      {type="item", name="empty-barrel", amount=1},
      {type="fluid", name="water", amount=25}
    },
    icon = "__ExtraFluidStorage__/graphics/empty-water-barrel.png",
    subgroup = "fluid-empty",
    category = "crafting-with-fluid"
  }
})
