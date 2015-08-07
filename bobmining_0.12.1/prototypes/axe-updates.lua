if data.raw.item["brass-alloy"] or data.raw.item["zinc-plate"] then
data:extend(
{
  {
    type = "recipe",
    name = "brass-axe",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"iron-stick", 2},
    },
    result = "brass-axe"
  },
}
)

  if data.raw.item["brass-alloy"] then
    table.insert(data.raw.recipe["brass-axe"].ingredients,{"brass-alloy", 5})
  else
    if data.raw.item["zinc-plate"] then
      table.insert(data.raw.recipe["brass-axe"].ingredients,{"zinc-plate", 5})
    end
  end

  if data.raw.technology["zinc-processing"] then
    table.insert(data.raw.technology["zinc-processing"].effects,{type = "unlock-recipe", recipe = "brass-axe"})
  end
end


if data.raw.item["cobalt-plate"] or data.raw.item["cobalt-steel-alloy"] then
data:extend(
{
  {
    type = "recipe",
    name = "cobalt-axe",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"iron-stick", 2},
    },
    result = "cobalt-axe"
  },
}
)

  if data.raw.item["cobalt-steel-alloy"] then
    table.insert(data.raw.recipe["cobalt-axe"].ingredients,{"cobalt-steel-alloy", 5})
  else
    if data.raw.item["cobalt-plate"] then
      table.insert(data.raw.recipe["cobalt-axe"].ingredients,{"cobalt-plate", 1})
      table.insert(data.raw.recipe["cobalt-axe"].ingredients,{"steel-plate", 5})
    end
  end

  if data.raw.technology["cobalt-processing"] then
    table.insert(data.raw.technology["cobalt-processing"].effects,{type = "unlock-recipe", recipe = "cobalt-axe"})
  end
end


if data.raw.item["titanium-plate"] then
data:extend(
{
  {
    type = "recipe",
    name = "titanium-axe",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"iron-stick", 2},
      {"titanium-plate", 5}
    },
    result = "titanium-axe"
  },
}
)

  if data.raw.technology["titanium-processing"] then
    table.insert(data.raw.technology["titanium-processing"].effects,{type = "unlock-recipe", recipe = "titanium-axe"})
  else
    data.raw.recipe["titanium-axe"].enabled = "true"
  end
end


if data.raw.item["tungsten-plate"] or data.raw.item["tungsten-carbide"] or data.raw.item["copper-tungsten-alloy"] then
data:extend(
{
  {
    type = "recipe",
    name = "tungsten-axe",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"iron-stick", 2},
    },
    result = "tungsten-axe"
  },
}
)

  if data.raw.item["tungsten-carbide"] then
    table.insert(data.raw.recipe["tungsten-axe"].ingredients,{"tungsten-carbide", 5})
  else
    if data.raw.item["copper-tungsten-alloy"] then
      table.insert(data.raw.recipe["tungsten-axe"].ingredients,{"copper-tungsten-alloy", 5})
    else
      table.insert(data.raw.recipe["tungsten-axe"].ingredients,{"tungsten-plate", 5})
    end
  end

  if data.raw.technology["tungsten-alloy-processing"] then
    table.insert(data.raw.technology["tungsten-alloy-processing"].effects,{type = "unlock-recipe", recipe = "tungsten-axe"})
  else
    if data.raw.technology["tungsten-processing"] then
      table.insert(data.raw.technology["tungsten-processing"].effects,{type = "unlock-recipe", recipe = "tungsten-axe"})
    end
  end
end


if data.raw.item["diamond-5"] then
data:extend(
{
  {
    type = "recipe",
    name = "diamond-axe",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"iron-stick", 2},
    },
    result = "diamond-axe"
  },
}
)

  if data.raw.item["tungsten-carbide"] then
      table.insert(data.raw.recipe["diamond-axe"].ingredients,{"steel-plate", 5})
      table.insert(data.raw.recipe["diamond-axe"].ingredients,{"diamond-5", 5})
  end

  if data.raw.technology["gem-processing-2"] then
    table.insert(data.raw.technology["gem-processing-2"].effects,{type = "unlock-recipe", recipe = "diamond-axe"})
  end
end



