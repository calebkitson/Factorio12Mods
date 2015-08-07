--- v.3.0.12
require "defines"
require "util"
NEConfig = {}

require "config"

game.on_init(function() On_Load() end)
game.on_load(function() On_Load() end)

game.on_event(defines.events.on_robot_built_entity, function(event) On_Built(event) end)
game.on_event(defines.events.on_built_entity, function(event) On_Built(event) end)
game.on_event(defines.events.on_preplayer_mined_item, function(event) On_Removed(event) end)
game.on_event(defines.events.on_robot_pre_mined, function(event) On_Removed(event) end)
game.on_event(defines.events.on_entity_died, function(event) On_Removed(event) end)


function On_Load()

--[[
---- Alien Control Initialization ----	
	if not global.beacons then
      global.beacons = {}
	end
	if not global.minds then
      global.minds = {}
	end
	if not global.hiveminds then
      global.hiveminds = {}
	end
	if not global.minds.difficulty2 then -- formally game.difficulty
      global.minds.difficulty2 = 1
	end

]]
	if surface == nil then
	   surface = game.surfaces['nauvis']
	end	  
	
	--[[
	if NEConfig.Conversion_Difficulty == Easy then
	global.minds.difficulty = 3 -- Easy difficulty
	elseif NEConfig.Conversion_Difficulty == Normal then
	global.minds.difficulty = 5 -- Normal 
	else global.minds.difficulty = 10 -- Hard
	end
	]]
	
---- Terraforming Initialization ----	
	if not global.numTerraformingStations then
      global.numTerraformingStations = 0
	end
	
---- Expansion Initialization ----	
    if not global.Natural_Evolution_state then
		global.Natural_Evolution_state = "Peaceful"
    end
	if not global.Natural_Evolution_timer then
		global.Natural_Evolution_timer = 0
	end
	if not global.Natural_Evolution_Counter then
		global.Natural_Evolution_Counter = 0
	end

end

---------------------------------------------
function On_Built(event)
   --- Terraforming Station has been built
   if event.created_entity.name == "TerraformingStation" then
      global.numTerraformingStations = global.numTerraformingStations + 1
      
      global.factormultiplier = GetFactorPerTerraformingStation(global.numTerraformingStations)
	  writeDebug("The the number of Terraforming Stations: " .. global.numTerraformingStations)
	  
   end
--[[
   --- Alien Control Station has been built
    if event.created_entity.name == "AlienControlStation" then
		table.insert(global.beacons, event.created_entity)
		
	end
   ]]
end

---------------------------------------------

function On_Removed(event)
	--- Terraforming Station has been removed
   if event.entity.name == "TerraformingStation" then
      
      global.numTerraformingStations = global.numTerraformingStations - 1
      global.factormultiplier = GetFactorPerTerraformingStation(global.numTerraformingStations)
   end
--[[
   
   --- Alien Control Station has been removed
	if event.entity.name == "AlienControlStation" then
		ACS_Remove()
	end
	if event.entity.type == "unit-spawner" and entity.force ==(game.forces.enemy) then
		Convert_Base(entity, true)
	end
	]]
end
--[[
---- Removes the Alien Control Station ---
function ACS_Remove(index)
  if index then
    if global.beacons[index] and not global.beacons[index].valid then
      table.remove(global.beacons, index)
      return -- if an index was found and it's entity was not valid return after removing it
    end
  end
  -- if no index was provided, or an inappropriate index was provided then loop through the table
  -- not sure if there is a better way...perhaps I could make beacons a multidimensional table
  -- and store it's index as well, then instead of searching through the table I can simply use
  -- table.remove(global.beacons,beacon.index)...
  for k,beacon in ipairs(global.beacons) do
    if not beacon.valid then
      table.remove(global.beacons,k)
      writeDebug("Alien Control Station Removed")
    end
  end--not sure if there is a better way...perhaps I could make beacons a multidimensional table and store it's index as well, then instead of searching through the table I can simply use table.remove(global.beacons,beacon.index)...
end

]]

--------------- Terraforming Station Calculations ------------------------------

