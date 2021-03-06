require "defines"
require "script.cyberchest"
require "script.gui"
local version = 9.1
local forced_reset = false
game.on_init(function()
if not global.cyberchests then global.cyberchests = {} end
global.gui = new_gui()
global.version = version
end)

game.on_load(function()
	for _,chest in pairs(global.cyberchests) do
		setmetatable(chest, cyberchest)
	end
	if not global.version or global.version < version then
		migrate()
	end
	if forced_reset then
		for _,chest in pairs(global.cyberchests) do
			chest.state = chest.ready
			chest.all_green = false
		end
	end
	
	global.gui = new_gui()
end)

function migrate()
	if not global.version then
		global.version = 9
		for _,chest in pairs(global.cyberchests) do
			chest.state = chest.ready
			chest.all_green = false
		end
	end
	--add migration for future updates here
	if global.version < 9.1  then
		global.version = 9.1
		for _,chest in pairs(global.cyberchests) do
			chest.state = chest.ready
			chest.all_green = false
		end
	end
	
end

game.on_event(defines.events.on_built_entity, function(event)
	if event.created_entity.name == "cyberchest" then
		table.insert(global.cyberchests, cyberchest:new({entity = event.created_entity, is_asm_free = is_assembler_free}))
		--game.players[1].print("chest_created")
	end
end)

game.on_event(defines.events.on_robot_built_entity, function(event)
	if event.created_entity.name == "cyberchest" then
		table.insert(global.cyberchests, cyberchest:new({entity = event.created_entity, is_asm_free = is_assembler_free}))
		--game.players[1].print("chest_created")
	end
end)



--[[game.on_event(defines.events.onentitydied, function(event)
	if event.entity.name == "cyberchest" then
		cyberchest_get_from_entity(entity) = nil
	end
end)

game.on_event(defines.events.onentitydied, function(event)
	if event.entity.name == "cyberchest" then
		cyberchest_get_from_entity(entity) = nil
	end
end)]]

--checks if assembler is occupied by some chest
function is_assembler_free(assembler)
	for _,chest in pairs(global.cyberchests) do
		if chest:has_assembler() and assembler == chest.assembler then
			return false
		end
	end 
	return true
end

function cyberchest_get_from_entity(entity)
	for _,chest in pairs(global.cyberchests) do
		if entity == chest.entity then
			return chest
		end
	end 
	return nil
end

game.on_event(defines.events.on_tick, function(event)
	if event.tick % 20 ~= 0 then return end
	--game.players[1].print(#global.cyberchests)
	
	for i,chest in pairs(global.cyberchests) do
		if chest:is_valid() then
			chest:state_execute()
		else	
			chest:destroy_beacon()
			chest = nil
			table.remove(global.cyberchests,i)
		end
	end

	for i,player in pairs(game.players) do
		if player.character and player.opened and player.opened.name == 'cyberchest' then
		    thingOpened = cyberchest_get_from_entity(player.opened)
			if thingOpened ~= nil then
			  global.gui.show(i, cyberchest_get_from_entity(player.opened))
			end
		else
			global.gui.hide(i)
		end
	end
	
end)

game.on_event(defines.events.on_gui_click, function(event)
	global.gui.dispatch(event.player_index, event.element.name)
end)

