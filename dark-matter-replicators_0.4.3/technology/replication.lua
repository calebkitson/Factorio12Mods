repl_data = {}

local default_reps = 25
local research_time = 5

local base_speed_secs = 1
local repl_penalty = 0.5

local ore_speed = 2
local smelt_speed = 1
local plate_speed = ore_speed + smelt_speed
local steel_speed = plate_speed * 5 + smelt_speed * 5
local alien_speed = 100
local life_speed = 200

local oil_speed = 10
local chem_speed = plate_speed
local plastic_speed = chem_speed
local battery_speed = chem_speed * 2.8 + plate_speed * 2

local gear_speed = plate_speed * 2
local cable_speed = plate_speed / 2
local circuit_speed = plate_speed + 3 * cable_speed
local advanced_circuit_speed = plastic_speed * 2 + circuit_speed * 2 + cable_speed * 4
local module_speed = circuit_speed * 5 + advanced_circuit_speed * 5

local obsidian_speed = ore_speed / 3
local crystal_speed = 31.5
local cutting_speed = chem_speed * 150
local compressing_speed = ore_speed * 100

local dark_1_speed = 3
local dark_2_speed = dark_1_speed * 4 + plate_speed
local dark_3_speed = dark_2_speed * 4 + steel_speed
local dark_4_speed = dark_3_speed * 4 + dark_2_speed

data:extend({
	{
		type = "item-group",
		name = "replication",
		icon = "__dark-matter-replicators__/graphics/category-replicators.png",
		inventory_order = "g",
		order = "e"
	},
	{
		type = "item-subgroup",
		name = "replication-recipes",
		group = 'replication',
		order = 'ea',
	},
	{
		type = 'item-subgroup',
		name = 'replicators',
		group = 'replication',
		order = 'eb'
	},
	{
		type = 'item-subgroup',
		name = 'replication-research',
		group = 'replication',
		order = 'ed',
	},
	{
		type = 'item-subgroup',
		name = 'replication-resources',
		group = 'replication',
		order = 'ef',
	}
})

