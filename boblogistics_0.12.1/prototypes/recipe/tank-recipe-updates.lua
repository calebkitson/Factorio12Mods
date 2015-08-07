if data.raw.item["invar-alloy"] then
  table.insert(data.raw["recipe"]["storage-tank-2"].ingredients,{"invar-alloy", 20})
else
  table.insert(data.raw["recipe"]["storage-tank-2"].ingredients,{"steel-plate", 20})
end


if data.raw.item["titanium-plate"] then
  table.insert(data.raw["recipe"]["storage-tank-3"].ingredients,{"titanium-plate", 20})
else
  table.insert(data.raw["recipe"]["storage-tank-3"].ingredients,{"steel-plate", 20})
end

if data.raw.item["nitinol-alloy"] then
  table.insert(data.raw["recipe"]["storage-tank-4"].ingredients,{"nitinol-alloy", 20})
else
  table.insert(data.raw["recipe"]["storage-tank-4"].ingredients,{"steel-plate", 20})
end


