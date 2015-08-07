require("config")

require("prototypes.recipe.roboport-recipe-updates")
require("prototypes.recipe.inserter-recipe-updates")
require("prototypes.recipe.belt-recipe-updates")
require("prototypes.recipe.tank-recipe-updates")
require("prototypes.recipe.train-recipe-updates")

if DrainlessInserters == true then
  for index, inserter in pairs(data.raw.inserter) do
    inserter.energy_source.drain = "0W"
  end
end

require("prototypes.technology-updates")


