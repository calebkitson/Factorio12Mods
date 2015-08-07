require "config"

----Entity----
require("prototypes.entity.filter-inserter-entity")
require("prototypes.entity.fast-inserter-entity-texture-fix")
----Item----
require("prototypes.item.filter-inserter-item")
----Recipe----
require("prototypes.recipe.filter-inserter-recipe")
require("prototypes.recipe.science-pack-3-recipe-change")
require("prototypes.recipe.smart-inserter-recipe-change")
----Technology----
require("prototypes.technology.filter-inserter-technology")
--require("prototypes.technology.smart-inserter-technology-change")
--Disabled smart inserter change for mod compatibility.

----Side Inserters Addon----
SIDE_SPEED_FACTOR = 0.70
--Side Inserters Mod auto detection. 
if data.raw["inserter"]["burner-inserter-left"] ~= nil and data.raw["inserter"]["burner-inserter-right"] ~= nil then
	require("prototypes.entity.filter-inserter-side-inserters-entity")
	require("prototypes.item.filter-inserter-side-inserters-item")
	require("prototypes.recipe.filter-inserter-side-inserters-recipe")
	require("prototypes.technology.filter-inserter-side-inserters-technology")
end
--Override to Force having Side Inserters without mod.
--Go to config to make change.
if Sideinserters then 
	require("prototypes.entity.filter-inserter-side-inserters-entity")
	require("prototypes.item.filter-inserter-side-inserters-item")
	require("prototypes.recipe.filter-inserter-side-inserters-recipe")
	require("prototypes.technology.filter-inserter-side-inserters-technology")
end
