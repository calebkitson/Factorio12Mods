data.raw["transport-belt-to-ground"]["basic-transport-belt-to-ground"].max_distance = 5
data.raw["transport-belt-to-ground"]["fast-transport-belt-to-ground"].max_distance = 10
data.raw["transport-belt-to-ground"]["express-transport-belt-to-ground"].max_distance = 15

data.raw.recipe["express-transport-belt-to-ground"].category = "crafting-with-fluid"
data.raw.recipe["express-transport-belt-to-ground"].ingredients = { {"iron-gear-wheel", 20}, {"fast-transport-belt-to-ground", 2}, {type="fluid", name="lubricant", amount=10} }

if data.raw.item["titanium-gear-wheel"] then
  table.insert(data.raw["recipe"]["green-transport-belt"].ingredients,{"titanium-gear-wheel", 5})
  table.insert(data.raw["recipe"]["green-transport-belt-to-ground"].ingredients,{"titanium-gear-wheel", 20})
  table.insert(data.raw["recipe"]["green-splitter"].ingredients,{"titanium-gear-wheel", 10})
else
  table.insert(data.raw["recipe"]["green-transport-belt"].ingredients,{"iron-gear-wheel", 10})
  table.insert(data.raw["recipe"]["green-transport-belt-to-ground"].ingredients,{"iron-gear-wheel", 40})
  table.insert(data.raw["recipe"]["green-splitter"].ingredients,{"iron-gear-wheel", 20})
end

if data.raw.item["titanium-bearing"] then
  table.insert(data.raw["recipe"]["green-transport-belt"].ingredients,{"titanium-bearing", 5})
  table.insert(data.raw["recipe"]["green-transport-belt-to-ground"].ingredients,{"titanium-bearing", 20})
  table.insert(data.raw["recipe"]["green-splitter"].ingredients,{"titanium-bearing", 10})
end

if data.raw.item["electronic-circuit-board"] then
  table.insert(data.raw["recipe"]["green-splitter"].ingredients,{"electronic-circuit-board", 10})
else
  table.insert(data.raw["recipe"]["green-splitter"].ingredients,{"advanced-circuit", 10})
end



if data.raw.recipe["purple-transport-belt"] then
  if data.raw.item["nitinol-gear-wheel"] then
    table.insert(data.raw["recipe"]["purple-transport-belt"].ingredients,{"nitinol-gear-wheel", 5})
  else
    table.insert(data.raw["recipe"]["purple-transport-belt"].ingredients,{"iron-gear-wheel", 15})
  end

  if data.raw.item["nitinol-bearing"] then
    table.insert(data.raw["recipe"]["purple-transport-belt"].ingredients,{"nitinol-bearing", 5})
  end
end


if data.raw.recipe["purple-transport-belt-to-ground"] then
  if data.raw.item["nitinol-gear-wheel"] then
    table.insert(data.raw["recipe"]["purple-transport-belt-to-ground"].ingredients,{"nitinol-gear-wheel", 20})
  else
    table.insert(data.raw["recipe"]["purple-transport-belt-to-ground"].ingredients,{"iron-gear-wheel", 60})
  end

  if data.raw.item["nitinol-bearing"] then
    table.insert(data.raw["recipe"]["purple-transport-belt-to-ground"].ingredients,{"nitinol-bearing", 20})
  end
end


if data.raw.recipe["purple-splitter"] then
  if data.raw.item["nitinol-gear-wheel"] then
    table.insert(data.raw["recipe"]["purple-splitter"].ingredients,{"nitinol-gear-wheel", 10})
  else
    table.insert(data.raw["recipe"]["purple-splitter"].ingredients,{"iron-gear-wheel", 30})
  end

  if data.raw.item["nitinol-bearing"] then
    table.insert(data.raw["recipe"]["purple-splitter"].ingredients,{"nitinol-bearing", 10})
  end

  if data.raw.item["electronic-processing-board"] then
    table.insert(data.raw["recipe"]["purple-splitter"].ingredients,{"electronic-processing-board", 10})
  else
    table.insert(data.raw["recipe"]["purple-splitter"].ingredients,{"processing-unit", 10})
  end
end

