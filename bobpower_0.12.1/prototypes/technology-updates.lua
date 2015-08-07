if data.raw.tool["science-pack-4"] then
  table.insert(data.raw.technology["electric-substation-4"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["bob-solar-energy-4"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["bob-electric-energy-accumulators-4"].unit.ingredients,{"science-pack-4", 1})
else
  table.insert(data.raw.technology["electric-substation-4"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["bob-solar-energy-4"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["bob-electric-energy-accumulators-4"].unit.ingredients,{"alien-science-pack", 1})
end