function repl_recipe(opts)
	local item = opts['item']
	local falseName = opts['name'] or item
	local tier = opts['tier']
	local reps = opts['reps'] or (default_reps * tier)
	local prerequisites = opts['prerequisites']
	local state = opts['state'] or "item"
	default_quantity = 1
	if (state=="fluid") then
		default_quantity = 5
	end
	local quantity = opts['quantity'] or default_quantity
	local time = opts['time'] or 2
	local unit = opts['unit']

	if ((state == 'item' and (data.raw.item[item] or data.raw.tool[item] or data.raw.ammo[item] or data.raw.armor[item] or data.raw.capsule[item] or data.raw.gun[item] or data.raw.blueprint[item] or data.raw.module[item])) or (state == 'fluid' and data.raw.fluid[item])) then
	-- Require the replicated item to exist
		
		-- Remove non-existent technologies from the prerequisites list
		for prereqCount=#prerequisites,1,-1 do
			if not data.raw.technology[prerequisites[prereqCount]] then
				table.remove(prerequisites, prereqCount)
			end
		end
		
		-- Require the previous tier
		prerequisites[#prerequisites + 1] = 'repltech-replication-' .. tier

		if unit == nil then
			if tier == 1 then
				unit = repl_research(reps * 2, 1, 0, 0, 0, research_time)
			elseif tier == 2 then
				unit = repl_research(reps, 1, 1, 0, 0, research_time)
			elseif tier == 3 then
				unit = repl_research(reps, 0, 1, 1, 0, research_time)
			elseif tier == 4 then
				unit = repl_research(reps, 0, 0, 1, 1, research_time)
			elseif tier == 5 then
				unit = repl_research(reps * 2, 0, 0, 0, 1, research_time)
			end
		end
	
		data:extend({{
			name = "repltech-"..falseName,  type = "technology", order = "c-a-".. tier,
			prerequisites = prerequisites,
			icon = "__dark-matter-replicators__/graphics/icons/replication/" .. falseName .. ".png",
			effects = {
				{ type = "unlock-recipe", recipe = "repl-" .. falseName},
			},
			unit = unit,
		}})
		repl_data[#repl_data + 1] = {
			type = "recipe",
			category = "replication-"..tier,
			name = "repl-" .. falseName,
			enabled = "false",
			energy_required = (time + repl_penalty) * base_speed_secs,
			icon = "__dark-matter-replicators__/graphics/icons/replication/" .. falseName .. ".png",
			ingredients = {},
			results=
			{
				{type=state, name=item, amount=quantity}
			},
			subgroup='replication-recipes',
			order = 'r-' .. tier .. '[' .. falseName .. ']',
		}
	
	end
end


function repl_tier(tier, unit)
  local preq = {}
  if tier > 1 then
    preq[#preq+1] = 'repltech-replication-'..(tier-1)
  end
  if tier == 1 then
    preq[#preq + 1] = 'electronics'
    preq[#preq + 1] = 'dark-matter-scoop'
  end
  if tier == 2 then
    preq[#preq + 1] = 'advanced-electronics'
    preq[#preq + 1] = 'dark-matter-transducer'
  end
  if tier == 4 then
    preq[#preq + 1] = 'advanced-electronics-2'
    preq[#preq + 1] = 'matter-conduit'
  end
  effects = {
      {
        type = "unlock-recipe",
        recipe = "replicator-"..tier
      },
  }
  repl_data[#repl_data + 1] = {
    type = "technology",
    name = "repltech-replication-" .. tier,
    icon = "__dark-matter-replicators__/graphics/icons/replicator-"..tier..".png",
    effects = effects,

    prerequisites = preq,
    unit = unit,
    order = "c-a",
  }
  repl_data[#repl_data + 1] = {
    type = "recipe-category",
    name = "replication-"..tier
  }

end

repl_tier(1, repl_research(default_reps * 4, 1, 0, 0, 0, research_time / 5))
repl_tier(2, repl_research(default_reps * 4, 1, 1, 0, 0, research_time / 5))
repl_tier(3, repl_research(default_reps * 6, 0, 1, 1, 0, research_time / 5))
repl_tier(4, repl_research(default_reps * 8, 0, 0, 1, 1, research_time / 5))
repl_tier(5, repl_research(default_reps * 20, 0, 0, 0, 1, research_time / 5))

-- Replication products
-- Standard game items
repl_recipe({
  tier=1,
  item='stone',
  time = ore_speed,
  prerequisites={}
})
repl_recipe({
  tier=1,
  item='coal',
  time = ore_speed,
  prerequisites={}
})
repl_recipe({
  tier=1,
  item='iron-ore',
  time = ore_speed,
  prerequisites={}
})
repl_recipe({
  tier=1,
  item='copper-ore',
  time = ore_speed,
  prerequisites={}
})
repl_recipe({
  tier=1,
  item='wood',
  time = ore_speed,
  prerequisites={}
})
repl_recipe({
  tier=1,
  item='crude-oil',
  state='fluid',
  time = oil_speed,
  prerequisites={}
})

repl_recipe({
  tier=2,
  item='iron-plate',
  time = plate_speed,
  reps = default_reps,
  prerequisites={'repltech-iron-ore'}
})
repl_recipe({
  tier = 2,
  item = 'copper-plate',
  time = plate_speed,
  reps = default_reps,
  prerequisites={'repltech-copper-ore'}
})
repl_recipe({
  tier = 2,
  item='stone-brick',
  time = ore_speed * 2 + smelt_speed,
  prerequisites={'repltech-stone'}
})
repl_recipe({
  tier = 2,
  item = 'stone-wall',
  time = (ore_speed * 2 + smelt_speed) * 5,
  prerequisites={'repltech-stone'}
})
repl_recipe({
  tier = 2,
  item = 'pipe',
  time = plate_speed,
  prerequisites={'repltech-iron-plate'}
})
repl_recipe({
  tier = 2,
  item = 'iron-gear-wheel',
  time = 2 * plate_speed,
  prerequisites={'repltech-iron-plate'}
})
repl_recipe({
  tier=2,
  item = 'copper-cable',
  time = cable_speed,
  prerequisites={'repltech-copper-plate'}
})
repl_recipe({
  tier = 2,
  item = 'sulfur',
  time = chem_speed,
  reps = default_reps,
  prerequisites={}
})
repl_recipe({
  tier = 2,
  item = 'basic-bullet-magazine',
  time = plate_speed * 2,
  prerequisites={'repltech-iron-plate'}
})
repl_recipe({
  tier = 2,
  item = 'shotgun-shell',
  time = plate_speed * 4,
  prerequisites={'military', 'repltech-iron-plate', 'repltech-copper-plate'}
})
repl_recipe({
  tier = 2,
  item = 'basic-grenade',
  time = ore_speed * 10 + plate_speed * 5,
  prerequisites={'military-2', 'repltech-coal', 'repltech-iron-plate'}
})

repl_recipe({
  tier = 3,
  item = 'steel-plate',
  time = steel_speed,
  prerequisites={'repltech-iron-plate'}
})
repl_recipe({
  tier = 3,
  item = 'electronic-circuit',
  time = circuit_speed,
  prerequisites={'repltech-iron-plate', 'repltech-copper-cable'}
})
repl_recipe({
  tier = 3,
  item = 'plastic-bar',
  time = plastic_speed,
  prerequisites={}
})
repl_recipe({
  tier = 3,
  item = 'explosives',
  time = chem_speed + ore_speed,
  prerequisites={}
})
if (data.raw.fluid['clean-water']) then
	repl_recipe({
	  tier = 1,
	  item = 'water',
	  name = 'dirty-water',
	  state = 'fluid',
	  time = oil_speed,
	  prerequisites={}
	})
	repl_recipe({
	  tier = 3,
	  item = 'clean-water',
	  name = 'water',
	  state = 'fluid',
	  time = chem_speed * 3,
	  prerequisites={'repltech-dirty-water'}
	})
else
	repl_recipe({
	  tier = 3,
	  item = 'water',
	  state = 'fluid',
	  time = chem_speed * 3,
	  prerequisites={}
	})
end
repl_recipe({
  tier = 3,
  item='concrete',
  time = ore_speed * 0.3 + smelt_speed * 0.1 + chem_speed * 0.6,
  prerequisites={'repltech-iron-plate', 'repltech-stone', 'repltech-water'}
})
repl_recipe({
  tier = 3,
  item='straight-rail',
  time = ore_speed + plate_speed / 4 + steel_speed / 2,
  prerequisites={'repltech-stone', 'repltech-steel-plate', 'railway'}
})
repl_recipe({
  tier = 3,
  item='curved-rail',
  reps = 0,
  time = ore_speed * 4 + plate_speed + steel_speed * 2,
  prerequisites={'repltech-straight-rail'}
})
repl_recipe({
  tier = 3,
  item = 'small-electric-pole',
  time = ore_speed + cable_speed,
  prerequisites={'repltech-copper-cable', 'repltech-wood'}
})
repl_recipe({
  tier = 3,
  item = 'medium-electric-pole',
  reps = 0,
  time = plate_speed * 2 + steel_speed * 2,
  prerequisites={'electric-energy-distribution-1', 'repltech-small-electric-pole', 'repltech-steel-plate'}
})
repl_recipe({
  tier = 3,
  item = 'big-electric-pole',
  reps = 0,
  time = plate_speed * 5 + steel_speed * 5,
  prerequisites={'repltech-medium-electric-pole'}
})
repl_recipe({
  tier = 3,
  item = 'piercing-shotgun-shell',
  time = plate_speed * 2 + steel_speed * 2,
  prerequisites={'military-4', 'repltech-steel-plate', 'repltech-copper-plate'}
})
repl_recipe({
  tier = 3,
  item = 'science-pack-1',
  time = 3 * plate_speed,
  prerequisites={'repltech-iron-gear-wheel', 'repltech-copper-plate'}
})
repl_recipe({
  tier = 3,
  item = 'engine-unit',
  time = steel_speed + plate_speed * 4,
  prerequisites={'repltech-pipe', 'repltech-steel-plate', 'repltech-iron-gear-wheel', 'engine'}
})
repl_recipe({
  tier = 3,
  item = 'electric-engine-unit',
  time = steel_speed + plate_speed * 4 + circuit_speed * 2,
  prerequisites={'repltech-pipe', 'repltech-steel-plate', 'repltech-iron-gear-wheel', 'repltech-electronic-circuit', 'repltech-lubricant', 'electric-engine'}
})
repl_recipe({
  tier = 3,
  item = 'repair-pack',
  time = circuit_speed + gear_speed,
  prerequisites={'repltech-electronic-circuit', 'repltech-iron-gear-wheel'}
})
repl_recipe({
  tier = 3,
  item = 'small-lamp',
  time = circuit_speed + plate_speed * 2.5,
  prerequisites={'repltech-electronic-circuit', 'optics'}
})
repl_recipe({
  tier = 3,
  item = 'rail-signal',
  time = circuit_speed * 5 + plate_speed,
  prerequisites={'repltech-electronic-circuit', 'rail-signals'}
})
repl_recipe({
  tier = 3,
  item = 'smart-chest',
  time = steel_speed * 8 + circuit_speed * 3,
  prerequisites={'repltech-electronic-circuit', 'repltech-steel-plate', 'circuit-network'}
})
repl_recipe({
  tier = 3,
  item = 'gate',
  time = (ore_speed * 2 + smelt_speed) * 5 + steel_speed * 2 + circuit_speed * 2,
  prerequisites={'repltech-stone-wall', 'repltech-steel-plate', 'repltech-electronic-circuit', 'gates'}
})
repl_recipe({
  tier = 3,
  item = 'basic-transport-belt',
  time = (plate_speed + gear_speed) / 2,
  prerequisites={'repltech-iron-gear-wheel'}
})
repl_recipe({
  tier = 3,
  item = 'fast-transport-belt',
  time = plate_speed * 0.5 + gear_speed * 5.5,
  prerequisites={'logistics-2', 'repltech-basic-transport-belt'}
})
repl_recipe({
  tier = 3,
  item = 'basic-inserter',
  time = plate_speed + gear_speed + circuit_speed,
  prerequisites={'repltech-electronic-circuit', 'repltech-iron-gear-wheel'}
})
repl_recipe({
  tier=3,
  item='heavy-oil',
  state='fluid',
  time = oil_speed,
  prerequisites={}
})
repl_recipe({
  tier=3,
  item='light-oil',
  state='fluid',
  time = oil_speed,
  prerequisites={}
})
repl_recipe({
  tier=3,
  item='petroleum-gas',
  state='fluid',
  time = oil_speed,
  prerequisites={}
})
repl_recipe({
  tier = 3,
  item = 'solid-fuel',
  time = chem_speed * 2,
  prerequisites = {}
})
repl_recipe({
  tier = 2,
  item = 'flame-thrower-ammo',
  time = oil_speed + plate_speed * 5,
  prerequisites={'flame-thrower', 'repltech-iron-plate'}
})
repl_recipe({
  tier=3,
  item='lubricant',
  state='fluid',
  time = oil_speed,
  prerequisites={}
})
repl_recipe({
  tier=3,
  item='sulfuric-acid',
  state='fluid',
  time = chem_speed * 7,
  prerequisites={'repltech-sulfur'}
})
repl_recipe({
  tier = 3,
  item = 'battery',
  time = battery_speed,
  prerequisites={'repltech-sulfuric-acid', 'repltech-copper-plate', 'repltech-iron-plate'}
})
repl_recipe({
  tier=3,
  item='solar-panel',
  time = steel_speed * 5  + circuit_speed * 15 + plate_speed * 5,
  prerequisites={'solar-energy', 'repltech-steel-plate', 'repltech-electronic-circuit'}
})
repl_recipe({
  tier=3,
  item='gun-turret',
  time = gear_speed * 5 + plate_speed * 15,
  prerequisites={'turrets', 'repltech-iron-gear-wheel', 'repltech-copper-plate'}
})
repl_recipe({
  tier=3,
  item='land-mine',
  time = steel_speed / 4 + chem_speed / 2 + ore_speed / 2,
  prerequisites={'land-mine', 'repltech-steel-plate', 'repltech-explosives'}
})
repl_recipe({
  tier=3,
  item='piercing-bullet-magazine',
  time = steel_speed + plate_speed * 5,
  prerequisites={'military-2', 'repltech-copper-plate', 'repltech-steel-plate'}
})
repl_recipe({
  tier=3,
  item='rocket',
  time = circuit_speed + chem_speed + ore_speed + plate_speed * 2,
  prerequisites={'rocketry', 'repltech-electronic-circuit', 'repltech-explosives'}
})
repl_recipe({
  tier=3,
  item='cannon-shell',
  time = steel_speed * 4 + plastic_speed * 2 + chem_speed + ore_speed,
  prerequisites={'tanks', 'repltech-steel-plate', 'repltech-plastic-bar', 'repltech-explosives'}
})
repl_recipe({
  tier=3,
  item='explosive-cannon-shell',
  time = steel_speed * 4 + plastic_speed * 2 + (chem_speed + ore_speed) * 4,
  prerequisites={'tanks', 'repltech-steel-plate', 'repltech-plastic-bar', 'repltech-explosives'}
})
repl_recipe({
  tier=3,
  item='poison-capsule',
  time = steel_speed * 3 + circuit_speed * 3 + ore_speed * 10,
  prerequisites={'military-3', 'repltech-steel-plate', 'repltech-electronic-circuit', 'repltech-coal'}
})
repl_recipe({
  tier=3,
  item='slowdown-capsule',
  time = steel_speed * 2 + circuit_speed * 2 + ore_speed * 5,
  prerequisites={'military-3', 'repltech-steel-plate', 'repltech-electronic-circuit', 'repltech-coal'}
})
repl_recipe({
  tier=3,
  item='defender-capsule',
  time = steel_speed + plate_speed * 5 + circuit_speed * 2 + gear_speed * 3,
  prerequisites={'combat-robotics', 'repltech-piercing-bullet-magazine', 'repltech-electronic-circuit', 'repltech-iron-gear-wheel'}
})

repl_recipe({
  tier = 4,
  item = 'advanced-circuit',
  time = advanced_circuit_speed,
  prerequisites = {'repltech-electronic-circuit', 'repltech-plastic-bar'}
})
repl_recipe({
  tier = 4,
  item='speed-module',
  time = module_speed,
  prerequisites={'speed-module', 'repltech-electronic-circuit', 'repltech-advanced-circuit'}
})
repl_recipe({
  tier = 4,
  item='effectivity-module',
  time = module_speed,
  prerequisites={'effectivity-module', 'repltech-electronic-circuit', 'repltech-advanced-circuit'}
})
repl_recipe({
  tier = 4,
  item='productivity-module',
  time = module_speed,
  prerequisites={'productivity-module', 'repltech-electronic-circuit', 'repltech-advanced-circuit'}
})
repl_recipe({
  tier = 4,
  item='construction-robot',
  time = steel_speed * 2 + plate_speed * 6 + circuit_speed * 7 + battery_speed * 2,
  prerequisites={'repltech-electric-engine-unit', 'construction-robotics'}
})
repl_recipe({
  tier = 4,
  item = 'express-transport-belt',
  time = plate_speed * 0.5 + gear_speed * 10.5 + oil_speed * 0.4,
  prerequisites={'logistics-3', 'repltech-fast-transport-belt', 'repltech-lubricant'}
})
repl_recipe({
  tier = 4,
  item = 'fast-inserter',
  time = plate_speed * 3 + gear_speed + circuit_speed * 3,
  prerequisites={'logistics', 'repltech-basic-inserter'}
})
repl_recipe({
  tier = 4,
  item = 'smart-inserter',
  time = plate_speed * 3 + gear_speed + circuit_speed * 7,
  prerequisites={'repltech-fast-inserter'}
})
repl_recipe({
  tier = 4,
  item = 'science-pack-2',
  time = (plate_speed + gear_speed) / 2 + plate_speed + gear_speed + circuit_speed,
  prerequisites={'repltech-basic-transport-belt', 'repltech-basic-inserter'}
})
repl_recipe({
  tier = 4,
  item = 'substation',
  time = steel_speed * 10 + advanced_circuit_speed * 5 + plate_speed * 5,
  prerequisites = {'electric-energy-distribution-2', 'repltech-advanced-circuit', 'repltech-steel-plate'}
})
repl_recipe({
  tier = 4,
  item='logistic-robot',
  time = steel_speed * 2 + plate_speed * 6 + circuit_speed * 5 + battery_speed * 2 + advanced_circuit_speed * 2,
  prerequisites={'repltech-electric-engine-unit', 'repltech-advanced-circuit', 'logistic-robotics'}
})
repl_recipe({
  tier = 4,
  item = 'alien-artifact',
  time = alien_speed - repl_penalty,
  prerequisites={'alien-technology'}
})
repl_recipe({
  tier = 4,
  item = 'alien-science-pack',
  time = alien_speed / 10,
  prerequisites={'repltech-alien-artifact'}
})
repl_recipe({
  tier = 4,
  item = 'basic-accumulator',
  time = battery_speed * 5 + plate_speed * 2,
  prerequisites={'electric-energy-accumulators-1', 'repltech-iron-plate', 'repltech-battery'}
})
repl_recipe({
  tier = 4,
  item = 'laser-turret',
  time = steel_speed * 5 + circuit_speed * 5 + battery_speed * 3,
  prerequisites={'laser-turrets', 'repltech-steel-plate', 'repltech-electronic-circuit', 'repltech-battery'}
})
repl_recipe({
  tier = 4,
  item = 'explosive-rocket',
  time = circuit_speed + (chem_speed + ore_speed) * 6 + plate_speed * 2,
  prerequisites={'explosive-rocketry', 'repltech-rocket'}
})
repl_recipe({
  tier = 4,
  item = 'distractor-capsule',
  time = ((steel_speed + plate_speed * 5 + circuit_speed * 2 + gear_speed * 3) * 4 + advanced_circuit_speed * 3),
  prerequisites={'combat-robotics-2', 'repltech-advanced-circuit', 'repltech-iron-gear-wheel'}
})

repl_recipe({
  tier=5,
  item='raw-wood',
  time = life_speed - repl_penalty,
  prerequisites={}
})
repl_recipe({
  tier=5,
  item='raw-fish',
  time = life_speed - repl_penalty,
  prerequisites={}
})
repl_recipe({
  tier = 5,
  item = 'roboport',
  time = (advanced_circuit_speed + gear_speed + steel_speed) * 45 - repl_penalty,
  prerequisites={'repltech-advanced-circuit', 'repltech-steel-plate', 'repltech-iron-gear-wheel'}
})
repl_recipe({
  tier = 5,
  item = 'science-pack-3',
  time = battery_speed + advanced_circuit_speed + (plate_speed * 3 + gear_speed + circuit_speed * 7) + steel_speed,
  prerequisites={'repltech-battery', 'repltech-advanced-circuit', 'repltech-smart-inserter', 'repltech-steel-plate'}
})
repl_recipe({
  tier = 5,
  item = 'processing-unit',
  time = circuit_speed * 20 + advanced_circuit_speed * 2,
  prerequisites={'repltech-advanced-circuit'}
})
repl_recipe({
  tier = 5,
  item = 'destroyer-capsule',
  time = (((steel_speed + plate_speed * 5 + circuit_speed * 2 + gear_speed * 3) * 4 + advanced_circuit_speed * 3) * 4 + module_speed),
  prerequisites={'combat-robotics-3', 'repltech-speed-module', 'repltech-iron-gear-wheel'}
})


-- Replication replication
repl_recipe({
  tier = 1,
  item = 'tenemut',
  time = dark_1_speed,
  prerequisites={}
})
repl_recipe({
  tier = 2,
  item = 'dark-matter-scoop',
  time = dark_2_speed,
  prerequisites={'repltech-tenemut', 'repltech-iron-plate'}
})
repl_recipe({
  tier = 3,
  item = 'dark-matter-transducer',
  time = dark_2_speed * 5 + steel_speed,
  prerequisites={'repltech-dark-matter-scoop', 'repltech-steel-plate'}
})
repl_recipe({
  tier = 4,
  item = 'matter-conduit',
  time = dark_4_speed,
  prerequisites={'repltech-dark-matter-transducer'}
})
repl_recipe({
  tier = 3,
  item = 'replicator-1',
  time = circuit_speed * 1 + dark_2_speed * 4 + plate_speed * 4,
  prerequisites={'repltech-dark-matter-scoop', 'repltech-electronic-circuit'}
})
repl_recipe({
  tier = 4,
  item = 'replicator-2',
  time = circuit_speed * 3 + dark_2_speed * 4 + dark_3_speed * 2 + plate_speed * 4,
  prerequisites={'repltech-replicator-1', 'repltech-dark-matter-transducer'}
})
repl_recipe({
  tier = 4,
  item = 'replicator-3',
  time = circuit_speed * 3 + advanced_circuit_speed + dark_2_speed * 4 + dark_3_speed * 6 + plate_speed * 4,
  prerequisites={'repltech-replicator-2', 'repltech-advanced-circuit'}
})
repl_recipe({
  tier = 5,
  item = 'replicator-4',
  time = circuit_speed * 3 + advanced_circuit_speed * 3 + dark_2_speed * 4 + dark_3_speed * 6 + dark_4_speed * 2 + plate_speed * 4,
  prerequisites={'repltech-replicator-3', 'repltech-matter-conduit'}
})
repl_recipe({
  tier = 5,
  item = 'replicator-5',
  time = circuit_speed * 23 + advanced_circuit_speed * 5 + dark_2_speed * 4 + dark_3_speed * 6 + dark_4_speed * 6 + plate_speed * 4,
  prerequisites={'repltech-replicator-4', 'repltech-processing-unit'}
})


-- Dy-tech mod items

repl_recipe({
  tier=1,
  item='lava-600',
  state='fluid',
  time = ore_speed * 5,
  prerequisites={'repltech-stone'}
})
repl_recipe({
  tier=1,
  item='sand',
  time = ore_speed / 5,
  prerequisites={}
})
repl_recipe({
  tier=1,
  item='glass',
  time = ore_speed / 5 + smelt_speed,
  prerequisites={'repltech-sand', 'repltech-quartz'}
})
repl_recipe({
  tier=1,
  item='obsidian',
  time = obsidian_speed,
  prerequisites={}
})
repl_recipe({
  tier=1,
  item='ardite-ore',
  time = ore_speed / 4 * 5,
  reps = default_reps * 2,
  prerequisites={}
})
repl_recipe({
  tier=1,
  item='cobalt-ore',
  time = ore_speed / 4 * 5,
  prerequisites={}
})
repl_recipe({
  tier=1,
  item='gold-ore',
  time = ore_speed * 3,
  prerequisites={}
})
repl_recipe({
  tier=1,
  item='lead-ore',
  time = ore_speed * 3,
  prerequisites={}
})
repl_recipe({
  tier=1,
  item='silver-ore',
  time = ore_speed * 3,
  prerequisites={}
})
repl_recipe({
  tier=1,
  item='tin-ore',
  time = ore_speed * 3,
  prerequisites={}
})
repl_recipe({
  tier=1,
  item='tungsten-ore',
  time = ore_speed,
  prerequisites={}
})
repl_recipe({
  tier=1,
  item='zinc-ore',
  time = ore_speed * 3,
  prerequisites={}
})
repl_recipe({
  tier=1,
  item='crystal',
  time = crystal_speed,
  prerequisites={}
})
repl_recipe({
  tier=2,
  item='ardite-plate',
  time = ore_speed / 4 * 5 + smelt_speed,
  prerequisites={'repltech-ardite-ore'}
})
repl_recipe({
  tier=2,
  item='cobalt-plate',
  time = ore_speed / 4 * 5 + smelt_speed,
  reps = default_reps,
  prerequisites={'repltech-cobalt-ore'}
})
repl_recipe({
  tier=2,
  item='gold-plate',
  time = ore_speed * 3 + smelt_speed,
  reps = default_reps,
  prerequisites={'repltech-gold-ore'}
})
repl_recipe({
  tier=2,
  item='lead-plate',
  time = ore_speed * 3 + smelt_speed,
  reps = default_reps,
  prerequisites={'repltech-lead-ore'}
})
repl_recipe({
  tier=2,
  item='silver-plate',
  time = ore_speed * 3 + smelt_speed,
  reps = default_reps,
  prerequisites={'repltech-silver-ore'}
})
repl_recipe({
  tier=2,
  item='tin-plate',
  time = ore_speed * 3 + smelt_speed,
  reps = default_reps,
  prerequisites={'repltech-tin-ore'}
})
repl_recipe({
  tier=2,
  item='tungsten-plate',
  time = plate_speed,
  reps = default_reps,
  prerequisites={'repltech-tungsten-ore'}
})
repl_recipe({
  tier=2,
  item='zinc-plate',
  time = ore_speed * 3 + smelt_speed,
  reps = default_reps,
  prerequisites={'repltech-zinc-ore'}
})
repl_recipe({
  tier = 2,
  item = 'stone-gear-wheel',
  time = 2 * ore_speed,
  prerequisites={'repltech-stone'}
})
repl_recipe({
  tier = 2,
  item = 'cut-diamond',
  time = crystal_speed + cutting_speed + obsidian_speed * 50 + (140+224)/3.5,
  reps = default_reps,
  prerequisites={'repltech-coal'}
})
repl_recipe({
  tier = 2,
  item = 'compressed-diamond',
  time = crystal_speed + cutting_speed + compressing_speed + obsidian_speed * 50 + (140+224+403)/3.5,
  prerequisites={'repltech-cut-diamond'}
})
repl_recipe({
  tier = 3,
  item = 'cut-emerald',
  time = crystal_speed + cutting_speed + obsidian_speed * 10 + (100+160)/3.5,
  prerequisites={'repltech-crystal'}
})
repl_recipe({
  tier = 3,
  item = 'compressed-emerald',
  time = crystal_speed + cutting_speed + compressing_speed + obsidian_speed * 10 + (100+160+288)/3.5,
  prerequisites={'repltech-cut-emerald'}
})
repl_recipe({
  tier = 3,
  item = 'cut-ruby',
  time = crystal_speed + cutting_speed + (20+32)/3.5,
  prerequisites={'repltech-crystal'}
})
repl_recipe({
  tier = 3,
  item = 'compressed-ruby',
  time = crystal_speed + cutting_speed + compressing_speed + (20+32+58)/3.5,
  prerequisites={'repltech-cut-ruby'}
})
repl_recipe({
  tier = 3,
  item = 'cut-sapphire',
  time = crystal_speed + cutting_speed + (35+56)/3.5,
  prerequisites={'repltech-crystal'}
})
repl_recipe({
  tier = 3,
  item = 'compressed-sapphire',
  time = crystal_speed + cutting_speed + compressing_speed + (35+56+101)/3.5,
  prerequisites={'repltech-cut-sapphire'}
})
repl_recipe({
  tier = 3,
  item = 'cut-topaz',
  time = crystal_speed + cutting_speed + obsidian_speed * 25 + (60+96)/3.5,
  prerequisites={'repltech-crystal'}
})
repl_recipe({
  tier = 3,
  item = 'compressed-topaz',
  time = crystal_speed + cutting_speed + compressing_speed + obsidian_speed * 25 + (60+96+173)/3.5,
  prerequisites={'repltech-cut-topaz'}
})
repl_recipe({
  tier = 5,
  item = 'advanced-processing-unit',
  time = plate_speed * 6 + cable_speed * 10 + circuit_speed * 110 + advanced_circuit_speed * 10 + plastic_speed * 10,
  prerequisites={'advanced-processing-unit', 'repltech-processing-unit'}
})


--Yuoki mod items

local unicomp_speed = ((ore_speed * 1.5) * 1.5 + 7.4) * 3 + 2.3
local charged_speed = ore_speed * 2 + 7
local richdust_speed = ore_speed * 3.5 / 2 + 1.7

repl_recipe({
  tier = 1,
  item = 'y-res1', --Unicomp Ore
  time = ore_speed * 1.5,
  prerequisites={}
})
repl_recipe({
  tier = 1,
  item = 'y-res2', --Charged Ore
  time = ore_speed * 2,
  prerequisites={}
})
repl_recipe({
  tier = 1,
  item = 'y-slag', --Slag
  time = 2,
  prerequisites={}
})
repl_recipe({
  tier = 2,
  item = 'y-refined-yres1', --Unicomp cylinders
  time = (ore_speed * 1.5) * 1.5 + 7.4,
  reps = default_reps,
  prerequisites={'repltech-y-res1'}
})
repl_recipe({
  tier = 2,
  item = 'y-unicomp-raw', --Durotal blocks, the most commonly used form of unicomp
  time = unicomp_speed,
  prerequisites={'repltech-y-refined-yres1'}
})
repl_recipe({
  tier = 2,
  item = 'y-refined-yres2', --Charged cylinders
  time = charged_speed,
  reps = default_reps,
  prerequisites={'repltech-y-res2'}
})
repl_recipe({
  tier = 2,
  item = 'y-raw-fuelnium', --Krakon gems, the most commonly used form of alien fuel
  time = charged_speed,
  prerequisites={'repltech-y-refined-yres2'}
})
repl_recipe({
  tier = 2,
  item = 'y-richdust', --Rich dust
  time = richdust_speed,
  reps = default_reps,
  prerequisites={'repltech-y-res1', 'repltech-y-res2'}
})
repl_recipe({
  tier = 2,
  item = 'y-unicomp-a2', --UC-A2
  time = richdust_speed * 20 + smelt_speed,
  prerequisites={'repltech-y-richdust'}
})
repl_recipe({
  tier = 2,
  item = 'y-orange-stuff', --Orange Stuff
  time = (richdust_speed * 3 + smelt_speed) / 2,
  prerequisites={'repltech-y-richdust'}
})
repl_recipe({
  tier=2,
  item='y-pure-iron', --Pure iron
  time = plate_speed * 2 - smelt_speed,
  reps = 0,
  prerequisites={'repltech-iron-plate'}
})
repl_recipe({
  tier = 2,
  item = 'y-pure-copper', --Pure copper
  time = plate_speed * 2 - smelt_speed,
  reps = 0,
  prerequisites={'repltech-copper-plate'}
})
repl_recipe({
  tier = 2,
  item = 'y-crystal2', --Ancient Alien Data Fragments
  time = 16,
  prerequisites={}
})
-- repl_recipe({ --disabled: there are balance issues when this item is replicated to be used as fuel source and this item's only other purpose is craft one other item anyway
  -- tier = 3,
  -- item = 'y-infused-uca2', --Infused UC-A2
  -- time = richdust_speed * 20 + smelt_speed + 17.1,
  -- prerequisites={'repltech-y-unicomp-a2'}
-- })
repl_recipe({
  tier = 3,
  item = 'y-quantrinum', --Quantrinum
  time = (richdust_speed * 20 + smelt_speed) * 15 + charged_speed * 12 + unicomp_speed * 12 + 16 * 8,
  prerequisites={'repltech-y-unicomp-a2', 'repltech-y-raw-fuelnium', 'repltech-y-unicomp-raw', 'repltech-y-crystal2'}
})
repl_recipe({
  tier = 3,
  item = 'y-crystal-cnd', --Lachnan Crystal
  time = (plate_speed * 2 - smelt_speed) * 10 + 2 * 40 + (richdust_speed * 20 + smelt_speed) * 8 + 16 * 10,
  prerequisites={'repltech-y-pure-iron', 'repltech-y-slag', 'repltech-y-unicomp-a2', 'repltech-y-crystal2'}
})
repl_recipe({
  tier = 3,
  item = 'y-toxic-dust', --Toxic Dust
  time = 1,
  prerequisites={}
})


data:extend(repl_data)
