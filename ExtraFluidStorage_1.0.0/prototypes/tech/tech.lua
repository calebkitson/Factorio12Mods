data:extend(
{
  {
    type = "technology",
    name = "advanced-fluid-handling",
    icon = "__ExtraFluidStorage__/graphics/heavy-oil-barrel.png",
    effects = 
    {
      {
        type = "unlock-recipe",
        recipe = "empty-heavy-oil-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-light-oil-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-lubricant-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-sulfuric-acid-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-water-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-heavy-oil-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-light-oil-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-lubricant-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-sulfuric-acid-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-water-barrel"
      }
    },
    prerequisites = { "fluid-handling"},
    unit = {
      count = 100,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    }
  },
})