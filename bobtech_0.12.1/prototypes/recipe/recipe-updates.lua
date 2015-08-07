local addengine = false
if data.raw.item["silicon-nitride"] then
  table.insert(data.raw.recipe["science-pack-4"].ingredients,{"silicon-nitride", 1})
else
  addengine = true
end

if data.raw.item["lithium-ion-battery"] then
  table.insert(data.raw.recipe["science-pack-4"].ingredients,{"lithium-ion-battery", 1})
else
  addengine = true
end

if addengine then
  table.insert(data.raw.recipe["science-pack-4"].ingredients,{"electric-engine-unit", 1})
end

