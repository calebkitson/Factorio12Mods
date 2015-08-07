require("config")

require("prototypes.category")

require("prototypes.storage-tank")

require("prototypes.green-transport-belt")
if ExtremelyFastBelt == true then
  require("prototypes.purple-transport-belt")
end

require("prototypes.inserter")
if LongInserters == true then
  require("prototypes.long-inserter")
  if NearInserters == true then
    require("prototypes.near-inserter")
    if MoreInserters == true then
      require("prototypes.more-inserter")
    end
  end
end


require("prototypes.item.train")
require("prototypes.item.robots")
require("prototypes.item.roboport")
require("prototypes.roboport-parts")
require("prototypes.item.pipes")

require("prototypes.entity.train")
require("prototypes.entity.robots")
require("prototypes.entity.roboport")
require("prototypes.entity.pipes")

require("prototypes.recipe.train-recipe")
require("prototypes.recipe.robots-recipe")
require("prototypes.recipe.roboport-recipe")
require("prototypes.recipe.pipes-recipe")


require("prototypes.technology")
require("prototypes.technology-logistics")

