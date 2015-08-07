table.insert(data.raw.recipe["chemical-boiler"].ingredients,{"pipe", 2})

if data.raw.item["steel-pipe"] then
  table.insert(data.raw.recipe["chemical-furnace"].ingredients,{"steel-pipe", 5})
  table.insert(data.raw.recipe["chemical-plant-2"].ingredients,{"steel-pipe", 5})
else
  table.insert(data.raw.recipe["chemical-furnace"].ingredients,{"pipe", 5})
  table.insert(data.raw.recipe["chemical-plant-2"].ingredients,{"pipe", 5})
end


if data.raw.item["titanium-pipe"] then
  table.insert(data.raw.recipe["chemical-plant-3"].ingredients,{"titanium-pipe", 5})
else
  table.insert(data.raw.recipe["chemical-plant-3"].ingredients,{"pipe", 5})
end


if data.raw.item["tungsten-pipe"] then
  table.insert(data.raw.recipe["electric-chemical-mixing-furnace"].ingredients,{"tungsten-pipe", 5})
  table.insert(data.raw.recipe["electric-chemical-mixing-furnace-2"].ingredients,{"tungsten-pipe", 5})
  table.insert(data.raw.recipe["chemical-plant-4"].ingredients,{"tungsten-pipe", 5})
else
  table.insert(data.raw.recipe["electric-chemical-mixing-furnace"].ingredients,{"pipe", 5})
  table.insert(data.raw.recipe["electric-chemical-mixing-furnace-2"].ingredients,{"pipe", 5})
  table.insert(data.raw.recipe["chemical-plant-4"].ingredients,{"pipe", 5})
end


if data.raw.item["stone-pipe"] then
  table.insert(data.raw.recipe["electrolyser"].ingredients,{"stone-pipe", 2})
else
  table.insert(data.raw.recipe["electrolyser"].ingredients,{"pipe", 2})
end


if data.raw.item["plastic-pipe"] then
  table.insert(data.raw.recipe["electrolyser-2"].ingredients,{"plastic-pipe", 5})
else
  table.insert(data.raw.recipe["electrolyser-2"].ingredients,{"pipe", 5})
end


if data.raw.item["ceramic-pipe"] then
  table.insert(data.raw.recipe["electrolyser-3"].ingredients,{"ceramic-pipe", 5})
else
  table.insert(data.raw.recipe["electrolyser-3"].ingredients,{"pipe", 5})
end


if data.raw.item["copper-pipe"] then
  table.insert(data.raw.recipe["air-pump"].ingredients,{"copper-pipe", 2})
  table.insert(data.raw.recipe["water-pump"].ingredients,{"copper-pipe", 2})
else
  table.insert(data.raw.recipe["air-pump"].ingredients,{"pipe", 2})
  table.insert(data.raw.recipe["water-pump"].ingredients,{"pipe", 2})
end


if data.raw.item["bronze-pipe"] then
  table.insert(data.raw.recipe["air-pump-2"].ingredients,{"bronze-pipe", 2})
  table.insert(data.raw.recipe["water-pump-2"].ingredients,{"bronze-pipe", 2})
else
  table.insert(data.raw.recipe["air-pump-2"].ingredients,{"pipe", 2})
  table.insert(data.raw.recipe["water-pump-2"].ingredients,{"pipe", 2})
end


if data.raw.item["brass-pipe"] then
  table.insert(data.raw.recipe["air-pump-3"].ingredients,{"brass-pipe", 2})
  table.insert(data.raw.recipe["water-pump-3"].ingredients,{"brass-pipe", 2})
else
  table.insert(data.raw.recipe["air-pump-3"].ingredients,{"pipe", 2})
  table.insert(data.raw.recipe["water-pump-3"].ingredients,{"pipe", 2})
end




