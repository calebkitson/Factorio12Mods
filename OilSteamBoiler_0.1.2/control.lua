require "defines"
require "util"


game.on_event(defines.events.on_tick, function(event)
		if (game.tick % 12) == 0 then
			heat_pot()
		end
end)


game.on_event(defines.events.on_built_entity, function(event)

	if event.created_entity.name == "OilSteamBoiler" then
	
			if global.steampot == nil then
				global.steampot = {}
			end
			
		local steampot = event.created_entity
			table.insert(global.steampot, steampot)
	end
end)

game.on_event(defines.events.on_robot_built_entity, function(event)

	if event.created_entity.name == "OilSteamBoiler" then
	
			if global.steampot == nil then
				global.steampot = {}
			end
			
		local steampot = event.created_entity
			table.insert(global.steampot, steampot)
	end
end)




function heat_pot()

	if global.steampot ~= nil then 
		for k,steampot in pairs(global.steampot) do
			if steampot.valid then 
			if steampot.fluidbox[3] ~= nil then 

				local steambox = steampot.fluidbox[3]
					steamtemp = 500
					steambox["temperature"] = steamtemp
					steampot.fluidbox[3] = steambox
				end
			else
				table.remove(global.steampot, k)
			end
		end
	end
end
