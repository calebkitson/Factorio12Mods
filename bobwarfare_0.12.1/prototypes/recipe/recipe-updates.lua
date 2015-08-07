if data.raw.module["effectivity-module-4"] then
  table.insert(data.raw["recipe"]["bob-power-armor-mk3"].ingredients,{"effectivity-module-4", 5})
  table.insert(data.raw["recipe"]["energy-shield-mk4-equipment"].ingredients,{"effectivity-module-4", 1})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-2"].ingredients,{"effectivity-module-4", 2})
else
  table.insert(data.raw["recipe"]["bob-power-armor-mk3"].ingredients,{"effectivity-module-3", 7})
  table.insert(data.raw["recipe"]["energy-shield-mk4-equipment"].ingredients,{"effectivity-module-3", 1})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-2"].ingredients,{"effectivity-module-3", 2})
end

if data.raw.module["speed-module-4"] then
  table.insert(data.raw["recipe"]["bob-power-armor-mk3"].ingredients,{"speed-module-4", 5})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-2"].ingredients,{"speed-module-4", 2})
else
  table.insert(data.raw["recipe"]["bob-power-armor-mk3"].ingredients,{"speed-module-3", 7})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-2"].ingredients,{"speed-module-3", 2})
end

if data.raw.module["productivity-module-4"] then
  table.insert(data.raw["recipe"]["energy-shield-mk4-equipment"].ingredients,{"productivity-module-4", 1})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-2"].ingredients,{"productivity-module-4", 2})
else
  table.insert(data.raw["recipe"]["energy-shield-mk4-equipment"].ingredients,{"productivity-module-3", 1})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-2"].ingredients,{"productivity-module-3", 2})
end


if data.raw.module["effectivity-module-6"] then
  table.insert(data.raw["recipe"]["bob-power-armor-mk4"].ingredients,{"effectivity-module-6", 5})
  table.insert(data.raw["recipe"]["energy-shield-mk5-equipment"].ingredients,{"effectivity-module-6", 1})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-3"].ingredients,{"effectivity-module-6", 2})
else
  table.insert(data.raw["recipe"]["bob-power-armor-mk4"].ingredients,{"effectivity-module-3", 10})
  table.insert(data.raw["recipe"]["energy-shield-mk5-equipment"].ingredients,{"effectivity-module-3", 2})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-3"].ingredients,{"effectivity-module-3", 3})
end

if data.raw.module["speed-module-6"] then
  table.insert(data.raw["recipe"]["bob-power-armor-mk4"].ingredients,{"speed-module-6", 5})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-3"].ingredients,{"speed-module-6", 2})
else
  table.insert(data.raw["recipe"]["bob-power-armor-mk4"].ingredients,{"speed-module-3", 10})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-3"].ingredients,{"speed-module-3", 3})
end

if data.raw.module["productivity-module-6"] then
  table.insert(data.raw["recipe"]["energy-shield-mk5-equipment"].ingredients,{"productivity-module-6", 1})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-3"].ingredients,{"productivity-module-6", 2})
else
  table.insert(data.raw["recipe"]["energy-shield-mk5-equipment"].ingredients,{"productivity-module-3", 2})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-3"].ingredients,{"productivity-module-3", 4})
end


if data.raw.module["effectivity-module-8"] then
  table.insert(data.raw["recipe"]["bob-power-armor-mk5"].ingredients,{"effectivity-module-8", 5})
  table.insert(data.raw["recipe"]["energy-shield-mk6-equipment"].ingredients,{"effectivity-module-8", 1})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-4"].ingredients,{"effectivity-module-8", 2})
else
  table.insert(data.raw["recipe"]["bob-power-armor-mk5"].ingredients,{"effectivity-module-3", 15})
  table.insert(data.raw["recipe"]["energy-shield-mk6-equipment"].ingredients,{"effectivity-module-3", 3})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-4"].ingredients,{"effectivity-module-3", 4})
end

if data.raw.module["speed-module-8"] then
  table.insert(data.raw["recipe"]["bob-power-armor-mk5"].ingredients,{"speed-module-8", 5})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-4"].ingredients,{"speed-module-8", 2})
