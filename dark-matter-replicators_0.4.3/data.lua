--Roadmap:
	--0.4.4
		--Figure out if repeatedly extending data causes problems (I see no reason why extending a table repeatedly would cause any problems in LUA but jamupsi seems to have specifically avoided doing this for some reason.  As of 0.4.3 this is done in the replicator recipe creator for the sake of the technology existence checker.)
		--Split off the replication recipe creation part of the repltech creation function so that it is a separate function
		--Use this new function along with unlock assignments so that all 0 rep technologies are merged into their prerequisites
		--Make basic and advanced electric poles into unconnected technologies
		--Create a new categoy icon of replication-related crafting recipes
	--0.4.5
		--Break recipes up into subcategories based on replication type and then have them ordered within those subcategories by tier first and internal name second
		--Have the replication recipes ordered by tier first, subcategory second and internal name third
		--Redo the replication icons so that each subcategory has its own border
		--Create a new particle effect for when mining tenemut by hand
	--0.4.6+
		--Add more mod-related items
			--Treefarm
			--5dim's mod
			--Landfill
			--Maybe dogs from DyTech?  Are they even items?
			--DyTech components
			--Bob components
		--Change names, icons, prerequisites and replication speeds based on which other mods are active
	--0.5.0
		--Reduce clutter by merging most replication recipes into groups
	--Even later
		--Create new graphics for the replicator pipe attachment points
		--Remake the item existence checker so that it recognizes items of the repair-tool, mining-tool and deconstruction-item item types


function research(count, one, two, three, four, time)
  local ing = {}
  if one > 0 then
    ing[#ing + 1] = {"science-pack-1", one}
  end
  if two > 0 then
    ing[#ing + 1] = {"science-pack-2", two}
  end
  if three > 0 then
    ing[#ing + 1] = {"science-pack-3", three}
  end
  if four > 0 then
    ing[#ing + 1] = {"alien-science-pack", four}
  end
  local unit = {
    count = count or 10,
    ingredients = ing,
    time=time or 10
  }
  return unit
end


function repl_research(count, one, two, three, four, time)
  local ing = {}
  if one > 0 then
    ing[#ing + 1] = {"tenemut", one}
  end
  if two > 0 then
    ing[#ing + 1] = {"dark-matter-scoop", two}
  end
  if three > 0 then
    ing[#ing + 1] = {"dark-matter-transducer", three}
  end
  if four > 0 then
    ing[#ing + 1] = {"matter-conduit", four}
  end
  local unit = {
    count = count or 10,
    ingredients = ing,
    time=time or 10
  }
  return unit
end


require('prototypes.replicators')
require('prototypes.matter-manipulation')

require('prototypes.small-e-furnace')
require('prototypes.expansion-bay')
require('prototypes.tenemut')
require('prototypes.replication-lab')

require("technology.replication")
