if data.raw.tool["science-pack-4"] then
  table.insert(data.raw.technology["bob-laser-rifle-ammo-4"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["bob-laser-rifle-ammo-5"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["bob-laser-rifle-ammo-6"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["bob-laser-rifle-damage-5"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["bob-laser-rifle-damage-6"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["bob-laser-rifle-speed-5"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["bob-laser-rifle-speed-6"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["bob-turrets-5"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["bob-laser-turrets-5"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["bob-sniper-turrets-3"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["basic-laser-defense-equipment-5"].unit.ingredients,{"science-pack-4", 1})
  table.insert(data.raw.technology["basic-laser-defense-equipment-6"].unit.ingredients,{"science-pack-4", 1})
  if bobmods.research.TankCannonResearch == true then
    table.insert(data.raw.technology["bob-tank-cannon-damage-5"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["bob-tank-cannon-damage-6"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["bob-tank-cannon-speed-5"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["bob-tank-cannon-speed-6"].unit.ingredients,{"science-pack-4", 1})
  end
else
  table.insert(data.raw.technology["bob-laser-rifle-ammo-4"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["bob-laser-rifle-ammo-5"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["bob-laser-rifle-damage-5"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["bob-laser-rifle-speed-5"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["bob-turrets-5"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["bob-laser-turrets-5"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["bob-sniper-turrets-3"].unit.ingredients,{"alien-science-pack", 1})
  table.insert(data.raw.technology["basic-laser-defense-equipment-5"].unit.ingredients,{"alien-science-pack", 1})
  if bobmods.research.TankCannonResearch == true then
    table.insert(data.raw.technology["bob-tank-cannon-damage-5"].unit.ingredients,{"alien-science-pack", 1})
    table.insert(data.raw.technology["bob-tank-cannon-speed-5"].unit.ingredients,{"alien-science-pack", 1})
  end
end


if data.raw.tool["science-pack-gold"] and data.raw.tool["alien-science-pack-blue"] then
  table.insert(data.raw.technology["bob-ap-bullets"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-ap-bullets"].unit.ingredients,{"alien-science-pack-blue", 1})
  table.insert(data.raw.technology["bob-shotgun-ap-shells"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-shotgun-ap-shells"].unit.ingredients,{"alien-science-pack-blue", 1})
  table.insert(data.raw.technology["bob-piercing-rocket"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-piercing-rocket"].unit.ingredients,{"alien-science-pack-blue", 1})
else
  table.insert(data.raw.technology["bob-ap-bullets"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-ap-bullets"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-ap-bullets"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["bob-shotgun-ap-shells"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-shotgun-ap-shells"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-shotgun-ap-shells"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["bob-piercing-rocket"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-piercing-rocket"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-piercing-rocket"].unit.ingredients,{"science-pack-3", 1})
  if data.raw.tool["science-pack-4"] then
    table.insert(data.raw.technology["bob-ap-bullets"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["bob-shotgun-ap-shells"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["bob-piercing-rocket"].unit.ingredients,{"science-pack-4", 1})
  else
    table.insert(data.raw.technology["bob-ap-bullets"].unit.ingredients,{"alien-science-pack", 1})
    table.insert(data.raw.technology["bob-shotgun-ap-shells"].unit.ingredients,{"alien-science-pack", 1})
    table.insert(data.raw.technology["bob-piercing-rocket"].unit.ingredients,{"alien-science-pack", 1})
  end
end


if data.raw.tool["science-pack-gold"] and data.raw.tool["alien-science-pack-orange"] then
  table.insert(data.raw.technology["bob-impact-bullets"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-impact-bullets"].unit.ingredients,{"alien-science-pack-orange", 1})
  table.insert(data.raw.technology["bob-shotgun-impact-shells"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-shotgun-impact-shells"].unit.ingredients,{"alien-science-pack-orange", 1})
  table.insert(data.raw.technology["bob-impact-rocket"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-impact-rocket"].unit.ingredients,{"alien-science-pack-orange", 1})
else
  table.insert(data.raw.technology["bob-impact-bullets"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-impact-bullets"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-impact-bullets"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["bob-shotgun-impact-shells"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-shotgun-impact-shells"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-shotgun-impact-shells"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["bob-impact-rocket"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-impact-rocket"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-impact-rocket"].unit.ingredients,{"science-pack-3", 1})
  if data.raw.tool["science-pack-4"] then
    table.insert(data.raw.technology["bob-impact-bullets"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["bob-shotgun-impact-shells"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["bob-impact-rocket"].unit.ingredients,{"science-pack-4", 1})
  else
    table.insert(data.raw.technology["bob-impact-bullets"].unit.ingredients,{"alien-science-pack", 1})
    table.insert(data.raw.technology["bob-shotgun-impact-shells"].unit.ingredients,{"alien-science-pack", 1})
    table.insert(data.raw.technology["bob-impact-rocket"].unit.ingredients,{"alien-science-pack", 1})
  end
end


if data.raw.tool["science-pack-gold"] and data.raw.tool["alien-science-pack-purple"] then
  table.insert(data.raw.technology["bob-acid-bullets"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-acid-bullets"].unit.ingredients,{"alien-science-pack-purple", 1})
  table.insert(data.raw.technology["bob-shotgun-acid-shells"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-shotgun-acid-shells"].unit.ingredients,{"alien-science-pack-purple", 1})
  table.insert(data.raw.technology["bob-acid-rocket"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-acid-rocket"].unit.ingredients,{"alien-science-pack-purple", 1})
else
  table.insert(data.raw.technology["bob-acid-bullets"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-acid-bullets"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-acid-bullets"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["bob-shotgun-acid-shells"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-shotgun-acid-shells"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-shotgun-acid-shells"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["bob-acid-rocket"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-acid-rocket"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-acid-rocket"].unit.ingredients,{"science-pack-3", 1})
  if data.raw.tool["science-pack-4"] then
    table.insert(data.raw.technology["bob-acid-bullets"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["bob-shotgun-acid-shells"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["bob-acid-rocket"].unit.ingredients,{"science-pack-4", 1})
  else
    table.insert(data.raw.technology["bob-acid-bullets"].unit.ingredients,{"alien-science-pack", 1})
    table.insert(data.raw.technology["bob-shotgun-acid-shells"].unit.ingredients,{"alien-science-pack", 1})
    table.insert(data.raw.technology["bob-acid-rocket"].unit.ingredients,{"alien-science-pack", 1})
  end
end


if data.raw.tool["science-pack-gold"] and data.raw.tool["alien-science-pack-yellow"] then
  table.insert(data.raw.technology["bob-he-bullets"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-he-bullets"].unit.ingredients,{"alien-science-pack-yellow", 1})
  table.insert(data.raw.technology["bob-shotgun-explosive-shells"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-shotgun-explosive-shells"].unit.ingredients,{"alien-science-pack-yellow", 1})
  table.insert(data.raw.technology["bob-explosive-rocket"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-explosive-rocket"].unit.ingredients,{"alien-science-pack-yellow", 1})
else
  table.insert(data.raw.technology["bob-he-bullets"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-he-bullets"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-he-bullets"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["bob-shotgun-explosive-shells"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-shotgun-explosive-shells"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-shotgun-explosive-shells"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["bob-explosive-rocket"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-explosive-rocket"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-explosive-rocket"].unit.ingredients,{"science-pack-3", 1})
  if data.raw.tool["science-pack-4"] then
    table.insert(data.raw.technology["bob-he-bullets"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["bob-shotgun-explosive-shells"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["bob-explosive-rocket"].unit.ingredients,{"science-pack-4", 1})
  else
    table.insert(data.raw.technology["bob-he-bullets"].unit.ingredients,{"alien-science-pack", 1})
    table.insert(data.raw.technology["bob-shotgun-explosive-shells"].unit.ingredients,{"alien-science-pack", 1})
    table.insert(data.raw.technology["bob-explosive-rocket"].unit.ingredients,{"alien-science-pack", 1})
  end
end


if data.raw.tool["science-pack-gold"] and data.raw.tool["alien-science-pack-green"] then
  table.insert(data.raw.technology["bob-poison-bullets"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-poison-bullets"].unit.ingredients,{"alien-science-pack-green", 1})
  table.insert(data.raw.technology["bob-shotgun-poison-shells"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-shotgun-poison-shells"].unit.ingredients,{"alien-science-pack-green", 1})
  table.insert(data.raw.technology["bob-poison-rocket"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-poison-rocket"].unit.ingredients,{"alien-science-pack-green", 1})
else
  table.insert(data.raw.technology["bob-poison-bullets"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-poison-bullets"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-poison-bullets"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["bob-shotgun-poison-shells"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-shotgun-poison-shells"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-shotgun-poison-shells"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["bob-poison-rocket"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-poison-rocket"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-poison-rocket"].unit.ingredients,{"science-pack-3", 1})
  if data.raw.tool["science-pack-4"] then
    table.insert(data.raw.technology["bob-poison-bullets"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["bob-shotgun-poison-shells"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["bob-poison-rocket"].unit.ingredients,{"science-pack-4", 1})
  else
    table.insert(data.raw.technology["bob-poison-bullets"].unit.ingredients,{"alien-science-pack", 1})
    table.insert(data.raw.technology["bob-shotgun-poison-shells"].unit.ingredients,{"alien-science-pack", 1})
    table.insert(data.raw.technology["bob-poison-rocket"].unit.ingredients,{"alien-science-pack", 1})
  end
end


if data.raw.tool["science-pack-gold"] and data.raw.tool["alien-science-pack-red"] then
  table.insert(data.raw.technology["bob-flame-bullets"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-flame-bullets"].unit.ingredients,{"alien-science-pack-red", 1})
  table.insert(data.raw.technology["bob-shotgun-flame-shells"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-shotgun-flame-shells"].unit.ingredients,{"alien-science-pack-red", 1})
  table.insert(data.raw.technology["bob-flame-rocket"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-flame-rocket"].unit.ingredients,{"alien-science-pack-red", 1})
else
  table.insert(data.raw.technology["bob-flame-bullets"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-flame-bullets"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-flame-bullets"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["bob-shotgun-flame-shells"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-shotgun-flame-shells"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-shotgun-flame-shells"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["bob-flame-rocket"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-flame-rocket"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-flame-rocket"].unit.ingredients,{"science-pack-3", 1})
  if data.raw.tool["science-pack-4"] then
    table.insert(data.raw.technology["bob-flame-bullets"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["bob-shotgun-flame-shells"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["bob-flame-rocket"].unit.ingredients,{"science-pack-4", 1})
  else
    table.insert(data.raw.technology["bob-flame-bullets"].unit.ingredients,{"alien-science-pack", 1})
    table.insert(data.raw.technology["bob-shotgun-flame-shells"].unit.ingredients,{"alien-science-pack", 1})
    table.insert(data.raw.technology["bob-flame-rocket"].unit.ingredients,{"alien-science-pack", 1})
  end
end


if data.raw.tool["science-pack-gold"] and data.raw.tool["alien-science-pack-blue"] and data.raw.tool["alien-science-pack-orange"] then
  table.insert(data.raw.technology["bob-power-armor-3"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-power-armor-3"].unit.ingredients,{"alien-science-pack-blue", 1})
  table.insert(data.raw.technology["bob-power-armor-3"].unit.ingredients,{"alien-science-pack-orange", 1})
  table.insert(data.raw.technology["energy-shield-equipment-4"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["energy-shield-equipment-4"].unit.ingredients,{"alien-science-pack-blue", 1})
  table.insert(data.raw.technology["energy-shield-equipment-4"].unit.ingredients,{"alien-science-pack-orange", 1})
  table.insert(data.raw.technology["battery-equipment-4"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["battery-equipment-4"].unit.ingredients,{"alien-science-pack-blue", 1})
  table.insert(data.raw.technology["battery-equipment-4"].unit.ingredients,{"alien-science-pack-orange", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-2"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-2"].unit.ingredients,{"alien-science-pack-blue", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-2"].unit.ingredients,{"alien-science-pack-orange", 1})
else
  table.insert(data.raw.technology["bob-power-armor-3"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-power-armor-3"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-power-armor-3"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["energy-shield-equipment-4"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["energy-shield-equipment-4"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["energy-shield-equipment-4"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["battery-equipment-4"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["battery-equipment-4"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["battery-equipment-4"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-2"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-2"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-2"].unit.ingredients,{"science-pack-3", 1})
  if data.raw.tool["science-pack-4"] then
    table.insert(data.raw.technology["bob-power-armor-3"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["energy-shield-equipment-4"].unit.ingredients,{"science-pack-4", 1})
--    table.insert(data.raw.technology["battery-equipment-4"].unit.ingredients,{"science-pack-4", 1})
--    table.insert(data.raw.technology["fusion-reactor-equipment-2"].unit.ingredients,{"science-pack-4", 1})
  end
end

if data.raw.tool["science-pack-gold"] and data.raw.tool["alien-science-pack-purple"] and data.raw.tool["alien-science-pack-yellow"] then
  table.insert(data.raw.technology["bob-power-armor-4"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-power-armor-4"].unit.ingredients,{"alien-science-pack-purple", 1})
  table.insert(data.raw.technology["bob-power-armor-4"].unit.ingredients,{"alien-science-pack-yellow", 1})
  table.insert(data.raw.technology["energy-shield-equipment-5"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["energy-shield-equipment-5"].unit.ingredients,{"alien-science-pack-purple", 1})
  table.insert(data.raw.technology["energy-shield-equipment-5"].unit.ingredients,{"alien-science-pack-yellow", 1})
  table.insert(data.raw.technology["battery-equipment-5"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["battery-equipment-5"].unit.ingredients,{"alien-science-pack-purple", 1})
  table.insert(data.raw.technology["battery-equipment-5"].unit.ingredients,{"alien-science-pack-yellow", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-3"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-3"].unit.ingredients,{"alien-science-pack-purple", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-3"].unit.ingredients,{"alien-science-pack-yellow", 1})
else
  table.insert(data.raw.technology["bob-power-armor-4"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-power-armor-4"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-power-armor-4"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["energy-shield-equipment-5"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["energy-shield-equipment-5"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["energy-shield-equipment-5"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["battery-equipment-5"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["battery-equipment-5"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["battery-equipment-5"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-3"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-3"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-3"].unit.ingredients,{"science-pack-3", 1})
  if data.raw.tool["science-pack-4"] then
    table.insert(data.raw.technology["bob-power-armor-4"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["energy-shield-equipment-5"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["battery-equipment-5"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["fusion-reactor-equipment-3"].unit.ingredients,{"science-pack-4", 1})
  end
end

if data.raw.tool["science-pack-gold"] and data.raw.tool["alien-science-pack-green"] and data.raw.tool["alien-science-pack-red"] then
  table.insert(data.raw.technology["bob-power-armor-5"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["bob-power-armor-5"].unit.ingredients,{"alien-science-pack-green", 1})
  table.insert(data.raw.technology["bob-power-armor-5"].unit.ingredients,{"alien-science-pack-red", 1})
  table.insert(data.raw.technology["energy-shield-equipment-6"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["energy-shield-equipment-6"].unit.ingredients,{"alien-science-pack-green", 1})
  table.insert(data.raw.technology["energy-shield-equipment-6"].unit.ingredients,{"alien-science-pack-red", 1})
  table.insert(data.raw.technology["battery-equipment-6"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["battery-equipment-6"].unit.ingredients,{"alien-science-pack-green", 1})
  table.insert(data.raw.technology["battery-equipment-6"].unit.ingredients,{"alien-science-pack-red", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-4"].unit.ingredients,{"science-pack-gold", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-4"].unit.ingredients,{"alien-science-pack-green", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-4"].unit.ingredients,{"alien-science-pack-red", 1})
else
  table.insert(data.raw.technology["bob-power-armor-5"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["bob-power-armor-5"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["bob-power-armor-5"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["energy-shield-equipment-6"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["energy-shield-equipment-6"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["energy-shield-equipment-6"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["battery-equipment-6"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["battery-equipment-6"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["battery-equipment-6"].unit.ingredients,{"science-pack-3", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-4"].unit.ingredients,{"science-pack-1", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-4"].unit.ingredients,{"science-pack-2", 1})
  table.insert(data.raw.technology["fusion-reactor-equipment-4"].unit.ingredients,{"science-pack-3", 1})
  if data.raw.tool["science-pack-4"] then
    table.insert(data.raw.technology["bob-power-armor-5"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["energy-shield-equipment-6"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["battery-equipment-6"].unit.ingredients,{"science-pack-4", 1})
    table.insert(data.raw.technology["fusion-reactor-equipment-4"].unit.ingredients,{"science-pack-4", 1})
  end
end



table.insert(data.raw.technology["military-3"].effects,{type = "unlock-recipe", recipe = "rifle"})
table.insert(data.raw.technology["military-3"].effects,{type = "unlock-recipe", recipe = "sniper-rifle"})

table.insert(data.raw.technology["rocketry"].effects,{type = "unlock-recipe", recipe = "rocket-engine"})

table.insert(data.raw.technology["gun-turret-damage-1"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = "0.1"})
table.insert(data.raw.technology["gun-turret-damage-1"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = "0.1"})
table.insert(data.raw.technology["gun-turret-damage-1"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = "0.1"})
table.insert(data.raw.technology["gun-turret-damage-1"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = "0.1"})

table.insert(data.raw.technology["gun-turret-damage-2"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = "0.1"})
table.insert(data.raw.technology["gun-turret-damage-2"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = "0.1"})
table.insert(data.raw.technology["gun-turret-damage-2"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = "0.1"})
table.insert(data.raw.technology["gun-turret-damage-2"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = "0.1"})

table.insert(data.raw.technology["gun-turret-damage-3"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-3"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-3"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-3"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = "0.2"})

table.insert(data.raw.technology["gun-turret-damage-4"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-4"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-4"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-4"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = "0.2"})

table.insert(data.raw.technology["gun-turret-damage-5"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-5"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-5"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-5"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = "0.2"})

table.insert(data.raw.technology["gun-turret-damage-6"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = "0.4"})
table.insert(data.raw.technology["gun-turret-damage-6"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = "0.4"})
table.insert(data.raw.technology["gun-turret-damage-6"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = "0.4"})
table.insert(data.raw.technology["gun-turret-damage-6"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = "0.4"})

if data.raw.recipe["gun-cotton-synthetic"] then
  table.insert(data.raw.technology["cordite-processing"].effects,{type = "unlock-recipe", recipe = "gun-cotton-synthetic"})
end


if data.raw.technology["speed-module-4"] then
  table.insert(data.raw.technology["bob-power-armor-3"].prerequisites,"speed-module-4")
  table.insert(data.raw.technology["fusion-reactor-equipment-2"].prerequisites,"speed-module-4")
else
  table.insert(data.raw.technology["fusion-reactor-equipment-2"].prerequisites,"speed-module-3")
end
if data.raw.technology["effectivity-module-4"] then
  table.insert(data.raw.technology["bob-power-armor-3"].prerequisites,"effectivity-module-4")
  table.insert(data.raw.technology["energy-shield-equipment-4"].prerequisites,"effectivity-module-4")
  table.insert(data.raw.technology["fusion-reactor-equipment-2"].prerequisites,"effectivity-module-4")
else
  table.insert(data.raw.technology["energy-shield-equipment-4"].prerequisites,"effectivity-module-3")
  table.insert(data.raw.technology["fusion-reactor-equipment-2"].prerequisites,"effectivity-module-3")
end
if data.raw.technology["productivity-module-4"] then
  table.insert(data.raw.technology["energy-shield-equipment-4"].prerequisites,"productivity-module-4")
  table.insert(data.raw.technology["fusion-reactor-equipment-2"].prerequisites,"productivity-module-4")
else
  table.insert(data.raw.technology["energy-shield-equipment-4"].prerequisites,"productivity-module-3")
  table.insert(data.raw.technology["fusion-reactor-equipment-2"].prerequisites,"productivity-module-3")
end

if data.raw.technology["speed-module-6"] then
  table.insert(data.raw.technology["bob-power-armor-4"].prerequisites,"speed-module-6")
  table.insert(data.raw.technology["fusion-reactor-equipment-3"].prerequisites,"speed-module-6")
end
if data.raw.technology["effectivity-module-6"] then
  table.insert(data.raw.technology["bob-power-armor-4"].prerequisites,"effectivity-module-6")
  table.insert(data.raw.technology["energy-shield-equipment-5"].prerequisites,"effectivity-module-6")
  table.insert(data.raw.technology["fusion-reactor-equipment-3"].prerequisites,"effectivity-module-6")
end
if data.raw.technology["productivity-module-6"] then
  table.insert(data.raw.technology["energy-shield-equipment-5"].prerequisites,"productivity-module-6")
  table.insert(data.raw.technology["fusion-reactor-equipment-3"].prerequisites,"productivity-module-6")
end

if data.raw.technology["speed-module-8"] then
  table.insert(data.raw.technology["bob-power-armor-5"].prerequisites,"speed-module-8")
  table.insert(data.raw.technology["fusion-reactor-equipment-4"].prerequisites,"speed-module-8")
end
if data.raw.technology["effectivity-module-8"] then
  table.insert(data.raw.technology["bob-power-armor-5"].prerequisites,"effectivity-module-8")
  table.insert(data.raw.technology["energy-shield-equipment-6"].prerequisites,"effectivity-module-8")
  table.insert(data.raw.technology["fusion-reactor-equipment-4"].prerequisites,"effectivity-module-8")
end
if data.raw.technology["productivity-module-8"] then
  table.insert(data.raw.technology["energy-shield-equipment-6"].prerequisites,"productivity-module-8")
  table.insert(data.raw.technology["fusion-reactor-equipment-4"].prerequisites,"productivity-module-8")
end



