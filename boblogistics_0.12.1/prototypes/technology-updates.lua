if data.raw.tool["science-pack-4"] then
  table.insert(data.raw.technology["bob-robotics-3"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["bob-robo-modular-4"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["toolbelt-3"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["character-logistic-slots-5"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["character-logistic-slots-6"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["character-logistic-slots-7"].unit.ingredients,{"science-pack-4", 1})
  if data.raw.technology["bob-logistics-5"] then
    table.insert(data.raw.technology["bob-logistics-5"].unit.ingredients,{"science-pack-4", 1})
  end
else
  table.insert(data.raw.technology["bob-robotics-3"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["bob-robo-modular-4"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["toolbelt-3"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["character-logistic-slots-5"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["character-logistic-slots-6"].unit.ingredients,{"alien-science-pack", 1})
  if data.raw.technology["bob-logistics-5"] then
    table.insert(data.raw.technology["bob-logistics-5"].unit.ingredients,{"alien-science-pack", 1})
  end
end

if data.raw.tool["science-pack-gold"] and data.raw.tool["alien-science-pack-blue"] and data.raw.tool["alien-science-pack-orange"] then
  table.insert(data.raw.technology["character-logistic-slots-8"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["character-logistic-slots-8"].unit.ingredients,{"alien-science-pack-blue", 1})
  table.insert(data.raw.technology["character-logistic-slots-8"].unit.ingredients,{"alien-science-pack-orange", 1})
else
  table.insert(data.raw.technology["character-logistic-slots-8"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["character-logistic-slots-8"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["character-logistic-slots-8"].unit.ingredients,{"science-pack-3", 1})
  if data.raw.tool["science-pack-4"] then
    table.insert(data.raw.technology["character-logistic-slots-8"].unit.ingredients,{"science-pack-4", 1})
  end
end

if data.raw.tool["science-pack-gold"] and data.raw.tool["alien-science-pack-purple"] and data.raw.tool["alien-science-pack-yellow"] then
  table.insert(data.raw.technology["character-logistic-slots-9"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["character-logistic-slots-9"].unit.ingredients,{"alien-science-pack-purple", 1})
  table.insert(data.raw.technology["character-logistic-slots-9"].unit.ingredients,{"alien-science-pack-yellow", 1})
else
  table.insert(data.raw.technology["character-logistic-slots-9"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["character-logistic-slots-9"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["character-logistic-slots-9"].unit.ingredients,{"science-pack-3", 1})
  if data.raw.tool["science-pack-4"] then
    table.insert(data.raw.technology["character-logistic-slots-9"].unit.ingredients,{"science-pack-4", 1})
  end
end

if data.raw.tool["science-pack-gold"] and data.raw.tool["alien-science-pack-green"] and data.raw.tool["alien-science-pack-red"] then
  table.insert(data.raw.technology["character-logistic-slots-10"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["character-logistic-slots-10"].unit.ingredients,{"alien-science-pack-green", 1})
  table.insert(data.raw.technology["character-logistic-slots-10"].unit.ingredients,{"alien-science-pack-red", 1})
else
  table.insert(data.raw.technology["character-logistic-slots-10"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["character-logistic-slots-10"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["character-logistic-slots-10"].unit.ingredients,{"science-pack-3", 1})
  if data.raw.tool["science-pack-4"] then
    table.insert(data.raw.technology["character-logistic-slots-10"].unit.ingredients,{"science-pack-4", 1})
  end
end


table.insert(data.raw.technology["steel-processing"].effects,{type = "unlock-recipe", recipe = "steel-pipe"})
table.insert(data.raw.technology["steel-processing"].effects,{type = "unlock-recipe", recipe = "steel-pipe-to-ground"})

table.insert(data.raw.technology["plastics"].effects,{type = "unlock-recipe", recipe = "plastic-pipe"})
table.insert(data.raw.technology["plastics"].effects,{type = "unlock-recipe", recipe = "plastic-pipe-to-ground"})

if data.raw.technology["alloy-processing-1"] then
  table.insert(data.raw.technology["alloy-processing-1"].effects,{type = "unlock-recipe", recipe = "bronze-pipe"})
  table.insert(data.raw.technology["alloy-processing-1"].effects,{type = "unlock-recipe", recipe = "bronze-pipe-to-ground"})
end

if data.raw.technology["zinc-processing"] then
  table.insert(data.raw.technology["zinc-processing"].effects,{type = "unlock-recipe", recipe = "brass-pipe"})
  table.insert(data.raw.technology["zinc-processing"].effects,{type = "unlock-recipe", recipe = "brass-pipe-to-ground"})
end

if data.raw.technology["titanium-processing"] then
  table.insert(data.raw.technology["titanium-processing"].effects,{type = "unlock-recipe", recipe = "titanium-pipe"})
  table.insert(data.raw.technology["titanium-processing"].effects,{type = "unlock-recipe", recipe = "titanium-pipe-to-ground"})
end

if data.raw.technology["tungsten-processing"] then
  table.insert(data.raw.technology["tungsten-processing"].effects,{type = "unlock-recipe", recipe = "tungsten-pipe"})
  table.insert(data.raw.technology["tungsten-processing"].effects,{type = "unlock-recipe", recipe = "tungsten-pipe-to-ground"})
end

if data.raw.technology["ceramics"] then
  table.insert(data.raw.technology["ceramics"].effects,{type = "unlock-recipe", recipe = "ceramic-pipe"})
  table.insert(data.raw.technology["ceramics"].effects,{type = "unlock-recipe", recipe = "ceramic-pipe-to-ground"})
end



if data.raw.technology["lava-smelting-05"] then
  table.insert(data.raw.technology["lava-smelting-05"].effects,{type = "unlock-recipe", recipe = "tungsten-pipe"})
  table.insert(data.raw.technology["lava-smelting-05"].effects,{type = "unlock-recipe", recipe = "tungsten-pipe-to-ground"})
end

if data.raw.technology["lava-smelting-06"] then
  table.insert(data.raw.technology["lava-smelting-06"].effects,{type = "unlock-recipe", recipe = "bronze-pipe"})
  table.insert(data.raw.technology["lava-smelting-06"].effects,{type = "unlock-recipe", recipe = "bronze-pipe-to-ground"})

  table.insert(data.raw.technology["lava-smelting-06"].effects,{type = "unlock-recipe", recipe = "brass-pipe"})
  table.insert(data.raw.technology["lava-smelting-06"].effects,{type = "unlock-recipe", recipe = "brass-pipe-to-ground"})
end

