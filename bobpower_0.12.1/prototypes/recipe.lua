data:extend(
{
  {
    type = "recipe",
    name = "boiler-2",
    enabled = "false",
    ingredients =
    {
      {"boiler", 1},
    },
    result = "boiler-2",
  },

  {
    type = "recipe",
    name = "boiler-3",
    enabled = "false",
    ingredients =
    {
      {"boiler-2", 1},
    },
    result = "boiler-3",
  },

  {
    type = "recipe",
    name = "boiler-4",
    enabled = "false",
    ingredients =
    {
      {"boiler-3", 1},
    },
    result = "boiler-4",
  },
}
)


table.insert(data.raw["recipe"]["boiler-2"].ingredients,{"steel-furnace", 1})

if data.raw.item["steel-pipe"] then
  table.insert(data.raw["recipe"]["boiler-2"].ingredients,{"steel-pipe", 1})
end


if data.raw.item["invar-alloy"] then
  table.insert(data.raw["recipe"]["boiler-3"].ingredients,{"invar-alloy", 5})
else
  table.insert(data.raw["recipe"]["boiler-3"].ingredients,{"steel-plate", 8})
end


if data.raw.item["brass-pipe"] then
  table.insert(data.raw["recipe"]["boiler-3"].ingredients,{"brass-pipe", 1})
end



if data.raw.item["tungsten-plate"] then
  table.insert(data.raw["recipe"]["boiler-4"].ingredients,{"tungsten-plate", 5})
else
  table.insert(data.raw["recipe"]["boiler-4"].ingredients,{"steel-plate", 10})
end

if data.raw.item["tungsten-pipe"] then
  table.insert(data.raw["recipe"]["boiler-4"].ingredients,{"tungsten-pipe", 1})
end


data:extend(
{
  {
    type = "recipe",
    name = "steam-engine-2",
    enabled = "false",
    ingredients =
    {
      {"steam-engine", 1},
    },
    result = "steam-engine-2",
  },
  {
    type = "recipe",
    name = "steam-engine-3",
    enabled = "false",
    ingredients =
    {
      {"steam-engine-2", 1},
    },
    result = "steam-engine-3",
  },
}
)

local num = 5

if data.raw.item["steel-bearing"] then
  table.insert(data.raw["recipe"]["steam-engine-2"].ingredients,{"steel-bearing", 5})
else
  num = 7
end

table.insert(data.raw["recipe"]["steam-engine-2"].ingredients,{"steel-plate", num})

if data.raw.item["steel-gear-wheel"] then
  table.insert(data.raw["recipe"]["steam-engine-2"].ingredients,{"steel-gear-wheel", num})
else
  table.insert(data.raw["recipe"]["steam-engine-2"].ingredients,{"iron-gear-wheel", num * 2})
end




if data.raw.item["electronic-circuit-board"] then
  table.insert(data.raw["recipe"]["steam-engine-3"].ingredients,{"electronic-circuit-board", 5})
else
  table.insert(data.raw["recipe"]["steam-engine-3"].ingredients,{"advanced-circuit", 5})
end

num = 5

if data.raw.item["titanium-bearing"] then
  table.insert(data.raw["recipe"]["steam-engine-3"].ingredients,{"titanium-bearing", 5})
else
  if data.raw.item["steel-bearing"] then
    table.insert(data.raw["recipe"]["steam-engine-3"].ingredients,{"steel-bearing", 5})
  else
    num = 7
  end
end

if data.raw.item["titanium-gear-wheel"] then
  table.insert(data.raw["recipe"]["steam-engine-3"].ingredients,{"titanium-gear-wheel", num})
else
  if data.raw.item["tungsten-gear-wheel"] then
    table.insert(data.raw["recipe"]["steam-engine-3"].ingredients,{"tungsten-gear-wheel", num})
  else
    if data.raw.item["steel-gear-wheel"] then
      table.insert(data.raw["recipe"]["steam-engine-3"].ingredients,{"steel-gear-wheel", num * 2})
    else
      table.insert(data.raw["recipe"]["steam-engine-3"].ingredients,{"iron-gear-wheel", num * 3})
    end
  end
end


