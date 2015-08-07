if data.raw.tool["science-pack-4"] then
  table.insert(data.raw.technology["bob-pumpjacks-4"].unit.ingredients,{"science-pack-4", 1})
else
  table.insert(data.raw.technology["bob-pumpjacks-4"].unit.ingredients,{"alien-science-pack", 1})
end


table.insert(data.raw.recipe["bob-pumpjack-1"].ingredients,{"steel-plate", 20})

if data.raw.item["steel-gear-wheel"] then
  table.insert(data.raw.recipe["bob-pumpjack-1"].ingredients,{"steel-gear-wheel", 10})
else
  table.insert(data.raw.recipe["bob-pumpjack-1"].ingredients,{"iron-gear-wheel", 15})
end

if data.raw.item["basic-circuit-board"] then
  table.insert(data.raw.recipe["bob-pumpjack-1"].ingredients,{"basic-circuit-board", 5})
else
  table.insert(data.raw.recipe["bob-pumpjack-1"].ingredients,{"electronic-circuit", 5})
end

if data.raw.item["steel-pipe"] then
  table.insert(data.raw.recipe["bob-pumpjack-1"].ingredients,{"steel-pipe", 10})
else
  table.insert(data.raw.recipe["bob-pumpjack-1"].ingredients,{"pipe", 15})
end



if data.raw.item["aluminium-plate"] then
  table.insert(data.raw.recipe["bob-pumpjack-2"].ingredients,{"aluminium-plate", 20})
else
  if data.raw.item["brass-alloy"] then
    table.insert(data.raw.recipe["bob-pumpjack-2"].ingredients,{"brass-alloy", 20})
  else
    table.insert(data.raw.recipe["bob-pumpjack-2"].ingredients,{"steel-plate", 25})
  end
end

if data.raw.item["brass-gear-wheel"] then
  table.insert(data.raw.recipe["bob-pumpjack-2"].ingredients,{"brass-gear-wheel", 10})
else
  if data.raw.item["steel-gear-wheel"] then
    table.insert(data.raw.recipe["bob-pumpjack-2"].ingredients,{"steel-gear-wheel", 15})
  else
    table.insert(data.raw.recipe["bob-pumpjack-2"].ingredients,{"iron-gear-wheel", 20})
  end
end

if data.raw.item["electronic-circuit-board"] then
  table.insert(data.raw.recipe["bob-pumpjack-2"].ingredients,{"electronic-circuit-board", 5})
else
  table.insert(data.raw.recipe["bob-pumpjack-2"].ingredients,{"advanced-circuit", 5})
end

if data.raw.item["brass-pipe"] then
  table.insert(data.raw.recipe["bob-pumpjack-2"].ingredients,{"brass-pipe", 10})
else
  if data.raw.item["plastic-pipe"] then
    table.insert(data.raw.recipe["bob-pumpjack-2"].ingredients,{"plastic-pipe", 10})
  else
    table.insert(data.raw.recipe["bob-pumpjack-2"].ingredients,{"pipe", 20})
  end
end



if data.raw.item["titanium-plate"] then
  table.insert(data.raw.recipe["bob-pumpjack-3"].ingredients,{"titanium-plate", 20})
else
  if data.raw.item["tungsten-plate"] then
    table.insert(data.raw.recipe["bob-pumpjack-3"].ingredients,{"tungsten-plate", 20})
  else
    table.insert(data.raw.recipe["bob-pumpjack-3"].ingredients,{"steel-plate", 30})
  end
end

if data.raw.item["titanium-gear-wheel"] then
  table.insert(data.raw.recipe["bob-pumpjack-3"].ingredients,{"titanium-gear-wheel", 10})
else
  if data.raw.item["tungsten-gear-wheel"] then
    table.insert(data.raw.recipe["bob-pumpjack-3"].ingredients,{"tungsten-gear-wheel", 10})
  else
    table.insert(data.raw.recipe["bob-pumpjack-3"].ingredients,{"iron-gear-wheel", 20})
  end
end

if data.raw.item["electronic-processing-board"] then
  table.insert(data.raw.recipe["bob-pumpjack-3"].ingredients,{"electronic-processing-board", 5})
else
  table.insert(data.raw.recipe["bob-pumpjack-3"].ingredients,{"processing-unit", 5})
end

if data.raw.item["titanium-pipe"] then
  table.insert(data.raw.recipe["bob-pumpjack-3"].ingredients,{"titanium-pipe", 10})
else
  if data.raw.item["plastic-pipe"] then
    table.insert(data.raw.recipe["bob-pumpjack-3"].ingredients,{"plastic-pipe", 15})
  else
    table.insert(data.raw.recipe["bob-pumpjack-3"].ingredients,{"pipe", 25})
  end
end



if data.raw.item["nitinol-alloy"] then
  table.insert(data.raw.recipe["bob-pumpjack-4"].ingredients,{"nitinol-alloy", 20})
else
  if data.raw.item["copper-tungsten-alloy"] then
    table.insert(data.raw.recipe["bob-pumpjack-4"].ingredients,{"copper-tungsten-alloy", 25})
  else
    table.insert(data.raw.recipe["bob-pumpjack-4"].ingredients,{"steel-plate", 35})
  end
end

if data.raw.item["nitinol-gear-wheel"] then
  table.insert(data.raw.recipe["bob-pumpjack-4"].ingredients,{"nitinol-gear-wheel", 10})
else
  if data.raw.item["tungsten-gear-wheel"] then
    table.insert(data.raw.recipe["bob-pumpjack-4"].ingredients,{"tungsten-gear-wheel", 15})
  else
    table.insert(data.raw.recipe["bob-pumpjack-4"].ingredients,{"iron-gear-wheel", 25})
  end
end

if data.raw.item["electronic-processing-board-2"] then
  table.insert(data.raw.recipe["bob-pumpjack-4"].ingredients,{"electronic-processing-board-2", 5})
else
  if data.raw.item["advanced-processing-unit"] then
    table.insert(data.raw.recipe["bob-pumpjack-4"].ingredients,{"advanced-processing-unit", 5})
  else
    table.insert(data.raw.recipe["bob-pumpjack-4"].ingredients,{"processing-unit", 8})
  end
end

if data.raw.item["tungsten-pipe"] then
  table.insert(data.raw.recipe["bob-pumpjack-4"].ingredients,{"tungsten-pipe", 10})
else
  if data.raw.item["plastic-pipe"] then
    table.insert(data.raw.recipe["bob-pumpjack-4"].ingredients,{"plastic-pipe", 20})
  else
    table.insert(data.raw.recipe["bob-pumpjack-4"].ingredients,{"pipe", 30})
  end
end




