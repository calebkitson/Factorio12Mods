if not bobmods then bobmods = {} end
if not bobmods.ores then bobmods.ores = {} end
if not bobmods.mining then bobmods.mining = {} end
if not bobmods.gems then bobmods.gems = {} end


-- if set to true, Nickel ore fields can spawn on maps. new maps will have autoplace control options.
bobmods.ores.EnableNickelOre=false

-- if set to true, Cobalt ore fields can spawn on maps. new maps will have autoplace control options.
bobmods.ores.EnableCobaltOre=false

-- if set to true, Sulfur fields can spawn on maps. new maps will have autoplace control options.
bobmods.ores.EnableSulfur=false

-- if set to true, Gem ore fields can spawn on maps. new maps will have autoplace control options.
bobmods.ores.EnableGemOre=true

-- if set to true, Gem ore fields will give the Unsorted Gems resource. If false will give each ore type.
bobmods.ores.UnsortedGemOre=false

-- if set to true, Stone will apear in larger, richer vains.
bobmods.ores.EnhanceStone=true

-- if set to true, Galena ore fields will give Nickel ore as well as Lead ore.
bobmods.ores.GalenaGivesNickel=true

-- if set to true, Nickel ore fields will give Cobalt ore as well as Nickel ore.
-- if Nickel ore is disabled, but Galena gives Nickel is enabled, Galena will also give Cobalt ore.
bobmods.ores.NickelGivesCobalt=false

-- These set the probability of extra ores being given from fields of multiple ore types.
bobmods.ores.LeadNickelRatio=0.75
bobmods.ores.NickelCobaltRatio=0.4

-- If set to true, Ore acts like Oil in that it doesn't disapar, but mining speed slows as it depleats.
bobmods.ores.InfiniteOre=false


-- if set to true, Diamonds can be obtained from mining Coal, Ruby, Saphire and Topaz from Bauxite, and Amethyst and Emerald from Quartz
bobmods.ores.GemsFromOtherOres=false

-- This set the probability of gems being given metal ore fields.
bobmods.ores.GemProbability=0.05

-- F-Mod Compatability. If set to true, Tin ore fields will drop Cassiterite INSTEAD of Tin ore.
-- You should only turn this on if you are using F-Mod and not using DyTech Metalurgy or Bob's Metals, Chemicals and Intermediates mod.
bobmods.ores.TinGivesCassiterite=false


-- These set the probability of each type of gem being given.
bobmods.gems.RubyRatio=1
bobmods.gems.SapphireRatio=0.8
bobmods.gems.EmeraldRatio=0.6
bobmods.gems.AmethystRatio=0.5
bobmods.gems.TopazRatio=0.4
bobmods.gems.DiamondRatio=0.2

