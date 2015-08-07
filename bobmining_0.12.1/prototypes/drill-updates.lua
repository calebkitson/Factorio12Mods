if data.raw.tool["science-pack-4"] then
  table.insert(data.raw.technology["bob-drills-4"].unit.ingredients,{"science-pack-4", 1})
else
  table.insert(data.raw.technology["bob-drills-4"].unit.ingredients,{"alien-science-pack", 1})
end


if data.raw.item["basic-circuit-board"] then
  table.insert(data.raw.recipe["bob-mining-drill-1"].ingredients,{"basic-circuit-board", 5})
else
  table.insert(data.raw.recipe["bob-mining-drill-1"].ingredients,{"electronic-circuit", 5})
end

table.insert(data.raw.recipe["bob-mining-drill-1"].ingredients,{"steel-plate", 10})

if data.raw.item["steel-gear-wheel"] then
  table.insert(data.raw.recipe["bob-mining-drill-1"].ingredients,{"steel-gear-wheel", 5})
else
  table.insert(data.raw.recipe["bob-mining-drill-1"].ingredients,{"iron-gear-wheel", 8})
end



if data.raw.item["electronic-circuit-board"] then
  table.insert(data.raw.recipe["bob-mining-drill-2"].ingredients,{"electronic-circuit-board", 5})
else
  table.insert(data.raw.recipe["bob-mining-drill-2"].ingredients,{"advanced-circuit", 5})
end

if data.raw.item["invar-alloy"] then
  table.insert(data.raw.recipe["bob-mining-drill-2"].ingredients,{"invar-alloy", 10})
else
  if data.raw.item["aluminium-plate"] then
    table.insert(data.raw.recipe["bob-mining-drill-2"].ingredients,{"aluminium-plate", 10})
  else
    if data.raw.item["brass-alloy"] then
      table.insert(data.raw.recipe["bob-mining-drill-2"].ingredients,{"brass-alloy", 10})
    else
      table.insert(data.raw.recipe["bob-mining-drill-2"].ingredients,{"steel-plate", 15})
    end
  end
end

if data.raw.item["brass-gear-wheel"] then
  table.insert(data.raw.recipe["bob-mining-drill-2"].ingredients,{"brass-gear-wheel", 5})
else
  if data.raw.item["steel-gear-wheel"] then
    table.insert(data.raw.recipe["bob-mining-drill-2"].ingredients,{"steel-gear-wheel", 8})
  else
    table.insert(data.raw.recipe["bob-mining-drill-2"].ingredients,{"iron-gear-wheel", 10})
  end
end



if data.raw.item["electronic-processing-board"] then
  table.insert(data.raw.recipe["bob-mining-drill-3"].ingredients,{"electronic-processing-board", 5})
else
  table.insert(data.raw.recipe["bob-mining-drill-3"].ingredients,{"processing-unit", 5})
end

if data.raw.item["titanium-plate"] then
  table.insert(data.raw.recipe["bob-mining-drill-3"].ingredients,{"titanium-plate", 10})
else
  if data.raw.item["tungsten-plate"] then
    table.insert(data.raw.recipe["bob-mining-drill-3"].ingredients,{"tungsten-plate", 10})
  else
    table.insert(data.raw.recipe["bob-mining-drill-3"].ingredients,{"steel-plate", 20})
  end
end

if data.raw.item["titanium-gear-wheel"] then
  table.insert(data.raw.recipe["bob-mining-drill-3"].ingredients,{"titanium-gear-wheel", 5})
else
  if data.raw.item["tungsten-gear-wheel"] then
    table.insert(data.raw.recipe["bob-mining-drill-3"].ingredients,{"tungsten-gear-wheel", 5})
  else
    table.insert(data.raw.recipe["bob-mining-drill-3"].ingredients,{"iron-gear-wheel", 12})
  end
end



if data.raw.item["electronic-processing-board-2"] then
  table.insert(data.raw.recipe["bob-mining-drill-4"].ingredients,{"electronic-processing-board-2", 5})
else
  if data.raw.item["advanced-processing-unit"] then
    table.insert(data.raw.recipe["bob-mining-drill-4"].ingredients,{"advanced-processing-unit", 5})
  else
    table.insert(data.raw.recipe["bob-mining-drill-4"].ingredients,{"processing-unit", 8})
  end
end

if data.raw.item["tungsten-carbide"] then
  table.insert(data.raw.recipe["bob-mining-drill-4"].ingredients,{"tungsten-carbide", 10})
else
  if data.raw.item["copper-tungsten-alloy"] then
    table.insert(data.raw.recipe["bob-mining-drill-4"].ingredients,{"copper-tungsten-alloy", 10})
  else
    table.insert(data.raw.recipe["bob-mining-drill-4"].ingredients,{"steel-plate", 25})
  end
end

if data.raw.item["nitinol-gear-wheel"] then
  table.insert(data.raw.recipe["bob-mining-drill-4"].ingredients,{"nitinol-gear-wheel", 5})
else
  if data.raw.item["tungsten-gear-wheel"] then
    table.insert(data.raw.recipe["bob-mining-drill-4"].ingredients,{"tungsten-gear-wheel", 8})
  else
    table.insert(data.raw.recipe["bob-mining-drill-4"].ingredients,{"iron-gear-wheel", 15})
  end
end




