require("config")

data:extend(
{
  {
    type = "item-subgroup",
    name = "bob-ores",
    group = "intermediate-products",
    order = "b-a"
  },
  {
    type = "item-subgroup",
    name = "bob-tool",
    group = "production",
    order = "a-1",
  },
}
)
require("prototypes.ore-functions")

require("prototypes.tin-ore")
require("prototypes.silver-ore")
require("prototypes.gold-ore")
require("prototypes.bauxite-ore")
require("prototypes.quartz")
require("prototypes.rutile-ore")
require("prototypes.lead-ore")
require("prototypes.zinc-ore")
require("prototypes.tungsten-ore")

if bobmods.ores.EnhanceStone == true then
  require("prototypes.stone")
end

if bobmods.ores.EnableCobaltOre == true then
  require("prototypes.cobalt-ore")
end

if bobmods.ores.EnableNickelOre == true then
  require("prototypes.nickel-ore")
end

if bobmods.ores.EnableSulfur == true then
  require("prototypes.sulfur")
end

if (bobmods.ores.EnableGemOre == true and bobmods.ores.UnsortedGemOre == false) or bobmods.ores.GemsFromOtherOres == true then
  require("prototypes.gems")
end

if bobmods.ores.EnableGemOre == true then
  require("prototypes.gem-ore")

  if bobmods.ores.UnsortedGemOre == true then
    table.insert(data.raw.resource["gem-ore"].minable.results,{type="item", name="gem-ore", amount=1})
  else
    table.insert(data.raw.resource["gem-ore"].minable.results,{type="item", name="diamond-ore", amount=1, probability = bobmods.gems.DiamondRatio})
    table.insert(data.raw.resource["gem-ore"].minable.results,{type="item", name="emerald-ore", amount=1, probability = bobmods.gems.EmeraldRatio})
    table.insert(data.raw.resource["gem-ore"].minable.results,{type="item", name="amethyst-ore", amount=1, probability = bobmods.gems.AmethystRatio})
    table.insert(data.raw.resource["gem-ore"].minable.results,{type="item", name="ruby-ore", amount=1, probability = bobmods.gems.RubyRatio})
    table.insert(data.raw.resource["gem-ore"].minable.results,{type="item", name="sapphire-ore", amount=1, probability = bobmods.gems.SapphireRatio})
    table.insert(data.raw.resource["gem-ore"].minable.results,{type="item", name="topaz-ore", amount=1, probability = bobmods.gems.TopazRatio})
  end
end

if bobmods.ores.GemsFromOtherOres == true then
  data.raw.resource["coal"].minable.result=nil
  if data.raw.resource["coal"].minable.results == nil then 
    data.raw.resource["coal"].minable.results = {}
    table.insert(data.raw.resource["coal"].minable.results,{type="item", name="coal", amount=1})
  end
  table.insert(data.raw.resource["coal"].minable.results,{type="item", name="diamond-ore", amount=1, probability = bobmods.ores.GemProbability * bobmods.gems.DiamondRatio})

  table.insert(data.raw.resource["quartz"].minable.results,{type="item", name="emerald-ore", amount=1, probability = bobmods.ores.GemProbability * bobmods.gems.EmeraldRatio})
  table.insert(data.raw.resource["quartz"].minable.results,{type="item", name="amethyst-ore", amount=1, probability = bobmods.ores.GemProbability * bobmods.gems.AmethystRatio})

  table.insert(data.raw.resource["bauxite-ore"].minable.results,{type="item", name="ruby-ore", amount=1, probability = bobmods.ores.GemProbability * bobmods.gems.RubyRatio})
  table.insert(data.raw.resource["bauxite-ore"].minable.results,{type="item", name="sapphire-ore", amount=1, probability = bobmods.ores.GemProbability * bobmods.gems.SapphireRatio})
  table.insert(data.raw.resource["bauxite-ore"].minable.results,{type="item", name="topaz-ore", amount=1, probability = bobmods.ores.GemProbability * bobmods.gems.TopazRatio})
end


if data.raw.item["cassiterite"] then
  if bobmods.ores.TinGivesCassiterite == true then
    data.raw.resource["tin-ore"].minable.result = "cassiterite"
  end
end


if bobmods.ores.GalenaGivesNickel == true then
  if not data.raw.item["nickel-ore"] then
    data:extend(
    {
      {
        type = "item",
        name = "nickel-ore",
        icon = "__bobores__/graphics/icons/nickel-ore.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "bob-ores",
        order = "f-a[nickel-ore]",
        stack_size = 200
      },
    }
    )
  end
  table.insert(data.raw.resource["lead-ore"].minable.results,{type="item", name="nickel-ore", amount=1, probability = bobmods.ores.LeadNickelRatio})
end


if bobmods.ores.NickelGivesCobalt == true then
  if not data.raw.item["cobalt-ore"] then
    data:extend(
    {
      {
        type = "item",
        name = "cobalt-ore",
        icon = "__bobores__/graphics/icons/cobalt-ore.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "bob-ores",
        order = "f-a[cobalt-ore]",
        stack_size = 200
      },
    }
    )
  end
  if data.raw.resource["nickel-ore"] then
    table.insert(data.raw.resource["nickel-ore"].minable.results,{type="item", name="cobalt-ore", amount=1, probability = bobmods.ores.NickelCobaltRatio})
  else
    if bobmods.GalenaGivesNickel == true then
      table.insert(data.raw.resource["lead-ore"].minable.results,{type="item", name="cobalt-ore", amount=1, probability = bobmods.ores.LeadNickelRatio * bobmods.ores.NickelCobaltRatio})
    end
  end
end


data.raw.item["copper-ore"].stack_size = 200
data.raw.item["iron-ore"].stack_size = 200
data.raw.item["stone"].stack_size = 200
data.raw.item["coal"].stack_size = 200

--data.raw.item["copper-ore"].icon = "__bobores__/graphics/icons/copper-ore.png"
data.raw.item["iron-ore"].icon = "__bobores__/graphics/icons/iron-ore.png"
data.raw.item["stone"].icon = "__bobores__/graphics/icons/stone.png"
--data.raw.item["coal"].icon = "__bobores__/graphics/icons/coal.png"

--data.raw.resource["copper-ore"].icon = "__bobores__/graphics/icons/copper-ore.png"
if data.raw.resource["iron-ore"] then
  data.raw.resource["iron-ore"].icon = "__bobores__/graphics/icons/iron-ore.png"
end
if data.raw.resource["stone"] then
  data.raw.resource["stone"].icon = "__bobores__/graphics/icons/stone.png"
end
--data.raw.resource["coal"].icon = "__bobores__/graphics/icons/coal.png"


if bobmods.ores.InfiniteOre == true then
  for index, resource in pairs(data.raw.resource) do
    if not resource.infinite then resource.infinite=true end
    if not resource.minimum then resource.minimum=35 end
    if not resource.maximum then resource.maximum=350 end
  end
end
