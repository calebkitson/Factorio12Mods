table.insert(data.raw["recipe"]["roboport-door-2"].ingredients,{"steel-plate", 15})
table.insert(data.raw["recipe"]["roboport-chargepad-2"].ingredients,{"steel-plate", 2})
table.insert(data.raw["recipe"]["bob-roboport-2"].ingredients,{"steel-plate", 15})
table.insert(data.raw["recipe"]["bob-robochest-2"].ingredients,{"steel-plate", 8})
table.insert(data.raw["recipe"]["bob-logistic-zone-expander-2"].ingredients,{"steel-plate", 5})
table.insert(data.raw["recipe"]["bob-robo-charge-port-2"].ingredients,{"steel-plate", 10})
table.insert(data.raw["recipe"]["bob-robo-charge-port-large-2"].ingredients,{"steel-plate", 15})

table.insert(data.raw["recipe"]["bob-roboport-2"].ingredients,{"roboport-antenna-2", 5})
table.insert(data.raw["recipe"]["bob-roboport-2"].ingredients,{"roboport-chargepad-2", 4})
table.insert(data.raw["recipe"]["bob-roboport-2"].ingredients,{"roboport-door-2", 1})

if data.raw.item["aluminium-plate"] then
  table.insert(data.raw["recipe"]["roboport-antenna-2"].ingredients,{"aluminium-plate", 1})
  table.insert(data.raw["recipe"]["bob-logistic-robot-2"].ingredients,{"aluminium-plate", 1})
  table.insert(data.raw["recipe"]["bob-construction-robot-2"].ingredients,{"aluminium-plate", 1})
else
  table.insert(data.raw["recipe"]["roboport-antenna-2"].ingredients,{"steel-plate", 2})
  table.insert(data.raw["recipe"]["bob-logistic-robot-2"].ingredients,{"steel-plate", 2})
  table.insert(data.raw["recipe"]["bob-construction-robot-2"].ingredients,{"steel-plate", 2})
end

if data.raw.item["tinned-copper-cable"] then
  table.insert(data.raw["recipe"]["roboport-antenna-2"].ingredients,{"tinned-copper-cable", 2})
else
  table.insert(data.raw["recipe"]["roboport-antenna-2"].ingredients,{"copper-cable", 3})
end

if data.raw.item["electronic-circuit-board"] then
  table.insert(data.raw["recipe"]["roboport-antenna-1"].ingredients,{"electronic-circuit-board", 5})
  table.insert(data.raw["recipe"]["roboport-chargepad-1"].ingredients,{"electronic-circuit-board", 5})
  table.insert(data.raw["recipe"]["roboport-antenna-2"].ingredients,{"electronic-circuit-board", 5})
  table.insert(data.raw["recipe"]["roboport-chargepad-2"].ingredients,{"electronic-circuit-board", 5})
  table.insert(data.raw["recipe"]["bob-logistic-robot-2"].ingredients,{"electronic-circuit-board", 1})
  table.insert(data.raw["recipe"]["bob-construction-robot-2"].ingredients,{"electronic-circuit-board", 1})
else
  table.insert(data.raw["recipe"]["roboport-antenna-1"].ingredients,{"advanced-circuit", 5})
  table.insert(data.raw["recipe"]["roboport-chargepad-1"].ingredients,{"advanced-circuit", 5})
  table.insert(data.raw["recipe"]["roboport-antenna-2"].ingredients,{"advanced-circuit", 5})
  table.insert(data.raw["recipe"]["roboport-chargepad-2"].ingredients,{"advanced-circuit", 5})
  table.insert(data.raw["recipe"]["bob-logistic-robot-2"].ingredients,{"advanced-circuit", 1})
  table.insert(data.raw["recipe"]["bob-construction-robot-2"].ingredients,{"advanced-circuit", 1})
end

if data.raw.item["steel-gear-wheel"] then
  table.insert(data.raw["recipe"]["roboport-door-2"].ingredients,{"steel-gear-wheel", 20})
