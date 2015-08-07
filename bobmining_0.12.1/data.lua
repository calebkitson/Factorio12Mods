require("config")

data:extend(
{
  {
    type = "item-subgroup",
    name = "bob-tool",
    group = "production",
    order = "a-1",
  },
}
)

if bobmods.mining.MiningDrills == true then
  require("prototypes.drills")
end


if bobmods.mining.AreaDrills== true then
  require("prototypes.areadrills")
end


if bobmods.mining.Pumpjacks == true then
  require("prototypes.pumpjacks")
end


if bobmods.mining.MiningAxes == true then
  require("prototypes.axes")
end

