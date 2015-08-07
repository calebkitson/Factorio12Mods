if data.raw.tool["science-pack-4"] then
  table.insert(data.raw.technology["electrolysis-4"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["alloy-processing-4"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["chemical-processing-5"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["nitinol-processing"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["tungsten-alloy-processing"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["air-compressor-4"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["water-bore-4"].unit.ingredients,{"science-pack-4", 1})
else
  table.insert(data.raw.technology["electrolysis-4"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["alloy-processing-4"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["chemical-processing-5"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["nitinol-processing"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["tungsten-alloy-processing"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["air-compressor-4"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["water-bore-4"].unit.ingredients,{"alien-science-pack", 1})
end


table.insert(data.raw.technology["sulfur-processing"].effects,{type = "unlock-recipe", recipe = "sulfur-2"})
table.insert(data.raw.technology["sulfur-processing"].effects,{type = "unlock-recipe", recipe = "sulfuric-acid-2"})

table.insert(data.raw.technology["oil-processing"].effects,{type = "unlock-recipe", recipe = "bob-resin-oil"})
table.insert(data.raw.technology["oil-processing"].effects,{type = "unlock-recipe", recipe = "liquid-fuel"})

table.insert(data.raw.technology["advanced-oil-processing"].effects,{type = "unlock-recipe", recipe = "petroleum-gas-cracking"})
table.insert(data.raw.technology["advanced-oil-processing"].effects,{type = "unlock-recipe", recipe = "coal-cracking"})
table.insert(data.raw.technology["advanced-oil-processing"].effects,{type = "unlock-recipe", recipe = "bob-oil-processing"})

table.insert(data.raw.technology["electronics"].effects,{type = "unlock-recipe", recipe = "basic-electronic-components"})
table.insert(data.raw.technology["electronics"].effects,{type = "unlock-recipe", recipe = "basic-electronic-circuit-board"})
table.insert(data.raw.technology["electronics"].effects,{type = "unlock-recipe", recipe = "solder"})
table.insert(data.raw.technology["electronics"].effects,{type = "unlock-recipe", recipe = "solder-alloy"})
table.insert(data.raw.technology["electronics"].effects,{type = "unlock-recipe", recipe = "solder-alloy-lead"})

table.insert(data.raw.technology["advanced-electronics"].effects,{type = "unlock-recipe", recipe = "electronic-components"})
table.insert(data.raw.technology["advanced-electronics"].effects,{type = "unlock-recipe", recipe = "phenolic-board"})
table.insert(data.raw.technology["advanced-electronics"].effects,{type = "unlock-recipe", recipe = "phenolic-board-synthetic"})
table.insert(data.raw.technology["advanced-electronics"].effects,{type = "unlock-recipe", recipe = "circuit-board"})
table.insert(data.raw.technology["advanced-electronics"].effects,{type = "unlock-recipe", recipe = "electronic-circuit-board"})

if data.raw.technology["advanced-electronics-2"].effects then
  table.insert(data.raw.technology["advanced-electronics-2"].effects,{type = "unlock-recipe", recipe = "intergrated-electronics"})
else
  data.raw.technology["advanced-electronics-2"].effects = {{type = "unlock-recipe", recipe = "intergrated-electronics"}}
end
table.insert(data.raw.technology["advanced-electronics-2"].effects,{type = "unlock-recipe", recipe = "fibreglass-board"})
table.insert(data.raw.technology["advanced-electronics-2"].effects,{type = "unlock-recipe", recipe = "superior-circuit-board"})
table.insert(data.raw.technology["advanced-electronics-2"].effects,{type = "unlock-recipe", recipe = "electronic-processing-board"})

table.insert(data.raw.technology["plastics"].effects,{type = "unlock-recipe", recipe = "synthetic-wood"})
table.insert(data.raw.technology["plastics"].effects,{type = "unlock-recipe", recipe = "wooden-board-synthetic"})

table.insert(data.raw.technology["steel-processing"].effects,{type = "unlock-recipe", recipe = "steel-gear-wheel"})
table.insert(data.raw.technology["steel-processing"].effects,{type = "unlock-recipe", recipe = "steel-bearing-ball"})
table.insert(data.raw.technology["steel-processing"].effects,{type = "unlock-recipe", recipe = "steel-bearing"})



table.insert(data.raw.technology["nickel-processing"].effects,{type = "unlock-recipe", recipe = "bob-nickel-plate"})

table.insert(data.raw.technology["zinc-processing"].effects,{type = "unlock-recipe", recipe = "bob-zinc-plate"})
table.insert(data.raw.technology["zinc-processing"].effects,{type = "unlock-recipe", recipe = "brass-alloy"})
table.insert(data.raw.technology["zinc-processing"].effects,{type = "unlock-recipe", recipe = "gunmetal-alloy"})

table.insert(data.raw.technology["lead-processing"].effects,{type = "unlock-recipe", recipe = "lead-oxide"})
table.insert(data.raw.technology["lead-processing"].effects,{type = "unlock-recipe", recipe = "bob-lead-plate"})

table.insert(data.raw.technology["aluminium-processing"].effects,{type = "unlock-recipe", recipe = "alumina"})
table.insert(data.raw.technology["aluminium-processing"].effects,{type = "unlock-recipe", recipe = "bob-aluminium-plate"})

table.insert(data.raw.technology["gold-processing"].effects,{type = "unlock-recipe", recipe = "bob-gold-plate"})

table.insert(data.raw.technology["silicon-processing"].effects,{type = "unlock-recipe", recipe = "bob-silicon-plate"})
table.insert(data.raw.technology["silicon-processing"].effects,{type = "unlock-recipe", recipe = "silicon-wafer"})
table.insert(data.raw.technology["silicon-processing"].effects,{type = "unlock-recipe", recipe = "silicon-powder"})

table.insert(data.raw.technology["titanium-processing"].effects,{type = "unlock-recipe", recipe = "bob-titanium-plate"})

table.insert(data.raw.technology["tungsten-processing"].effects,{type = "unlock-recipe", recipe = "tungstic-acid"})
table.insert(data.raw.technology["tungsten-processing"].effects,{type = "unlock-recipe", recipe = "tungsten-oxide"})
table.insert(data.raw.technology["tungsten-processing"].effects,{type = "unlock-recipe", recipe = "powdered-tungsten"})
table.insert(data.raw.technology["tungsten-processing"].effects,{type = "unlock-recipe", recipe = "bob-tungsten-plate"})

table.insert(data.raw.technology["electrum-processing"].effects,{type = "unlock-recipe", recipe = "electrum-alloy"})

table.insert(data.raw.technology["invar-processing"].effects,{type = "unlock-recipe", recipe = "invar-alloy"})

table.insert(data.raw.technology["nitinol-processing"].effects,{type = "unlock-recipe", recipe = "nitinol-alloy"})

table.insert(data.raw.technology["tungsten-alloy-processing"].effects,{type = "unlock-recipe", recipe = "copper-tungsten-alloy"})
table.insert(data.raw.technology["tungsten-alloy-processing"].effects,{type = "unlock-recipe", recipe = "tungsten-carbide"})
table.insert(data.raw.technology["tungsten-alloy-processing"].effects,{type = "unlock-recipe", recipe = "tungsten-carbide-2"})

table.insert(data.raw.technology["cobalt-processing"].effects,{type = "unlock-recipe", recipe = "cobalt-oxide"})
table.insert(data.raw.technology["cobalt-processing"].effects,{type = "unlock-recipe", recipe = "cobalt-oxide-from-copper"})
table.insert(data.raw.technology["cobalt-processing"].effects,{type = "unlock-recipe", recipe = "cobalt-plate"})
table.insert(data.raw.technology["cobalt-processing"].effects,{type = "unlock-recipe", recipe = "cobalt-steel-alloy"})

table.insert(data.raw.technology["lithium-processing"].effects,{type = "unlock-recipe", recipe = "lithium"})
table.insert(data.raw.technology["lithium-processing"].effects,{type = "unlock-recipe", recipe = "lithium-chloride"})
table.insert(data.raw.technology["lithium-processing"].effects,{type = "unlock-recipe", recipe = "lithium-water-electrolysis"})



table.insert(data.raw.technology["zinc-processing"].effects,{type = "unlock-recipe", recipe = "brass-gear-wheel"})

table.insert(data.raw.technology["titanium-processing"].effects,{type = "unlock-recipe", recipe = "titanium-gear-wheel"})
table.insert(data.raw.technology["titanium-processing"].effects,{type = "unlock-recipe", recipe = "titanium-bearing-ball"})
table.insert(data.raw.technology["titanium-processing"].effects,{type = "unlock-recipe", recipe = "titanium-bearing"})

table.insert(data.raw.technology["tungsten-processing"].effects,{type = "unlock-recipe", recipe = "tungsten-gear-wheel"})

table.insert(data.raw.technology["nitinol-processing"].effects,{type = "unlock-recipe", recipe = "nitinol-gear-wheel"})
table.insert(data.raw.technology["nitinol-processing"].effects,{type = "unlock-recipe", recipe = "nitinol-bearing-ball"})
table.insert(data.raw.technology["nitinol-processing"].effects,{type = "unlock-recipe", recipe = "nitinol-bearing"})