function GetFactorPerTerraformingStation(numTerraformingStations)
   local res = 1
   -- Calculate the total evolution reduction.
   for i = 1, numTerraformingStations do
      res = res + math.pow(0.9, i)
	  
   end
   -- Return the evolution reduction per Terraforming Station.
   return res / numTerraformingStations
end



---- Each time a Terraforming Station scans a sector, reduce the evolution factor ----
game.on_event(defines.events.on_sector_scanned, function(event)
  if event.radar.name == "TerraformingStation" then
   game.evolution_factor = game.evolution_factor - ((0.00015 * global.factormultiplier) * (1 - game.evolution_factor))
		if game.evolution_factor < .0001 then
			game.evolution_factor = .0001
		end  

  writeDebug("The current Factor Multiplier is: " .. global.factormultiplier)
   
  end
end)
--------------- END Terraforming Station ------------------------------


--------------- Alien Control Station ---------------------------------
--[[
function Control_Enemies()
  for k,beacon in ipairs(global.beacons) do
    if beacon.valid then

      if beacon.energy > 0 then
        
		local bases = surface.find_entities_filtered{type="unit-spawner", area=Get_Bounding_Box(beacon.position, NEConfig.Spawner_Search_Distance)} --search area of thirty around each beacon for spawners
		
        if #bases > 0 then
          for i, base in ipairs(bases) do
            if base.force ==(game.forces.enemy) and math.random(global.minds.difficulty*2)==1 then --easy = 16.5% chance, normal = 10%, hard = 5%
             Convert_Base(base, false)
            end
          end
        else -- no bases in range 
       
		  for i, enemy in ipairs(surface.find_enemy_units(beacon.position, NEConfig.Unit_Search_Distance)) do --search area of ten around each beacon
		  
            if enemy.force ==(game.forces.enemy) then --do only if not already controlled
              if math.random(global.minds.difficulty)==1 then --easy = 33% chance, normal = 20%, hard = 10%
                enemy.force=game.player.force
                enemy.set_command{type=defines.command.wander,distraction=defines.distraction.by_enemy}
                table.insert(global.minds, enemy)
                writeDebug("An Enemy has been Converted")
              end
            end
          end
        end
      else
        writeDebug("A Alien Control Station has no Power")
      end
    else
      ACS_Remove()
    end
  end
end

function Remove_Mind_Control()
  if global.beacons[1] then -- if there are valid beacons
    for k,mind in ipairs (global.minds) do --remove mindcontrol from biters not in area of influence
      if not mind.valid then --first make sure the enemy is still valid, if not remove them
        table.remove(global.minds, k)
      else -- is valid
        local controlled = false --assume out of range
        if surface.find_entities_filtered{name="AlienControlStation", area=Get_Bounding_Box(mind.position, NEConfig.Unit_Search_Distance)}[1] then --a AlienControlStation is in range
          controlled = true
          break
        end
        if not controlled then mind.force=game.forces.enemy end
      end
    end
  end
end

function Convert_Base(base, died)
  local enemies=Get_Bounding_Box(base.position, NEConfig.Unit_Search_Distance/global.minds.difficulty2)
  local units={}
  local hives={}
  local worms={}
  local count=0
  local count_worms=0
  local count_spawners=0
  local count_units=0
  enemies = surface.find_entities(enemies)
  for i, enemy in ipairs(enemies) do
    if enemy.type=="turret" and enemy.force ==(game.forces.enemy) then
      table.insert(worms, enemy)
    elseif enemy.type=="unit-spawner" then
      table.insert(hives, enemy)
  --  elseif enemy.type=="unit" then
  --   table.insert(units, enemy)
    end
  end

  count=#units+#hives+#worms
  count_worms=#worms
  count_spawners=#hives
  count_units=#units
  if count~=0 then -- prevent empty random interval
    	
	writeDebug("The number of Worms/Turrets Converted: " .. count_worms)	
	writeDebug("The number of Spawners Converted: " .. count_spawners)	
	writeDebug("The number of Units Converted: " .. count_units)	
	
  end
  if count~=0 and math.random(global.minds.difficulty2+math.sqrt(count))==1 then
    if died then table.insert(global.hiveminds, game.create_entity{name=base.name, position=base.position, force=game.player.force}) end
    
	for _, worm in pairs(worms) do 
	  worm.force=game.player.force 
	  writeDebug("Turret/Worm Converted") 
	end
    for _, hive in pairs(hives) do 
	  hive.force=game.player.force 
	  table.insert(global.hiveminds, hive) 
	  writeDebug("Spawner Converted") 
	end
   --  for _, unit in pairs(units) do
      unit.force=game.player.force
      unit.set_command{type=defines.command.wander, distraction=defines.distraction.by_enemy}
	

      -- remove mind controlled biters in range from the minds table
      --so they aren't converted back into enemies when wandering away from the beacon
      for i, controlled in ipairs(global.minds) do
        --writeDebug{unit, controlled}
        if unit ==(controlled) then

          table.remove(global.minds, i)
          break
        end
      end
    end
  end
end

function Get_Bounding_Box(position, radius)
return {{position.x-radius, position.y-radius}, {position.x+radius,position.y+radius}}
end

]]
--------------- END Alien Control Station ------------------------------

