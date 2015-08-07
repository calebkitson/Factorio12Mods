if data.raw.item["electronic-circuit-board"] then
  table.insert(data.raw["recipe"]["assembling-machine-3"].ingredients,{"electronic-circuit-board", 3})
else
  table.insert(data.raw["recipe"]["assembling-machine-3"].ingredients,{"advanced-circuit", 3})
end

if data.raw.item["steel-gear-wheel"] then
  table.insert(data.raw["recipe"]["assembling-machine-3"].ingredients,{"steel-gear-wheel", 5})
else
  table.insert(data.raw["recipe"]["assembling-machine-3"].ingredients,{"iron-gear-wheel", 5})
end





if data.raw.item["aluminium-plate"] then
  table.insert(data.raw["recipe"]["assembling-machine-4"].ingredients,{"aluminium-plate", 9})
else
  if data.raw.item["brass-alloy"] then
    table.insert(data.raw["recipe"]["assembling-machine-4"].ingredients,{"brass-alloy", 9})
  else
    table.insert(data.raw["recipe"]["assembling-machine-4"].ingredients,{"steel-plate", 12})
  end
end

if data.raw.item["steel-bearing"] then
  table.insert(data.raw["recipe"]["assembling-machine-4"].ingredients,{"steel-bearing", 5})
end

if data.raw.item["brass-gear-wheel"] then
  table.insert(data.raw["recipe"]["assembling-machine-4"].ingredients,{"brass-gear-wheel", 5})
else
  if data.raw.item["steel-gear-wheel"] then
    table.insert(data.raw["recipe"]["assembling-machine-4"].ingredients,{"steel-gear-wheel", 5})
  else
    table.insert(data.raw["recipe"]["assembling-machine-4"].ingredients,{"iron-gear-wheel", 8})
  end
end

if data.raw.item["electronic-circuit-board"] then
  table.insert(data.raw["recipe"]["assembling-machine-4"].ingredients,{"electronic-circuit-board", 3})
else
  table.insert(data.raw["recipe"]["assembling-machine-4"].ingredients,{"advanced-circuit", 3})
end





if data.raw.item["titanium-plate"] then
  table.insert(data.raw["recipe"]["assembling-machine-5"].ingredients,{"titanium-plate", 9})
else
  if data.raw.item["tungsten-plate"] then
    table.insert(data.raw["recipe"]["assembling-machine-5"].ingredients,{"tungsten-plate", 9})
  else
    table.insert(data.raw["recipe"]["assembling-machine-5"].ingredients,{"steel-plate", 15})
  end
end

if data.raw.item["titanium-gear-wheel"] then
  if data.raw.item["titanium-bearing"] then
    table.insert(data.raw["recipe"]["assembling-machine-5"].ingredients,{"titanium-gear-wheel", 5})
    table.insert(data.raw["recipe"]["assembling-machine-5"].ingredients,{"titanium-bearing", 5})
  else
    table.insert(data.raw["recipe"]["assembling-machine-5"].ingredients,{"titanium-gear-wheel", 8})
  end
else
  if data.raw.item["tungsten-gear-wheel"] then
    table.insert(data.raw["recipe"]["assembling-machine-5"].ingredients,{"tungsten-gear-wheel", 8})
  else
    table.insert(data.raw["recipe"]["assembling-machine-5"].ingredients,{"iron-gear-wheel", 10})
  end
end

if data.raw.item["electronic-processing-board"] then
  table.insert(data.raw["recipe"]["assembling-machine-5"].ingredients,{"electronic-processing-board", 3})
else
  table.insert(data.raw["recipe"]["assembling-machine-5"].ingredients,{"processing-unit", 3})
end





if data.raw.item["nitinol-alloy"] then
  table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"nitinol-alloy", 5})
else
  if data.raw.item["titanium-plate"] then
    table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"titanium-plate", 5})
  else
    table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"steel-plate", 10})
  end
end

if data.raw.item["tungsten-carbide"] then
  table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"tungsten-carbide", 5})
else
  if data.raw.item["tungsten-plate"] then
    table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"tungsten-plate", 5})
  else
    table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"iron-plate", 10})
  end
end


if data.raw.item["nitinol-gear-wheel"] then
  if data.raw.item["nitinol-bearing"] then
    table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"nitinol-gear-wheel", 5})
    table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"nitinol-bearing", 5})
  else
    table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"nitinol-gear-wheel", 8})
  end
else
  if data.raw.item["titanium-gear-wheel"] then
    if data.raw.item["nitinol-bearing"] then
      table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"titanium-gear-wheel", 5})
      table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"nitinol-bearing", 5})
    else
      if data.raw.item["titanium-bearing"] then
        table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"titanium-gear-wheel", 5})
        table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"titanium-bearing", 5})
      else
        table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"titanium-gear-wheel", 8})
      end
    end
  else
    if data.raw.item["tungsten-gear-wheel"] then
      table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"tungsten-gear-wheel", 10})
    else
      table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"iron-gear-wheel", 15})
    end
  end
end


if data.raw.item["electronic-processing-board-2"] then
  table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"electronic-processing-board-2", 3})
else
  if data.raw.item["advanced-processing-unit"] then
    table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"advanced-processing-unit", 3})
  else
    if data.raw.item["electronic-processing-board"] then
      table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"electronic-processing-board", 3})
    else
      table.insert(data.raw["recipe"]["assembling-machine-6"].ingredients,{"processing-unit", 3})
    end
  end
end


if data.raw.tool["science-pack-4"] then
  table.insert(data.raw.technology["automation-6"].unit.ingredients,{"science-pack-4", 1})
else
  table.insert(data.raw.technology["automation-6"].unit.ingredients,{"alien-science-pack", 1})
end