if data.raw.item["titanium-plate"] then
  table.insert(data.raw["recipe"]["steam-engine-3"].ingredients,{"titanium-plate", num})
else
  if data.raw.item["tungsten-plate"] then
    table.insert(data.raw["recipe"]["steam-engine-3"].ingredients,{"tungsten-plate", num})
  else
    table.insert(data.raw["recipe"]["steam-engine-3"].ingredients,{"steel-plate", num * 2})
  end
end


data:extend(
{
  {
    type = "recipe",
    name = "solar-panel-small",
    energy_required = 4.5,
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 2},
      {"electronic-circuit", 7},
      {"copper-plate", 2}
    },
    result = "solar-panel-small"
  },

  {
    type = "recipe",
    name = "solar-panel-large",
    energy_required = 18,
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 9},
      {"electronic-circuit", 27},
      {"copper-plate", 9},
    },
    result = "solar-panel-large"
  },


  {
    type = "recipe",
    name = "solar-panel-small-2",
    energy_required = 4.5,
    enabled = "false",
    ingredients =
    {
      {"solar-panel-small", 1},
    },
    result = "solar-panel-small-2"
  },

  {
    type = "recipe",
    name = "solar-panel-2",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"solar-panel", 1},
    },
    result = "solar-panel-2"
  },

  {
    type = "recipe",
    name = "solar-panel-large-2",
    energy_required = 18,
    enabled = "false",
    ingredients =
    {
      {"solar-panel-large", 1},
    },
    result = "solar-panel-large-2"
  },


  {
    type = "recipe",
    name = "solar-panel-small-3",
    energy_required = 4.5,
    enabled = "false",
    ingredients =
    {
      {"solar-panel-small-2", 1},
    },
    result = "solar-panel-small-3"
  },

  {
    type = "recipe",
    name = "solar-panel-3",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"solar-panel-2", 1},
    },
    result = "solar-panel-3"
  },

  {
    type = "recipe",
    name = "solar-panel-large-3",
    energy_required = 18,
    enabled = "false",
    ingredients =
    {
      {"solar-panel-large-2", 1},
    },
    result = "solar-panel-large-3"
  },
}
)


if data.raw.item["glass"] then
  table.insert(data.raw["recipe"]["solar-panel-small-2"].ingredients,{"glass", 2})
  table.insert(data.raw["recipe"]["solar-panel-2"].ingredients,{"glass", 4})
  table.insert(data.raw["recipe"]["solar-panel-large-2"].ingredients,{"glass", 8})
else
  table.insert(data.raw["recipe"]["solar-panel-small-2"].ingredients,{"steel-plate", 2})
  table.insert(data.raw["recipe"]["solar-panel-2"].ingredients,{"steel-plate", 4})
  table.insert(data.raw["recipe"]["solar-panel-large-2"].ingredients,{"steel-plate", 7})
end

if data.raw.item["electronic-circuit-board"] then
  table.insert(data.raw["recipe"]["solar-panel-small-2"].ingredients,{"electronic-circuit-board", 4})
  table.insert(data.raw["recipe"]["solar-panel-2"].ingredients,{"electronic-circuit-board", 9})
  table.insert(data.raw["recipe"]["solar-panel-large-2"].ingredients,{"electronic-circuit-board", 16})
else
  table.insert(data.raw["recipe"]["solar-panel-small-2"].ingredients,{"advanced-circuit", 4})
  table.insert(data.raw["recipe"]["solar-panel-2"].ingredients,{"advanced-circuit", 9})
  table.insert(data.raw["recipe"]["solar-panel-large-2"].ingredients,{"advanced-circuit", 16})
end

if data.raw.item["silver-plate"] then
  table.insert(data.raw["recipe"]["solar-panel-small-2"].ingredients,{"silver-plate", 2})
  table.insert(data.raw["recipe"]["solar-panel-2"].ingredients,{"silver-plate", 4})
  table.insert(data.raw["recipe"]["solar-panel-large-2"].ingredients,{"silver-plate", 8})
else
  table.insert(data.raw["recipe"]["solar-panel-small-2"].ingredients,{"copper-plate", 2})
  table.insert(data.raw["recipe"]["solar-panel-2"].ingredients,{"copper-plate", 4})
  table.insert(data.raw["recipe"]["solar-panel-large-2"].ingredients,{"copper-plate", 7})
