if not bobmods then bobmods = {} end
if not bobmods.plates then bobmods.plates = {} end


-- Reduce cost of Steel
bobmods.plates.CheaperSteel = true


-- Sets the new player inventory size
bobmods.plates.InventorySize = 120


-- These set the probability of each type of gem being given. If the section already exists (in bobores mod) then this section is ignored.
if not bobmods.gems then bobmods.gems = {} 
  bobmods.gems.RubyRatio=1
  bobmods.gems.SapphireRatio=0.8
  bobmods.gems.EmeraldRatio=0.6
  bobmods.gems.AmethystRatio=0.5
  bobmods.gems.TopazRatio=0.4
  bobmods.gems.DiamondRatio=0.2
end