else
  table.insert(data.raw["recipe"]["roboport-door-2"].ingredients,{"iron-gear-wheel", 40})
end

if data.raw.item["steel-bearing"] then
  table.insert(data.raw["recipe"]["roboport-door-2"].ingredients,{"steel-bearing", 20})
end

table.insert(data.raw["recipe"]["roboport-chargepad-2"].ingredients,{"battery", 2})
table.insert(data.raw["recipe"]["bob-logistic-robot-2"].ingredients,{"battery", 2})
table.insert(data.raw["recipe"]["bob-construction-robot-2"].ingredients,{"battery", 2})



table.insert(data.raw["recipe"]["bob-roboport-3"].ingredients,{"roboport-antenna-3", 5})
table.insert(data.raw["recipe"]["bob-roboport-3"].ingredients,{"roboport-chargepad-3", 4})
table.insert(data.raw["recipe"]["bob-roboport-3"].ingredients,{"roboport-door-3", 1})

if data.raw.item["titanium-plate"] then
  table.insert(data.raw["recipe"]["roboport-door-3"].ingredients,{"titanium-plate", 15})
  table.insert(data.raw["recipe"]["roboport-chargepad-3"].ingredients,{"titanium-plate", 2})
  table.insert(data.raw["recipe"]["bob-roboport-3"].ingredients,{"titanium-plate", 15})
  table.insert(data.raw["recipe"]["bob-logistic-robot-3"].ingredients,{"titanium-plate", 1})
  table.insert(data.raw["recipe"]["bob-construction-robot-3"].ingredients,{"titanium-plate", 1})
  table.insert(data.raw["recipe"]["bob-robochest-3"].ingredients,{"titanium-plate", 8})
  table.insert(data.raw["recipe"]["bob-logistic-zone-expander-3"].ingredients,{"titanium-plate", 5})
  table.insert(data.raw["recipe"]["bob-robo-charge-port-3"].ingredients,{"titanium-plate", 10})
  table.insert(data.raw["recipe"]["bob-robo-charge-port-large-3"].ingredients,{"titanium-plate", 15})
else
  table.insert(data.raw["recipe"]["roboport-door-3"].ingredients,{"steel-plate", 15})
  table.insert(data.raw["recipe"]["roboport-chargepad-3"].ingredients,{"steel-plate", 4})
  table.insert(data.raw["recipe"]["bob-roboport-3"].ingredients,{"steel-plate", 15})
  table.insert(data.raw["recipe"]["bob-logistic-robot-3"].ingredients,{"steel-plate", 3})
  table.insert(data.raw["recipe"]["bob-construction-robot-3"].ingredients,{"steel-plate", 3})
  table.insert(data.raw["recipe"]["bob-robochest-3"].ingredients,{"steel-plate", 8})
  table.insert(data.raw["recipe"]["bob-logistic-zone-expander-3"].ingredients,{"steel-plate", 5})
  table.insert(data.raw["recipe"]["bob-robo-charge-port-3"].ingredients,{"steel-plate", 10})
  table.insert(data.raw["recipe"]["bob-robo-charge-port-large-3"].ingredients,{"steel-plate", 15})
end

if data.raw.item["nickel-plate"] then
  table.insert(data.raw["recipe"]["roboport-antenna-3"].ingredients,{"nickel-plate", 1})
else
  table.insert(data.raw["recipe"]["roboport-antenna-3"].ingredients,{"steel-plate", 3})
end

if data.raw.item["insulated-cable"] then
  table.insert(data.raw["recipe"]["roboport-antenna-3"].ingredients,{"insulated-cable", 2})
else
  table.insert(data.raw["recipe"]["roboport-antenna-3"].ingredients,{"copper-cable", 5})
end

if data.raw.item["electronic-processing-board"] then
  table.insert(data.raw["recipe"]["roboport-antenna-3"].ingredients,{"electronic-processing-board", 5})
  table.insert(data.raw["recipe"]["roboport-chargepad-3"].ingredients,{"electronic-processing-board", 5})
  table.insert(data.raw["recipe"]["bob-logistic-robot-3"].ingredients,{"electronic-processing-board", 1})
  table.insert(data.raw["recipe"]["bob-construction-robot-3"].ingredients,{"electronic-processing-board", 1})