else
  table.insert(data.raw["recipe"]["bob-power-armor-mk5"].ingredients,{"speed-module-3", 15})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-4"].ingredients,{"speed-module-3", 3})
end

if data.raw.module["productivity-module-8"] then
  table.insert(data.raw["recipe"]["energy-shield-mk6-equipment"].ingredients,{"productivity-module-8", 1})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-4"].ingredients,{"productivity-module-8", 2})
else
  table.insert(data.raw["recipe"]["energy-shield-mk6-equipment"].ingredients,{"productivity-module-3", 3})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-4"].ingredients,{"productivity-module-3", 4})
end





local armoralienartifacts = 0
local shieldalienartifacts = 0
local batteryalienartifacts  = 10
local reactoralienartifacts = 0

if data.raw.item["alien-artifact-orange"] then
  table.insert(data.raw["recipe"]["bob-power-armor-mk3"].ingredients,{"alien-artifact-orange", 25})
  table.insert(data.raw["recipe"]["energy-shield-mk4-equipment"].ingredients,{"alien-artifact-orange", 5})
  table.insert(data.raw["recipe"]["battery-mk4-equipment"].ingredients,{"alien-artifact-orange", 5})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-2"].ingredients,{"alien-artifact-orange", 15})
else
  armoralienartifacts = armoralienartifacts + 35
  shieldalienartifacts = shieldalienartifacts + 7
  batteryalienartifacts  = batteryalienartifacts  + 7
  reactoralienartifacts = reactoralienartifacts + 20
end

if data.raw.item["alien-artifact-blue"] then
  table.insert(data.raw["recipe"]["bob-power-armor-mk3"].ingredients,{"alien-artifact-blue", 25})
  table.insert(data.raw["recipe"]["energy-shield-mk4-equipment"].ingredients,{"alien-artifact-blue", 5})
  table.insert(data.raw["recipe"]["battery-mk4-equipment"].ingredients,{"alien-artifact-blue", 5})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-2"].ingredients,{"alien-artifact-blue", 15})
else
  armoralienartifacts = armoralienartifacts + 35
  shieldalienartifacts = shieldalienartifacts + 7
  batteryalienartifacts  = batteryalienartifacts  + 7
  reactoralienartifacts = reactoralienartifacts + 20
end


if armoralienartifacts > 0 then
  table.insert(data.raw["recipe"]["bob-power-armor-mk3"].ingredients,{"alien-artifact", armoralienartifacts})
end

if shieldalienartifacts > 0 then
  table.insert(data.raw["recipe"]["energy-shield-mk4-equipment"].ingredients,{"alien-artifact", shieldalienartifacts})
end

if batteryalienartifacts  > 0 then
  table.insert(data.raw["recipe"]["battery-mk4-equipment"].ingredients,{"alien-artifact", batteryalienartifacts })
end

if reactoralienartifacts > 0 then
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-2"].ingredients,{"alien-artifact", reactoralienartifacts})
end



local armoralienartifacts = 0
local shieldalienartifacts = 0
local batteryalienartifacts  = 0
local reactoralienartifacts = 0

if data.raw.item["alien-artifact-yellow"] then
  table.insert(data.raw["recipe"]["bob-power-armor-mk4"].ingredients,{"alien-artifact-yellow", 25})
  table.insert(data.raw["recipe"]["energy-shield-mk5-equipment"].ingredients,{"alien-artifact-yellow", 5})
  table.insert(data.raw["recipe"]["battery-mk5-equipment"].ingredients,{"alien-artifact-yellow", 5})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-3"].ingredients,{"alien-artifact-yellow", 15})
else
  armoralienartifacts = armoralienartifacts + 45
  shieldalienartifacts = shieldalienartifacts + 10
  batteryalienartifacts  = batteryalienartifacts  + 10
  reactoralienartifacts = reactoralienartifacts + 30
end

if data.raw.item["alien-artifact-purple"] then
  table.insert(data.raw["recipe"]["bob-power-armor-mk4"].ingredients,{"alien-artifact-purple", 25})
  table.insert(data.raw["recipe"]["energy-shield-mk5-equipment"].ingredients,{"alien-artifact-purple", 5})
  table.insert(data.raw["recipe"]["battery-mk5-equipment"].ingredients,{"alien-artifact-purple", 5})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-3"].ingredients,{"alien-artifact-purple", 15})
