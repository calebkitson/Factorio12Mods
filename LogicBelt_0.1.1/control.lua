require "util"
require "defines"
require "migration"

local lbelts = {}
local cbelts = {}
local _debug = false
local _version = "0.1.1"

--Save/Load
game.on_init(function()
	onLoad()
end)

game.on_load(function()
	onLoad()
end)

game.on_save(function()
	global.logicBelts.lbelts = lbelts
	global.logicBelts.cbelts = cbelts
end)

function onLoad()
	if not global.logicBelts then
		debugLog("Loading Table")
		global.logicBelts = {}
		global.logicBelts.lbelts = {}
		global.logicBelts.cbelts = {}
		global.logicBelts.version = _version
	end
	
	if global.logicBelts.version ~= _version then
		debugLog("Old version ".. global.logicBelts.version .. ", New version " .. _version)
		migrate(global.logicBelts.version, _version)
	end
	
	lbelts = global.logicBelts.lbelts
	cbelts = global.logicBelts.cbelts
end

--Events
game.on_event(defines.events.on_built_entity, function(event)
	beltBuilt(event.created_entity)
end)

game.on_event(defines.events.on_robot_built_entity, function(event)
	beltBuilt(event.created_entity)
end)

game.on_event(defines.events.on_preplayer_mined_item, function(event)
	beltRemoved(event.entity)
end)

game.on_event(defines.events.on_robot_pre_mined, function(event)
	beltRemoved(event.entity)
end)

game.on_event(defines.events.on_entity_died, function(event)
	beltRemoved(event.entity)
end)

game.on_event(defines.events.on_tick, function(event)
	checkCondition(event)
	checkCount(event)
end)

--Logic
function checkCondition(event)
	for i, group in ipairs(lbelts) do
		if group.placedDirection ~= nil then
			--migration (Can be removed in future versions)
			group.belt.direction = group.placedDirection
			group.placedDirection = nil
			local new_ghost = game.surfaces["nauvis"].create_entity({name="logic-belt-ghost", position = group.belt.position, direction = util.oppositedirection(group.belt.direction), force = game.forces.player})
			
			new_ghost.minable = false
			new_ghost.destructible = false
			new_ghost.active = false
			
			group.ghost = new_ghost
			--migration end
		else
			--condition 1 is the wire condition, 2 is the logistics system condition
			if group.ghost.get_circuit_condition(1).fulfilled or group.ghost.get_circuit_condition(2).fulfilled then
				group.belt.direction = util.oppositedirection(group.ghost.direction)
				setLampState(group, "on")
			else
				group.belt.direction = group.ghost.direction
				setLampState(group, "off")
			end
			
			--Turns the Belt off when the ghost(controller) has no energy
			if group.ghost.energy < 1 then
				group.belt.active = false
			else
				group.belt.active = true
			end
		end
		
		if event.tick % 600 == 0 then
			group.ghost.clear_filter(1)
		end
	end
end

function checkCount(event)
	for i, group in ipairs(cbelts) do
		local itemCount = group.belt.get_item_count()
		
		if itemCount == 0 then
			group.ghost.get_inventory(1)[1].clear()
		else		
			if group.ghost.get_inventory(1)[1].valid_for_read then
				group.ghost.get_inventory(1)[1].count = itemCount
			else
				group.ghost.get_inventory(1)[1].set_stack({name = 'counter-signal', count = itemCount})--insert({name = 'iron-plate', count = itemCount})
			end
		end
	end
end

function beltBuilt(entity)
	if isLogicBelt(entity.name) then
		logicBeltBuild(entity)
	elseif isCounterBelt(entity.name) then
		counterBeltBuild(entity)
	end
end

function logicBeltBuild(entity)
	local new_group = {}
		
	new_group.belt = entity
	
	--Spawn ghost
	local new_ghost = game.surfaces["nauvis"].create_entity({name="logic-belt-ghost", position = entity.position, direction = util.oppositedirection(entity.direction), force = game.forces.player})
	new_group.ghost = new_ghost
	
	new_ghost.minable = false
	new_ghost.destructible = false
	new_ghost.active = false
	
	--Spawn lamp
	setLampState(new_group, "off")
		
	--Insert new group into table
	table.insert(lbelts, new_group)
end

function counterBeltBuild(entity)
	local new_group = {}
	
	new_group.belt = entity
	
	--Spawn ghost
	local new_ghost = game.surfaces["nauvis"].create_entity({name="counter-belt-ghost", position = entity.position, force = game.forces.player})
	new_group.ghost = new_ghost
	
	new_ghost.minable = false
	new_ghost.destructible = false
	new_ghost.operable = false
	
	--Insert new group into table
	table.insert(cbelts, new_group)
end

function beltRemoved(entity)
	if isLogicBelt(entity.name) then
		logicBeltRemoved(entity)
	elseif isCounterBelt(entity.name) then
		counterBeltRemoved(entity)
	end
end

function logicBeltRemoved(entity)
	for i, group in ipairs(lbelts) do
		--Searching for the postion of the belt to remove the lamp and the ghost(controller)
		if group.belt.position.x == entity.position.x and group.belt.position.y == entity.position.y then
		
			if group.ghost.valid then
				group.ghost.destroy() end
			if group.lamp.valid then
				group.lamp.destroy() end
				
			table.remove(lbelts,i)
			break
		end
	end
end

function counterBeltRemoved(entity)
	for i, group in ipairs(cbelts) do
		--Searching for the postion of the belt to remove the ghost
		if group.belt.position.x == entity.position.x and group.belt.position.y == entity.position.y then
		
			if group.ghost.valid then
				group.ghost.destroy() end
			
			table.remove(cbelts,i)
			break
		end
	end
end

function setLampState(group, state)
	if group.lastState == state then return end
	
	if group.lamp ~= nil then
		if group.lamp.valid then
			group.lamp.destroy()
		end
	end
	
	local pos = { x = group.belt.position.x + 0.4, y = group.belt.position.y + 0.38 }
	local e_name = nil
	
	if state == "on" then
		e_name = "logic-belt-lamp-on"
		group.lastState = "on"
	else
		e_name = "logic-belt-lamp-off"
		group.lastState = "off"
	end
	group.lamp = game.surfaces["nauvis"].create_entity({name= e_name, position = pos, force = game.forces.player})
	group.lamp.minable = false
	group.lamp.destructible = false
end

function isLogicBelt(name)
	if string.match(name, "logic%-transport%-belt") ~= nil then
		return true
	else
		return false
	end
end

function isCounterBelt(name)
	if string.match(name, "counter%-transport%-belt") ~= nil then
		return true
	else
		return false
	end
end

function debugLog(message)
	if _debug then -- set for debug
		game.player.print(tostring(message))
	end
end