else
  table.insert(data.raw["recipe"]["roboport-antenna-3"].ingredients,{"processing-unit", 5})
  table.insert(data.raw["recipe"]["roboport-chargepad-3"].ingredients,{"processing-unit", 5})
  table.insert(data.raw["recipe"]["bob-logistic-robot-3"].ingredients,{"processing-unit", 1})
  table.insert(data.raw["recipe"]["bob-construction-robot-3"].ingredients,{"processing-unit", 1})
end

if data.raw.item["titanium-gear-wheel"] then
  table.insert(data.raw["recipe"]["roboport-door-3"].ingredients,{"titanium-gear-wheel", 20})
else
  table.insert(data.raw["recipe"]["roboport-door-3"].ingredients,{"iron-gear-wheel", 60})
end

if data.raw.item["titanium-bearing"] then
  table.insert(data.raw["recipe"]["roboport-door-3"].ingredients,{"titanium-bearing", 20})
else
  table.insert(data.raw["recipe"]["roboport-door-3"].ingredients,{type="fluid", name="lubricant", amount=10})
  data.raw.recipe["roboport-door-3"].category = "crafting-with-fluid"
end

table.insert(data.raw["recipe"]["roboport-chargepad-3"].ingredients,{"battery", 2})
table.insert(data.raw["recipe"]["bob-logistic-robot-3"].ingredients,{"battery", 2})
table.insert(data.raw["recipe"]["bob-construction-robot-3"].ingredients,{"battery", 2})



table.insert(data.raw["recipe"]["bob-roboport-4"].ingredients,{"roboport-antenna-4", 5})
table.insert(data.raw["recipe"]["bob-roboport-4"].ingredients,{"roboport-chargepad-4", 4})
table.insert(data.raw["recipe"]["bob-roboport-4"].ingredients,{"roboport-door-4", 1})

if data.raw.item["nitinol-alloy"] then
  table.insert(data.raw["recipe"]["roboport-door-4"].ingredients,{"nitinol-alloy", 15})
  table.insert(data.raw["recipe"]["roboport-chargepad-4"].ingredients,{"nitinol-alloy", 2})
  table.insert(data.raw["recipe"]["bob-roboport-4"].ingredients,{"nitinol-alloy", 15})
  table.insert(data.raw["recipe"]["bob-robochest-4"].ingredients,{"nitinol-alloy", 8})
  table.insert(data.raw["recipe"]["bob-logistic-zone-expander-4"].ingredients,{"nitinol-alloy", 5})
  table.insert(data.raw["recipe"]["bob-robo-charge-port-4"].ingredients,{"nitinol-alloy", 10})
  table.insert(data.raw["recipe"]["bob-robo-charge-port-large-4"].ingredients,{"nitinol-alloy", 15})
else
  table.insert(data.raw["recipe"]["roboport-door-4"].ingredients,{"steel-plate", 15})
  table.insert(data.raw["recipe"]["roboport-chargepad-4"].ingredients,{"steel-plate", 6})
  table.insert(data.raw["recipe"]["bob-roboport-4"].ingredients,{"steel-plate", 15})
  table.insert(data.raw["recipe"]["bob-robochest-4"].ingredients,{"steel-plate", 8})
  table.insert(data.raw["recipe"]["bob-logistic-zone-expander-4"].ingredients,{"steel-plate", 5})
  table.insert(data.raw["recipe"]["bob-robo-charge-port-4"].ingredients,{"steel-plate", 10})
  table.insert(data.raw["recipe"]["bob-robo-charge-port-large-4"].ingredients,{"steel-plate", 15})
end

if data.raw.item["nickel-plate"] then
  if data.raw.item["gold-plate"] then
    table.insert(data.raw["recipe"]["roboport-antenna-4"].ingredients,{"nickel-plate", 1})
    table.insert(data.raw["recipe"]["roboport-antenna-4"].ingredients,{"gold-plate", 1})
  else
    table.insert(data.raw["recipe"]["roboport-antenna-4"].ingredients,{"nickel-plate", 1})
    table.insert(data.raw["recipe"]["roboport-antenna-4"].ingredients,{"steel-plate", 1})
  end
