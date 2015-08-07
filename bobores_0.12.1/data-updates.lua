require("config")

if data.raw.item["obsidian"] then
  if bobmods.ores.EnableCobaltOre == true then
    table.insert(data.raw.resource["cobalt-ore"].minable.results,{name = "obsidian", amount_min = 1, amount_max = 12, probability = 0.25})
  end
end