--------------- Expansion ----------------------------------------------


game.on_event(defines.events.on_tick, function(event)

		--[[
			if (game.tick % (60 * 6) == 0) and global.beacons[1] then

				Remove_Mind_Control() --free out of range biters
				Control_Enemies() --control newly in range biters

			end
			
		]]	
	if NEConfig.Expansion then	
		if (game.tick % (60 * 60)  == 0) and (game.evolution_factor >= .005) and (global.Natural_Evolution_state == "Peaceful") then
				
			local expansionChance = math.random(math.floor((game.evolution_factor * 100) + global.Natural_Evolution_Counter), math.floor((game.evolution_factor * 100) + 100))

			-- For Early game, has about a 25% change to start Evolution
			if expansionChance >= 75 and expansionChance < 100 then
				Natural_Evolution_SetExpansionLevel("Awakening")
				
				
			-- Evolution Factor = 1% - 9%:
			elseif expansionChance >= 100 and expansionChance < 110 then
				Natural_Evolution_SetExpansionLevel("Phase 1")
				if game.evolution_factor >.1 and global.Natural_Evolution_Counter < 5 then
				global.Natural_Evolution_Counter = global.Natural_Evolution_Counter + 1
				end
				
			-- Evolution Factor = 10% - 19%:
			elseif expansionChance >= 110 and expansionChance < 120 then
				Natural_Evolution_SetExpansionLevel("Phase 2")
				if game.evolution_factor >.2 and global.Natural_Evolution_Counter < 10 then
				global.Natural_Evolution_Counter = global.Natural_Evolution_Counter + 1
				end
				
			-- Evolution Factor = 20% - 29%:
			elseif expansionChance >= 120 and expansionChance < 130 then
				Natural_Evolution_SetExpansionLevel("Phase 3")
				if game.evolution_factor >.3 and global.Natural_Evolution_Counter < 15 then
				global.Natural_Evolution_Counter = global.Natural_Evolution_Counter + 1
				end
			
			-- Evolution Factor = 30% - 39%:
			elseif expansionChance >= 130 and expansionChance < 140 then
				Natural_Evolution_SetExpansionLevel("Phase 4")
				if game.evolution_factor >.4 and global.Natural_Evolution_Counter < 20 then
				global.Natural_Evolution_Counter = global.Natural_Evolution_Counter + 1
				end
				
			-- Evolution Factor = 40% - 49%:
			elseif expansionChance >= 140 and expansionChance < 150 then
				Natural_Evolution_SetExpansionLevel("Phase 5")
				if game.evolution_factor >.5 and global.Natural_Evolution_Counter < 25 then
				global.Natural_Evolution_Counter = global.Natural_Evolution_Counter + 1
				end
				
			-- Evolution Factor = 50% - 59%:
			elseif expansionChance >= 150 and expansionChance < 160 then
				Natural_Evolution_SetExpansionLevel("Phase 6")
				if game.evolution_factor >.6 and global.Natural_Evolution_Counter < 30 then
				global.Natural_Evolution_Counter = global.Natural_Evolution_Counter + 1
				end
				
			-- Evolution Factor = 60% - 69%:
			elseif expansionChance >= 160 and expansionChance < 170 then
				Natural_Evolution_SetExpansionLevel("Phase 7")
				if game.evolution_factor >.7 and global.Natural_Evolution_Counter < 35 then
				global.Natural_Evolution_Counter = global.Natural_Evolution_Counter + 1
				end
				
			-- Evolution Factor = 70% - 79%:
			elseif expansionChance >= 170 and expansionChance < 180 then
				Natural_Evolution_SetExpansionLevel("Phase 8")
				if game.evolution_factor >.7 and global.Natural_Evolution_Counter < 40 then
				global.Natural_Evolution_Counter = global.Natural_Evolution_Counter + 1
				end
			
			-- Evolution Factor = 80% - 89%:
			elseif expansionChance >= 180 and expansionChance < 190 then
				Natural_Evolution_SetExpansionLevel("Phase 9")
				if game.evolution_factor >.8 and global.Natural_Evolution_Counter < 45 then
				global.Natural_Evolution_Counter = global.Natural_Evolution_Counter + 1
				end
				
			-- Evolution Factor = 90% - 98%:
			elseif expansionChance >= 190 and expansionChance < 199 then
				Natural_Evolution_SetExpansionLevel("Phase 10")
				if game.evolution_factor >.9 and global.Natural_Evolution_Counter < 50 then
				global.Natural_Evolution_Counter = global.Natural_Evolution_Counter + 1
				end
			
			-- Evolution Factor = 99% - 100%:						
			elseif expansionChance >= 199 and expansionChance <= 200 then
				Natural_Evolution_SetExpansionLevel("Armageddon")
			end
			
			writeDebug("The Expansion Chance is: " .. expansionChance)	
			writeDebug("The Natural_Evolution Counter is: " .. global.Natural_Evolution_Counter)	

		end

			if global.Natural_Evolution_state ~= "Peaceful" then
				if global.Natural_Evolution_timer > 0 then
					global.Natural_Evolution_timer = global.Natural_Evolution_timer - (1 + game.evolution_factor)
				else
					Natural_Evolution_SetExpansionLevel("Peaceful")
				end
				
			end
	
	end
 
end)