else
  if data.raw.item["gold-plate"] then
    table.insert(data.raw["recipe"]["roboport-antenna-4"].ingredients,{"gold-plate", 1})
    table.insert(data.raw["recipe"]["roboport-antenna-4"].ingredients,{"steel-plate", 1})
  else
    table.insert(data.raw["recipe"]["roboport-antenna-4"].ingredients,{"steel-plate", 4})
  end
end

if data.raw.item["silicon-nitride"] then
  table.insert(data.raw["recipe"]["bob-logistic-robot-4"].ingredients,{"silicon-nitride", 1})
  table.insert(data.raw["recipe"]["bob-construction-robot-4"].ingredients,{"silicon-nitride", 1})
else
  table.insert(data.raw["recipe"]["bob-logistic-robot-4"].ingredients,{"steel-plate", 4})
  table.insert(data.raw["recipe"]["bob-construction-robot-4"].ingredients,{"steel-plate", 4})
end

if data.raw.item["gilded-copper-cable"] then
  table.insert(data.raw["recipe"]["roboport-antenna-4"].ingredients,{"gilded-copper-cable", 2})
else
  table.insert(data.raw["recipe"]["roboport-antenna-4"].ingredients,{"copper-cable", 8})
end

if data.raw.item["electronic-processing-board-2"] then
  table.insert(data.raw["recipe"]["roboport-antenna-4"].ingredients,{"electronic-processing-board-2", 5})
  table.insert(data.raw["recipe"]["roboport-chargepad-4"].ingredients,{"electronic-processing-board-2", 5})
  table.insert(data.raw["recipe"]["bob-logistic-robot-4"].ingredients,{"electronic-processing-board-2", 1})
  table.insert(data.raw["recipe"]["bob-construction-robot-4"].ingredients,{"electronic-processing-board-2", 1})
else
  table.insert(data.raw["recipe"]["roboport-antenna-4"].ingredients,{"processing-unit", 10})
  table.insert(data.raw["recipe"]["roboport-chargepad-4"].ingredients,{"processing-unit", 10})
  table.insert(data.raw["recipe"]["bob-logistic-robot-4"].ingredients,{"processing-unit", 2})
  table.insert(data.raw["recipe"]["bob-construction-robot-4"].ingredients,{"processing-unit", 2})
end

if data.raw.item["nitinol-gear-wheel"] then
  table.insert(data.raw["recipe"]["roboport-door-4"].ingredients,{"nitinol-gear-wheel", 20})
else
  table.insert(data.raw["recipe"]["roboport-door-4"].ingredients,{"iron-gear-wheel", 80})
end

if data.raw.item["nitinol-bearing"] then
  table.insert(data.raw["recipe"]["roboport-door-4"].ingredients,{"nitinol-bearing", 20})
else
  table.insert(data.raw["recipe"]["roboport-door-4"].ingredients,{type="fluid", name="lubricant", amount=10})
  data.raw.recipe["roboport-door-4"].category = "crafting-with-fluid"
end

if data.raw.item["lithium-ion-battery"] then
  table.insert(data.raw["recipe"]["roboport-chargepad-4"].ingredients,{"lithium-ion-battery", 2})
  table.insert(data.raw["recipe"]["bob-logistic-robot-4"].ingredients,{"lithium-ion-battery", 2})
  table.insert(data.raw["recipe"]["bob-construction-robot-4"].ingredients,{"lithium-ion-battery", 2})
else
  table.insert(data.raw["recipe"]["roboport-chargepad-4"].ingredients,{"battery", 4})
  table.insert(data.raw["recipe"]["bob-logistic-robot-4"].ingredients,{"battery", 4})
  table.insert(data.raw["recipe"]["bob-construction-robot-4"].ingredients,{"battery", 4})
end