end



if data.raw.item["titanium-plate"] then
  table.insert(data.raw["recipe"]["solar-panel-small-3"].ingredients,{"titanium-plate", 2})
  table.insert(data.raw["recipe"]["solar-panel-3"].ingredients,{"titanium-plate", 4})
  table.insert(data.raw["recipe"]["solar-panel-large-3"].ingredients,{"titanium-plate", 8})
else
  if data.raw.item["aluminium-plate"] then
    table.insert(data.raw["recipe"]["solar-panel-small-3"].ingredients,{"aluminium-plate", 2})
    table.insert(data.raw["recipe"]["solar-panel-3"].ingredients,{"aluminium-plate", 4})
    table.insert(data.raw["recipe"]["solar-panel-large-3"].ingredients,{"aluminium-plate", 8})
  else
    table.insert(data.raw["recipe"]["solar-panel-small-3"].ingredients,{"steel-plate", 4})
    table.insert(data.raw["recipe"]["solar-panel-3"].ingredients,{"steel-plate", 9})
    table.insert(data.raw["recipe"]["solar-panel-large-3"].ingredients,{"steel-plate", 16})
  end
end

if data.raw.item["silicon-wafer"] then
  table.insert(data.raw["recipe"]["solar-panel-small-3"].ingredients,{"silicon-wafer", 16})
  table.insert(data.raw["recipe"]["solar-panel-3"].ingredients,{"silicon-wafer", 36})
  table.insert(data.raw["recipe"]["solar-panel-large-3"].ingredients,{"silicon-wafer", 64})
else
  if data.raw.item["silicon-plate"] then
    table.insert(data.raw["recipe"]["solar-panel-small-3"].ingredients,{"silicon-plate", 2})
    table.insert(data.raw["recipe"]["solar-panel-3"].ingredients,{"silicon-plate", 4})
    table.insert(data.raw["recipe"]["solar-panel-large-3"].ingredients,{"silicon-plate", 8})
  end
end

if data.raw.item["electronic-processing-board"] then
  table.insert(data.raw["recipe"]["solar-panel-small-3"].ingredients,{"electronic-processing-board", 4})
  table.insert(data.raw["recipe"]["solar-panel-3"].ingredients,{"electronic-processing-board", 8})
  table.insert(data.raw["recipe"]["solar-panel-large-3"].ingredients,{"electronic-processing-board", 16})
else
  table.insert(data.raw["recipe"]["solar-panel-small-3"].ingredients,{"processing-unit", 2})
  table.insert(data.raw["recipe"]["solar-panel-3"].ingredients,{"processing-unit", 4})
  table.insert(data.raw["recipe"]["solar-panel-large-3"].ingredients,{"processing-unit", 8})
end

if data.raw.item["electrum-alloy"] then
  table.insert(data.raw["recipe"]["solar-panel-small-3"].ingredients,{"electrum-alloy", 2})
  table.insert(data.raw["recipe"]["solar-panel-3"].ingredients,{"electrum-alloy", 4})
  table.insert(data.raw["recipe"]["solar-panel-large-3"].ingredients,{"electrum-alloy", 8})
else
  table.insert(data.raw["recipe"]["solar-panel-small-3"].ingredients,{"copper-plate", 4})
  table.insert(data.raw["recipe"]["solar-panel-3"].ingredients,{"copper-plate", 9})
  table.insert(data.raw["recipe"]["solar-panel-large-3"].ingredients,{"copper-plate", 16})
end