if NEConfig.Expansion then
	
	function Natural_Evolution_SetExpansionLevel(Expansion_State)
		Expansion_State = Expansion_State or "Peaceful"
		
		if Expansion_State == "Peaceful" then
			game.map_settings.enemy_expansion.enabled = false
			global.Natural_Evolution_timer = 0
			
			-- Each time a Phase is triggered, the Evolution Factor is decreased slightly, just during the Phase.
			
			if global.Natural_Evolution_state == "Awakening" then
				game.evolution_factor = game.evolution_factor		
			elseif global.Natural_Evolution_state == "Phase 1" then
				game.evolution_factor = game.evolution_factor - (0.00012 * (1 - game.evolution_factor))
			elseif global.Natural_Evolution_state == "Phase 2" then
				game.evolution_factor = game.evolution_factor - (0.00012 * (1 - game.evolution_factor))
			elseif global.Natural_Evolution_state == "Phase 3" then
				game.evolution_factor = game.evolution_factor - (0.00012 * (1 - game.evolution_factor))
			elseif global.Natural_Evolution_state == "Phase 4" then
				game.evolution_factor = game.evolution_factor - (0.00012 * (1 - game.evolution_factor))			
			elseif global.Natural_Evolution_state == "Phase 5" then
				game.evolution_factor = game.evolution_factor - (0.00012 * (1 - game.evolution_factor))
			elseif global.Natural_Evolution_state == "Phase 6" then
				game.evolution_factor = game.evolution_factor - (0.00012 * (1 - game.evolution_factor))
			elseif global.Natural_Evolution_state == "Phase 7" then
				game.evolution_factor = game.evolution_factor - (0.00012 * (1 - game.evolution_factor))
			elseif global.Natural_Evolution_state == "Phase 8" then
				game.evolution_factor = game.evolution_factor - (0.00012 * (1 - game.evolution_factor))
			elseif global.Natural_Evolution_state == "Phase 9" then
				game.evolution_factor = game.evolution_factor - (0.00012 * (1 - game.evolution_factor))
			elseif global.Natural_Evolution_state == "Phase 10" then
				game.evolution_factor = game.evolution_factor - (0.00012 * (1 - game.evolution_factor))
			elseif global.Natural_Evolution_state == "Armageddon" then
				game.evolution_factor = game.evolution_factor - (0.00012 * (1 - game.evolution_factor))
			end
		
			if game.evolution_factor < .001 then
				game.evolution_factor = .001
			end
		
		-- Defines the values for the different Evolution States.
		elseif Expansion_State == "Awakening" then
			game.map_settings.enemy_expansion.enabled = true
			global.Natural_Evolution_timer = math.random(2 * 3600, 4 * 3600)
				game.map_settings.enemy_expansion.min_base_spacing = 3
				game.map_settings.enemy_expansion.max_expansion_distance = 5
				game.map_settings.enemy_expansion.min_player_base_distance = 15
				game.map_settings.enemy_expansion.settler_group_min_size = 2 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.settler_group_max_size = 4 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.min_expansion_cooldown = 15 * 60
				game.map_settings.enemy_expansion.max_expansion_cooldown = 60 * 60
				--game.map_settings.unit_group.min_group_gathering_time = 3600
				--game.map_settings.unit_group.max_group_gathering_time = 10 * 3600
				--game.map_settings.unit_group.max_wait_time_for_late_members = 2 * 3600
				--game.map_settings.unit_group.max_group_radius = 30.0
				--game.map_settings.unit_group.min_group_radius = 5.0
				--game.map_settings.unit_group.max_member_speedup_when_behind = 1.4
				
		
		elseif Expansion_State == "Phase 1" then
			game.map_settings.enemy_expansion.enabled = true
			global.Natural_Evolution_timer = math.random(3 * 3600, 8 * 3600)
				game.map_settings.enemy_expansion.min_base_spacing = 5
				game.map_settings.enemy_expansion.max_expansion_distance = 6
				game.map_settings.enemy_expansion.min_player_base_distance = 10
				game.map_settings.enemy_expansion.settler_group_min_size = 2 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.settler_group_max_size = 4 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.min_expansion_cooldown = 10 * 60
				game.map_settings.enemy_expansion.max_expansion_cooldown = 30 * 60
				game.map_settings.unit_group.max_group_radius = 30.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.min_group_radius = 5.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.max_member_speedup_when_behind = 1.4 + (global.Natural_Evolution_Counter / 10)

				
		elseif Expansion_State == "Phase 2" then
			game.map_settings.enemy_expansion.enabled = true
			global.Natural_Evolution_timer = math.random(2.9 * 3600, 7.8 * 3600)
				game.map_settings.enemy_expansion.min_base_spacing = 5
				game.map_settings.enemy_expansion.max_expansion_distance = 8
				game.map_settings.enemy_expansion.min_player_base_distance = 9
				game.map_settings.enemy_expansion.settler_group_min_size = 4 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.settler_group_max_size = 7 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.min_expansion_cooldown = 10 * 60
				game.map_settings.enemy_expansion.max_expansion_cooldown = 29 * 60
				game.map_settings.unit_group.max_group_radius = 30.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.min_group_radius = 5.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.max_member_speedup_when_behind = 1.4 + (global.Natural_Evolution_Counter / 10)

				
		elseif Expansion_State == "Phase 3" then
			game.map_settings.enemy_expansion.enabled = true
			global.Natural_Evolution_timer = math.random(2.8 * 3600, 7.6 * 3600)
				game.map_settings.enemy_expansion.min_base_spacing = 5
				game.map_settings.enemy_expansion.max_expansion_distance = 10
				game.map_settings.enemy_expansion.min_player_base_distance = 8
				game.map_settings.enemy_expansion.settler_group_min_size = 6 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.settler_group_max_size = 10 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.min_expansion_cooldown = 9 * 60
				game.map_settings.enemy_expansion.max_expansion_cooldown = 28 * 60
				game.map_settings.unit_group.max_group_radius = 30.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.min_group_radius = 5.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.max_member_speedup_when_behind = 1.4 + (global.Natural_Evolution_Counter / 10)


		elseif Expansion_State == "Phase 4" then
			game.map_settings.enemy_expansion.enabled = true
			global.Natural_Evolution_timer = math.random(2.7 * 3600, 7.4 * 3600)
				game.map_settings.enemy_expansion.min_base_spacing = 5
				game.map_settings.enemy_expansion.max_expansion_distance = 12
				game.map_settings.enemy_expansion.min_player_base_distance = 8
				game.map_settings.enemy_expansion.settler_group_min_size = 8 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.settler_group_max_size = 13 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.min_expansion_cooldown = 9 * 60
				game.map_settings.enemy_expansion.max_expansion_cooldown = 27 * 60
				game.map_settings.unit_group.max_group_radius = 30.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.min_group_radius = 5.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.max_member_speedup_when_behind = 1.4 + (global.Natural_Evolution_Counter / 10)

				
		elseif Expansion_State == "Phase 5" then
			game.map_settings.enemy_expansion.enabled = true
			global.Natural_Evolution_timer = math.random(2.6 * 3600, 7.2 * 3600)
				game.map_settings.enemy_expansion.min_base_spacing = 4
				game.map_settings.enemy_expansion.max_expansion_distance = 14
				game.map_settings.enemy_expansion.min_player_base_distance = 7
				game.map_settings.enemy_expansion.settler_group_min_size = 10 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.settler_group_max_size = 16 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.min_expansion_cooldown = 8 * 60
				game.map_settings.enemy_expansion.max_expansion_cooldown = 26 * 60
				game.map_settings.unit_group.max_group_radius = 30.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.min_group_radius = 5.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.max_member_speedup_when_behind = 1.4 + (global.Natural_Evolution_Counter / 10)

				
		elseif Expansion_State == "Phase 6" then
			game.map_settings.enemy_expansion.enabled = true
			global.Natural_Evolution_timer = math.random(2.5 * 3600, 7 * 3600)
				game.map_settings.enemy_expansion.min_base_spacing = 4
				game.map_settings.enemy_expansion.max_expansion_distance = 16
				game.map_settings.enemy_expansion.min_player_base_distance = 6
				game.map_settings.enemy_expansion.settler_group_min_size = 12 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.settler_group_max_size = 19 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.min_expansion_cooldown = 8 * 60
				game.map_settings.enemy_expansion.max_expansion_cooldown = 25 * 60
				game.map_settings.unit_group.max_group_radius = 30.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.min_group_radius = 5.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.max_member_speedup_when_behind = 1.4 + (global.Natural_Evolution_Counter / 10)

				
		elseif Expansion_State == "Phase 7" then
			game.map_settings.enemy_expansion.enabled = true
			global.Natural_Evolution_timer = math.random(2.4 * 3600, 6.8 * 3600)
				game.map_settings.enemy_expansion.min_base_spacing = 4
				game.map_settings.enemy_expansion.max_expansion_distance = 18
				game.map_settings.enemy_expansion.min_player_base_distance = 5
				game.map_settings.enemy_expansion.settler_group_min_size = 14 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.settler_group_max_size = 22 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.min_expansion_cooldown = 7 * 60
				game.map_settings.enemy_expansion.max_expansion_cooldown = 24 * 60
				game.map_settings.unit_group.max_group_radius = 30.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.min_group_radius = 5.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.max_member_speedup_when_behind = 1.4 + (global.Natural_Evolution_Counter / 10)

				
		elseif Expansion_State == "Phase 8" then
			game.map_settings.enemy_expansion.enabled = true
			global.Natural_Evolution_timer = math.random(2.3 * 3600, 6.6 * 3600)
				game.map_settings.enemy_expansion.min_base_spacing = 4
				game.map_settings.enemy_expansion.max_expansion_distance = 20
				game.map_settings.enemy_expansion.min_player_base_distance = 4
				game.map_settings.enemy_expansion.settler_group_min_size = 16 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.settler_group_max_size = 25 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.min_expansion_cooldown = 7 * 60
				game.map_settings.enemy_expansion.max_expansion_cooldown = 23 * 60
				game.map_settings.unit_group.max_group_radius = 30.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.min_group_radius = 5.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.max_member_speedup_when_behind = 1.4 + (global.Natural_Evolution_Counter / 10)


		elseif Expansion_State == "Phase 9" then
			game.map_settings.enemy_expansion.enabled = true
			global.Natural_Evolution_timer = math.random(2.2 * 3600, 6.4 * 3600)
				game.map_settings.enemy_expansion.min_base_spacing = 3
				game.map_settings.enemy_expansion.max_expansion_distance = 22
				game.map_settings.enemy_expansion.min_player_base_distance = 3
				game.map_settings.enemy_expansion.settler_group_min_size = 18 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.settler_group_max_size = 28 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.min_expansion_cooldown = 6 * 60
				game.map_settings.enemy_expansion.max_expansion_cooldown = 22 * 60
				game.map_settings.unit_group.max_group_radius = 30.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.min_group_radius = 5.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.max_member_speedup_when_behind = 1.4 + (global.Natural_Evolution_Counter / 10)


		elseif Expansion_State == "Phase 10" then
			game.map_settings.enemy_expansion.enabled = true
			global.Natural_Evolution_timer = math.random(2.1 * 3600, 6.2 * 3600)
				game.map_settings.enemy_expansion.min_base_spacing = 3
				game.map_settings.enemy_expansion.max_expansion_distance = 30
				game.map_settings.enemy_expansion.min_player_base_distance = 0
				game.map_settings.enemy_expansion.settler_group_min_size = 30 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.settler_group_max_size = 75 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.min_expansion_cooldown = 5 * 60
				game.map_settings.enemy_expansion.max_expansion_cooldown = 20 * 60
				game.map_settings.unit_group.max_group_radius = 30.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.min_group_radius = 5.0 + (global.Natural_Evolution_Counter / 2)
				game.map_settings.unit_group.max_member_speedup_when_behind = 1.4 + (global.Natural_Evolution_Counter / 10)

		
		elseif Expansion_State == "Armageddon" then
			game.map_settings.enemy_expansion.enabled = true
			global.Natural_Evolution_timer = math.random(2 * 3600, 6 * 3600)
				game.map_settings.enemy_expansion.min_base_spacing = 2
				game.map_settings.enemy_expansion.max_expansion_distance = 50
				game.map_settings.enemy_expansion.min_player_base_distance = 0
				game.map_settings.enemy_expansion.settler_group_min_size = 100 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.settler_group_max_size = 200 + global.Natural_Evolution_Counter
				game.map_settings.enemy_expansion.min_expansion_cooldown = 5 * 60
				game.map_settings.enemy_expansion.max_expansion_cooldown = 15 * 60
				game.map_settings.unit_group.max_group_radius = 30.0 + (global.Natural_Evolution_Counter / 1)
				game.map_settings.unit_group.min_group_radius = 5.0 + (global.Natural_Evolution_Counter / 1)
				game.map_settings.unit_group.max_member_speedup_when_behind = 1.4 + (global.Natural_Evolution_Counter / 5)
		
		end

				
		if Expansion_State ~= "Peaceful" then
		writeDebug("Expansion state set to: " .. Expansion_State)	
		writeDebug("The Max Group Radius is: " .. game.map_settings.unit_group.max_group_radius)
		end
		
			
	end
--------------- END Expansion ------------------------------
end

function writeDebug(message)
  if NEConfig.QCCode then game.player.print(tostring(message)) end
end
