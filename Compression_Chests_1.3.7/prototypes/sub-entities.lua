local subEntities = {}
local newEntity
local maximumPickedUpCompressionChests = 5
local entType = "container"
local entName = "compression-chest-mined-"
local entIcon = "__Compression_Chests__/graphics/Compression chest - Icon.png"
local entFlags = {"placeable-neutral", "player-creation"}
local entmax_health = 800
local entCollisonBox = {{-0.35, -0.35}, {0.35, 0.35}}
local entselection_box = {{-0.5, -0.5}, {0.5, 0.5}}
local entInventorySize = 1
local entOrder = "a[items]-d[compression-chest]"
local entPicture = {filename = "__Compression_Chests__/graphics/Compression Chest.png", priority = "extra-high", width = 52, height = 34, shift = {0.2625, 0}}

for n = 1,maximumPickedUpCompressionChests,1 do
	newEntity = {}
	newEntity["type"] = entType
	newEntity["name"] = entName .. n
	newEntity["icon"] = entIcon
	newEntity["flags"] = entFlags
	newEntity["max_health"] = entmax_health
	newEntity["collision_box"] = entCollisonBox
	newEntity["selection_box"] = entselection_box
	newEntity["inventory_size"] = entInventorySize
	newEntity["order"] = entOrder
	newEntity["picture"] = entPicture
	
	table.insert(subEntities, newEntity)
end

data:extend(subEntities)