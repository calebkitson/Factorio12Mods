if data.raw.item["invar-alloy"] then
  table.insert(data.raw["recipe"]["diesel-locomotive-2"].ingredients,{"invar-alloy", 10})
  table.insert(data.raw["recipe"]["cargo-wagon-2"].ingredients,{"invar-alloy", 20})
else
  table.insert(data.raw["recipe"]["diesel-locomotive-2"].ingredients,{"steel-plate", 10})
  table.insert(data.raw["recipe"]["cargo-wagon-2"].ingredients,{"steel-plate", 20})
end

if data.raw.item["steel-gear-wheel"] then
  if data.raw.item["steel-bearing"] then
    table.insert(data.raw["recipe"]["diesel-locomotive-2"].ingredients,{"steel-bearing", 16})
    table.insert(data.raw["recipe"]["cargo-wagon-2"].ingredients,{"steel-bearing", 8})
    table.insert(data.raw["recipe"]["diesel-locomotive-2"].ingredients,{"steel-gear-wheel", 20})
    table.insert(data.raw["recipe"]["cargo-wagon-2"].ingredients,{"steel-gear-wheel", 12})
  else
    table.insert(data.raw["recipe"]["diesel-locomotive-2"].ingredients,{"steel-gear-wheel", 30})
    table.insert(data.raw["recipe"]["cargo-wagon-2"].ingredients,{"steel-gear-wheel", 20})
  end
else
  table.insert(data.raw["recipe"]["diesel-locomotive-2"].ingredients,{"iron-gear-wheel", 45})
  table.insert(data.raw["recipe"]["cargo-wagon-2"].ingredients,{"iron-gear-wheel", 30})
end

if data.raw.item["electronic-circuit-board"] then
  table.insert(data.raw["recipe"]["diesel-locomotive-2"].ingredients,{"electronic-circuit-board", 5})
else
  table.insert(data.raw["recipe"]["diesel-locomotive-2"].ingredients,{"advanced-circuit", 5})
end



if data.raw.item["titanium-plate"] then
  table.insert(data.raw["recipe"]["diesel-locomotive-3"].ingredients,{"titanium-plate", 10})
  table.insert(data.raw["recipe"]["cargo-wagon-3"].ingredients,{"titanium-plate", 20})

  table.insert(data.raw["recipe"]["armoured-diesel-locomotive"].ingredients,{"titanium-plate", 25})
  table.insert(data.raw["recipe"]["armoured-cargo-wagon"].ingredients,{"titanium-plate", 25})
else
  table.insert(data.raw["recipe"]["diesel-locomotive-3"].ingredients,{"steel-plate", 20})
  table.insert(data.raw["recipe"]["cargo-wagon-3"].ingredients,{"steel-plate", 40})

  table.insert(data.raw["recipe"]["armoured-diesel-locomotive"].ingredients,{"steel-plate", 40})
  table.insert(data.raw["recipe"]["armoured-cargo-wagon"].ingredients,{"steel-plate", 40})
end

if data.raw.item["titanium-gear-wheel"] then
  if data.raw.item["titanium-bearing"] then
    table.insert(data.raw["recipe"]["diesel-locomotive-3"].ingredients,{"titanium-bearing", 16})
    table.insert(data.raw["recipe"]["cargo-wagon-3"].ingredients,{"titanium-bearing", 8})
    table.insert(data.raw["recipe"]["diesel-locomotive-3"].ingredients,{"titanium-gear-wheel", 20})
    table.insert(data.raw["recipe"]["cargo-wagon-3"].ingredients,{"titanium-gear-wheel", 12})
  else
    table.insert(data.raw["recipe"]["diesel-locomotive-3"].ingredients,{"titanium-gear-wheel", 30})
    table.insert(data.raw["recipe"]["cargo-wagon-3"].ingredients,{"titanium-gear-wheel", 20})
  end
else
  table.insert(data.raw["recipe"]["diesel-locomotive-3"].ingredients,{"iron-gear-wheel", 60})
  table.insert(data.raw["recipe"]["cargo-wagon-3"].ingredients,{"iron-gear-wheel", 40})
end

if data.raw.item["electronic-processing-board"] then
  table.insert(data.raw["recipe"]["diesel-locomotive-3"].ingredients,{"electronic-processing-board", 5})
else
  table.insert(data.raw["recipe"]["diesel-locomotive-3"].ingredients,{"processing-unit", 5})
end


