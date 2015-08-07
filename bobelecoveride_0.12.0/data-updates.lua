for i, effect in pairs(data.raw.technology["advanced-electronics"].effects ) do
	if effect.recipe == "advanced-circuit" then table.remove(data.raw.technology["advanced-electronics"].effects, i) end
end

for i, effect in pairs(data.raw.technology["advanced-electronics"].effects ) do
	if effect.recipe == "electronic-circuit-board" then table.remove(data.raw.technology["advanced-electronics"].effects, i) end
end

table.insert(data.raw.technology["advanced-electronics"].effects,{type = "unlock-recipe", recipe = "advanced-circuit"})


for i, effect in pairs(data.raw.technology["advanced-electronics"].effects ) do
	if effect.recipe == "processing-unit" then table.remove(data.raw.technology["advanced-electronics"].effects, i) end
end

for i, effect in pairs(data.raw.technology["advanced-electronics-2"].effects ) do
	if effect.recipe == "electronic-processing-board" then table.remove(data.raw.technology["advanced-electronics-2"].effects, i) end
end

table.insert(data.raw.technology["advanced-electronics-2"].effects,{type = "unlock-recipe", recipe = "processing-unit"})




if data.raw.item["advanced-processing-unit"] then
  data:extend(
  {
    {
      type = "item",
      name = "advanced-processing-unit",
      icon = "__bobplates__/graphics/icons/electronic-processing-board-2.png",
      flags = {"goes-to-main-inventory"},
      subgroup = "bob-electronic-boards",
      order = "c-c4[electronic-processing-board-2]",
      stack_size = 200
    },
  }
  )
  if data.raw.recipe["advanced-processing-unit"] then
    data:extend(
    {
      {
        type = "recipe",
        name = "advanced-processing-unit",
        energy_required = 15,
        enabled = false,
        ingredients =
        {
          {"multi-layer-circuit-board", 1},
          {"basic-electronic-components", 1},
          {"electronic-components", 2},
          {"intergrated-electronics", 4},
          {"processing-electronics", 1},
          {"solder", 4},
        },
        result = "advanced-processing-unit",
      },
    }
    )

    for i, effect in pairs(data.raw.technology["advanced-electronics-2"].effects ) do
      if effect.recipe == "advanced-processing-unit" then table.remove(data.raw.technology["advanced-electronics-2"].effects, i) end
    end

    for i, effect in pairs(data.raw.technology["advanced-electronics-3"].effects ) do
      if effect.recipe == "electronic-processing-board-2" then table.remove(data.raw.technology["advanced-electronics-3"].effects, i) end
    end

    table.insert(data.raw.technology["advanced-electronics-3"].effects,{type = "unlock-recipe", recipe = "advanced-processing-unit"})
  end
end