else
  armoralienartifacts = armoralienartifacts + 45
  shieldalienartifacts = shieldalienartifacts + 10
  batteryalienartifacts  = batteryalienartifacts  + 10
  reactoralienartifacts = reactoralienartifacts + 30
end


if armoralienartifacts > 0 then
  table.insert(data.raw["recipe"]["bob-power-armor-mk4"].ingredients,{"alien-artifact", armoralienartifacts})
end

if shieldalienartifacts > 0 then
  table.insert(data.raw["recipe"]["energy-shield-mk5-equipment"].ingredients,{"alien-artifact", shieldalienartifacts})
end

if batteryalienartifacts  > 0 then
  table.insert(data.raw["recipe"]["battery-mk5-equipment"].ingredients,{"alien-artifact", batteryalienartifacts })
end

if reactoralienartifacts > 0 then
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-3"].ingredients,{"alien-artifact", reactoralienartifacts})
end



local armoralienartifacts = 0
local shieldalienartifacts = 0
local batteryalienartifacts = 0
local reactoralienartifacts = 0
local laseralienartifacts = 0

if data.raw.item["alien-artifact-red"] then
  table.insert(data.raw["recipe"]["bob-power-armor-mk5"].ingredients,{"alien-artifact-red", 25})
  table.insert(data.raw["recipe"]["energy-shield-mk6-equipment"].ingredients,{"alien-artifact-red", 5})
  table.insert(data.raw["recipe"]["battery-mk6-equipment"].ingredients,{"alien-artifact-red", 5})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-4"].ingredients,{"alien-artifact-red", 15})
  table.insert(data.raw["recipe"]["basic-laser-defense-equipment-6"].ingredients,{"alien-artifact-red", 5})
else
  armoralienartifacts = armoralienartifacts + 60
  shieldalienartifacts = shieldalienartifacts + 15
  batteryalienartifacts  = batteryalienartifacts  + 15
  reactoralienartifacts = reactoralienartifacts + 40
  laseralienartifacts = laseralienartifacts + 5
end

if data.raw.item["alien-artifact-green"] then
  table.insert(data.raw["recipe"]["bob-power-armor-mk5"].ingredients,{"alien-artifact-green", 25})
  table.insert(data.raw["recipe"]["energy-shield-mk6-equipment"].ingredients,{"alien-artifact-green", 5})
  table.insert(data.raw["recipe"]["battery-mk6-equipment"].ingredients,{"alien-artifact-green", 5})
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-4"].ingredients,{"alien-artifact-green", 15})
  table.insert(data.raw["recipe"]["basic-laser-defense-equipment-6"].ingredients,{"alien-artifact-green", 5})
else
  armoralienartifacts = armoralienartifacts + 60
  shieldalienartifacts = shieldalienartifacts + 15
  batteryalienartifacts  = batteryalienartifacts  + 15
  reactoralienartifacts = reactoralienartifacts + 40
  laseralienartifacts = laseralienartifacts + 5
end


if armoralienartifacts > 0 then
  table.insert(data.raw["recipe"]["bob-power-armor-mk5"].ingredients,{"alien-artifact", armoralienartifacts})
end

if shieldalienartifacts > 0 then
  table.insert(data.raw["recipe"]["energy-shield-mk6-equipment"].ingredients,{"alien-artifact", shieldalienartifacts})
end

if batteryalienartifacts  > 0 then
  table.insert(data.raw["recipe"]["battery-mk6-equipment"].ingredients,{"alien-artifact", batteryalienartifacts })
end

if reactoralienartifacts > 0 then
  table.insert(data.raw["recipe"]["fusion-reactor-equipment-4"].ingredients,{"alien-artifact", reactoralienartifacts})
end

if laseralienartifacts > 0 then
  table.insert(data.raw["recipe"]["basic-laser-defense-equipment-6"].ingredients,{"alien-artifact", laseralienartifacts})
end