data:extend(
{
  {
    type = "recipe",
    name = "fast-accumulator",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 2},
      {"battery", 5},
    },
    result = "fast-accumulator"
  },

  {
    type = "recipe",
    name = "large-accumulator",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 2},
      {"battery", 5},
    },
    result = "large-accumulator"
  },


  {
    type = "recipe",
    name = "basic-accumulator-2",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"basic-accumulator", 1},
      {"steel-plate", 2},
      {"battery", 5},
    },
    result = "basic-accumulator-2"
  },

  {
    type = "recipe",
    name = "large-accumulator-2",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"large-accumulator", 1},
      {"steel-plate", 2},
      {"battery", 5},
    },
    result = "large-accumulator-2"
  },

  {
    type = "recipe",
    name = "fast-accumulator-2",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"fast-accumulator", 1},
      {"steel-plate", 2},
      {"battery", 5},
    },
    result = "fast-accumulator-2"
  },


  {
    type = "recipe",
    name = "basic-accumulator-3",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"basic-accumulator-2", 1},
    },
    result = "basic-accumulator-3"
  },

  {
    type = "recipe",
    name = "large-accumulator-3",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"large-accumulator-2", 1},
    },
    result = "large-accumulator-3"
  },

  {
    type = "recipe",
    name = "fast-accumulator-3",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"fast-accumulator-2", 1},
    },
    result = "fast-accumulator-3"
  },
}
)


if data.raw.item["electronic-circuit-board"] then
  table.insert(data.raw["recipe"]["basic-accumulator-2"].ingredients,{"electronic-circuit-board", 5})
  table.insert(data.raw["recipe"]["large-accumulator-2"].ingredients,{"electronic-circuit-board", 5})
  table.insert(data.raw["recipe"]["fast-accumulator-2"].ingredients,{"electronic-circuit-board", 5})
else
  table.insert(data.raw["recipe"]["basic-accumulator-2"].ingredients,{"advanced-circuit", 5})
  table.insert(data.raw["recipe"]["large-accumulator-2"].ingredients,{"advanced-circuit", 5})
  table.insert(data.raw["recipe"]["fast-accumulator-2"].ingredients,{"advanced-circuit", 5})
end



if data.raw.item["titanium-plate"] then
  table.insert(data.raw["recipe"]["basic-accumulator-3"].ingredients,{"titanium-plate", 2})
  table.insert(data.raw["recipe"]["large-accumulator-3"].ingredients,{"titanium-plate", 2})
  table.insert(data.raw["recipe"]["fast-accumulator-3"].ingredients,{"titanium-plate", 2})
else
  if data.raw.item["aluminium-plate"] then
    table.insert(data.raw["recipe"]["basic-accumulator-3"].ingredients,{"aluminium-plate", 2})
    table.insert(data.raw["recipe"]["large-accumulator-3"].ingredients,{"aluminium-plate", 2})
    table.insert(data.raw["recipe"]["fast-accumulator-3"].ingredients,{"aluminium-plate", 2})
  else
    table.insert(data.raw["recipe"]["basic-accumulator-3"].ingredients,{"steel-plate", 4})
    table.insert(data.raw["recipe"]["large-accumulator-3"].ingredients,{"steel-plate", 4})
    table.insert(data.raw["recipe"]["fast-accumulator-3"].ingredients,{"steel-plate", 4})
  end
end

if data.raw.item["lithium-ion-battery"] then
  table.insert(data.raw["recipe"]["basic-accumulator-3"].ingredients,{"lithium-ion-battery", 5})
  table.insert(data.raw["recipe"]["large-accumulator-3"].ingredients,{"lithium-ion-battery", 5})
  table.insert(data.raw["recipe"]["fast-accumulator-3"].ingredients,{"lithium-ion-battery", 5})
else
  table.insert(data.raw["recipe"]["basic-accumulator-3"].ingredients,{"battery", 8})
  table.insert(data.raw["recipe"]["large-accumulator-3"].ingredients,{"battery", 8})
  table.insert(data.raw["recipe"]["fast-accumulator-3"].ingredients,{"battery", 8})
end

if data.raw.item["electronic-processing-board"] then
  table.insert(data.raw["recipe"]["basic-accumulator-3"].ingredients,{"electronic-processing-board", 5})
  table.insert(data.raw["recipe"]["large-accumulator-3"].ingredients,{"electronic-processing-board", 5})
  table.insert(data.raw["recipe"]["fast-accumulator-3"].ingredients,{"electronic-processing-board", 5})
else
  table.insert(data.raw["recipe"]["basic-accumulator-3"].ingredients,{"processing-unit", 5})
  table.insert(data.raw["recipe"]["large-accumulator-3"].ingredients,{"processing-unit", 5})
  table.insert(data.raw["recipe"]["fast-accumulator-3"].ingredients,{"processing-unit", 5})
end


