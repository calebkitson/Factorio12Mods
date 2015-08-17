local subItems = {}
local newItem
local maximumPickedUpCompressionChests = 5
local entType = "item"
local entName = "compression-chest-mined-"
local entIcon = "__Compression_Chests__/graphics/Compression chest - Icon.png"
local entFlags = {"goes-to-quickbar"}
local entplace_result = "compression-chest-mined-"
local entstack_size = 1

for n = 1,maximumPickedUpCompressionChests,1 do
	newItem = {}
	newItem["type"] = entType
	newItem["name"] = entName .. n
	newItem["icon"] = entIcon
	newItem["flags"] = entFlags
	newItem["place_result"] = entplace_result .. n
	newItem["stack_size"] = entstack_size
	
	table.insert(subItems, newItem)
end

data:extend(subItems)