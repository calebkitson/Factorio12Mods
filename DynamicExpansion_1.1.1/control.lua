require "defines"
require "util"

--[[
Expansion States:
-peaceful
	Expansion completely disabled
-passive expanding
	Expanding at a minimal pace, keeps away from player base
-aggressive expanding
	Expanding at a more rapid pace, but still keeping away from player base
-beachhead
	Attempts to expand near player base, probably
--]]

game.on_init( function()
	if not global.AlyxDE_state then
		global.AlyxDE_state = "peaceful"
	end
	if not global.AlyxDE_timer then
		global.AlyxDE_timer = 0
	end
	if not global.AlyxDE_evolution_Reduction then
		global.AlyxDE_evolution_Reduction = .010
	end
	
end)


game.on_event(defines.events.on_tick, function(event)

	if (game.tick % (60 * 60)  == 0) and (game.evolution_factor >= .010) and (global.AlyxDE_state == "peaceful") then
	
		local expansion_Chance = math.random(math.floor(game.evolution_factor * 100), math.floor(game.evolution_factor * 100) + 100)
		
		if expansion_Chance >= 100 and expansion_Chance < 140 then
			AlyxDE_Set_Expansion_Level("passive expanding")
			
		elseif expansion_Chance >= 140 and expansion_Chance < 190 then
			AlyxDE_Set_Expansion_Level("aggressive expanding")
			
		elseif expansion_Chance >= 190 and expansion_Chance <= 200 then
			AlyxDE_Set_Expansion_Level("beachhead")
			
		end
		
	end
	
	if global.AlyxDE_state ~= "peaceful" then
		if global.AlyxDE_timer > 0 then
			global.AlyxDE_timer = global.AlyxDE_timer - 1

		else
			AlyxDE_Set_Expansion_Level("peaceful")
		end
		
	end

end)

function AlyxDE_Set_Expansion_Level(expansion_State)
	expansion_State = expansion_State or "peaceful"
	
	if expansion_State == "peaceful" then
		game.map_settings.enemy_expansion.enabled = false
		global.AlyxDE_timer = 0
		
		if global.AlyxDE_state == "passive expanding" then
			game.evolution_factor = game.evolution_factor - .001
		elseif global.AlyxDE_state == "aggressive expanding" then
			game.evolution_factor = game.evolution_factor - .0015
		elseif global.AlyxDE_state == "beachhead" then
			game.evolution_factor = game.evolution_factor - .0025
		end
		
		if game.evolution_factor < .01 then
			game.evolution_factor = .01
		end
	
	elseif expansion_State == "passive expanding" then
		game.map_settings.enemy_expansion.enabled = true
		global.AlyxDE_timer = math.random(2 * 3600, 5 * 3600)
			game.map_settings.enemy_expansion.min_base_spacing = 4
			game.map_settings.enemy_expansion.max_expansion_distance = 6
			game.map_settings.enemy_expansion.min_player_base_distance = 10
			game.map_settings.enemy_expansion.settler_group_min_size = 4
			game.map_settings.enemy_expansion.settler_group_max_size = 8
			game.map_settings.enemy_expansion.min_expansion_cooldown = 10 * 60
			game.map_settings.enemy_expansion.max_expansion_cooldown = 30 * 60
	
	elseif expansion_State == "aggressive expanding" then
		game.map_settings.enemy_expansion.enabled = true
		global.AlyxDE_timer = math.random(1.5 * 3600, 4 * 3600)
			game.map_settings.enemy_expansion.min_base_spacing = 3
			game.map_settings.enemy_expansion.max_expansion_distance = 8
			game.map_settings.enemy_expansion.min_player_base_distance = 6
			game.map_settings.enemy_expansion.settler_group_min_size = 15
			game.map_settings.enemy_expansion.settler_group_max_size = 30
			game.map_settings.enemy_expansion.min_expansion_cooldown = 5 * 60
			game.map_settings.enemy_expansion.max_expansion_cooldown = 25 * 60
		
	elseif expansion_State == "beachhead" then
		game.map_settings.enemy_expansion.enabled = true
		global.AlyxDE_timer = math.random(1 * 3600, 3 * 3600)
			game.map_settings.enemy_expansion.min_base_spacing = 6
			game.map_settings.enemy_expansion.max_expansion_distance = 30
			game.map_settings.enemy_expansion.min_player_base_distance = 0
			game.map_settings.enemy_expansion.settler_group_min_size = 40
			game.map_settings.enemy_expansion.settler_group_max_size = 100
			game.map_settings.enemy_expansion.min_expansion_cooldown = 5 * 60
			game.map_settings.enemy_expansion.max_expansion_cooldown = 20 * 60
	
	end
	
	global.AlyxDE_state = expansion_State
	--game.player.print("Expansion state set to: " .. global.AlyxDE_state)
	--game.player.print("Timer is: " .. (global.AlyxDE_timer / 60) .. " seconds")
end