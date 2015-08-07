
--automatically generated file | fMT-Export (c)YT v0.03-215Jul17 

data:extend({

	-- quantrium-reactor power-generation recipe 1
	{
	  type = "recipe",
	  name = "y-mf1-q1-recipe",
	  category = "yrcat-mf1q", -- mechanical force quantrinum-reactor
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y-unicomp-a2" , amount = 1.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 25.0, },
	  },
	  icon = "__yi_engines__/graphics/gear_xtra.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- quantrium-reactor power-generation recipe 2
	{
	  type = "recipe",
	  name = "y-mf1-q2-recipe",
	  category = "yrcat-mf1q", -- mechanical force quantrinum-reactor
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y-infused-uca2" , amount = 1.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 100.0, },
	  },
	  icon = "__yi_engines__/graphics/gear_xtra.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- quantrium-reactor power-generation recipe 3
	{
	  type = "recipe",
	  name = "y-mf1-q3-recipe",
	  category = "yrcat-mf1q", -- mechanical force quantrinum-reactor
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y-quantrinum-charge" , amount = 1.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 500.0, },
	  },
	  icon = "__yi_engines__/graphics/gear_xtra.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- 
	{
	  type = "recipe",
	  name = "y-mf1a-recipe",
	  category = "yrcat-mf1a", -- mechanical force primary - sfe
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 10.0, },
		{ type = "fluid", name = "lubricant" , amount = 0.2, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 3.0, },
	  },
	  icon = "__yi_engines__/graphics/gear_wet.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- without lubricant, still water for cooling - sfe
	{
	  type = "recipe",
	  name = "y-mf1a1-recipe",
	  category = "yrcat-mf1a", -- mechanical force primary - sfe
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 20.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 1.8, },
	  },
	  icon = "__yi_engines__/graphics/gear_basic.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- Hydromechanical Power
	{
	  type = "recipe",
	  name = "y-mf1b-recipe",
	  category = "yrcat-mf1b", -- mechanical force primary - ffe
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "fluid", name = "heavy-oil" , amount = 3.0, },
		{ type = "fluid", name = "lubricant" , amount = 0.2, },
		{ type = "fluid", name = "water" , amount = 15.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 4.0, },
	  },
	  icon = "__yi_engines__/graphics/gear_wet.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- elektromotor + stirling
	{
	  type = "recipe",
	  name = "y-mf1c-recipe",
	  category = "yrcat-mf1c", -- mechanical force primary - stirling
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 0.4, },
	  },
	  icon = "__yi_engines__/graphics/gear_basic.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- 
	{
	  type = "recipe",
	  name = "y-mf1d-recipe",
	  category = "yrcat-mf1b", -- mechanical force primary - ffe
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "fluid", name = "light-oil" , amount = 2.0, },
		{ type = "fluid", name = "lubricant" , amount = 0.2, },
		{ type = "fluid", name = "water" , amount = 15.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 4.0, },
	  },
	  icon = "__yi_engines__/graphics/gear_wet.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- SFE - burn corn-oil - self lubricant
	{
	  type = "recipe",
	  name = "y-mf1e-recipe",
	  category = "yrcat-mf1b", -- mechanical force primary - ffe
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "fluid", name = "ye_cornoil" , amount = 3.0, },
		{ type = "fluid", name = "water" , amount = 15.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 3.0, },
	  },
	  icon = "__yi_engines__/graphics/gear_wet.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- gearbox transmission with lubricant
	{
	  type = "recipe",
	  name = "y-mf2a-recipe",
	  category = "yrcat-mf2", -- gearbox
	  enabled = "true",
	  energy_required = 0.25,
	  ingredients = {
		{ type = "fluid", name = "y-mechanical-force" , amount = 2.6, },
		{ type = "fluid", name = "lubricant" , amount = 0.1, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 2.5, },
	  },
	  icon = "__yi_engines__/graphics/gears_br.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- gearbox transmission without lubricant
	{
	  type = "recipe",
	  name = "y-mf2b-recipe",
	  category = "yrcat-mf2", -- gearbox
	  enabled = "true",
	  energy_required = 0.50,
	  ingredients = {
		{ type = "fluid", name = "y-mechanical-force" , amount = 1.6, },
		{ type = "fluid", name = "water" , amount = 5.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 1.4, },
	  },
	  icon = "__yi_engines__/graphics/gears_br.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- water-pump
	{
	  type = "recipe",
	  name = "y-mfwater-recipe",
	  category = "yrcat-pump", -- water-pump
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "fluid", name = "y-mechanical-force" , amount = 0.1, },
	  },
	  results = {
		{ type = "fluid", name = "water", amount = 50.0, },
	  },
	  icon = "__yi_engines__/graphics/water-clean2.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_biofuel_recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "ye_biomixed" , amount = 1.0, },
	  },
	  results = {
		{ type = "fluid", name = "light-oil", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/ethanol.png",
	  order = "0", group = "yi_engines", subgroup = "yie-processed",
	},

	-- rabio
	{
	  type = "recipe",
	  name = "ye_biomixed_recipe",
	  category = "yuoki-formpress-recipe", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "ye_sugar" , amount = 4.0, },
		{ type = "item", name = "ye_corn_a" , amount = 70.0, },
	  },
	  results = {
		{ type = "item", name = "ye_biomixed", amount = 1.0, },
	  },
	  order = "0", group = "yi_engines", subgroup = "yie-processed",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_celluose_recipe",
	  category = "y-crushing-recipe", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "ye_corn_a" , amount = 40.0, },
		{ type = "item", name = "ye_corn_b" , amount = 80.0, },
		{ type = "fluid", name = "water" , amount = 30.0, },
	  },
	  results = {
		{ type = "item", name = "ye_celluose", amount = 12.0, },
	  },
	  order = "0", group = "yi_engines", subgroup = "yie-parts",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_cornb_recipe",
	  category = "yrcat-farm", -- farm itself
	  enabled = "true",
	  energy_required = 420.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 500.0, },
		{ type = "item", name = "ye_seed_b" , amount = 3.0, },
	  },
	  results = {
		{ type = "item", name = "ye_corn_b", amount = 300.0, },
	  },
	  order = "0", group = "yi_engines", subgroup = "yie-processed",
	},

	-- make steam - needs lua-code
	{
	  type = "recipe",
	  name = "ye_makesteam_recipe",
	  category = "yrcat-heater", -- overheater for steam
	  enabled = "true",
	  energy_required = 0.50,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 10.0, },
	  },
	  results = {
		{ type = "fluid", name = "ye_steam", amount = 120.0, },
	  },
	  icon = "__yi_engines__/graphics/steam.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- overheater for steam
	{
	  type = "recipe",
	  name = "ye_overheater_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_overheater", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/wip.png",
	  order = "0", group = "yi_engines", subgroup = "yie-exp",
	},

	-- only for testings
	{
	  type = "recipe",
	  name = "ye_rheinsberg_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "y-quantrinum-charge" , amount = 1.0, },
		{ type = "item", name = "y-electric-air-heater" , amount = 2.0, },
	  },
	  results = {
		{ type = "item", name = "ye_rheinsberg", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/rheinsberg-icon.png",
	  order = "0", group = "yi_engines", subgroup = "yie-engines",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_seed_b_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "ye_seed_a" , amount = 3.0, },
	  },
	  results = {
		{ type = "item", name = "ye_seed_b", amount = 1.0, },
	  },
	  order = "0", group = "yi_engines", subgroup = "yie-processed",
	},

	-- steam to mechanical power
	{
	  type = "recipe",
	  name = "ye_steam2mf_recipe",
	  category = "yrcat_turbine", -- steam to mechanical power
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "fluid", name = "ye_steam" , amount = 120.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 10.0, },
		{ type = "fluid", name = "water", amount = 10.0, },
	  },
	  icon = "__yi_engines__/graphics/mf-1.png",
	  order = "0", group = "yi_engines", subgroup = "yie-engines",
	},

	-- Steam-Turbine
	{
	  type = "recipe",
	  name = "ye_sturbine_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_sturbine", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/wip.png",
	  order = "0", group = "yi_engines", subgroup = "yie-exp",
	},

	-- sugar
	{
	  type = "recipe",
	  name = "ye_sugar_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 6.00,
	  ingredients = {
		{ type = "item", name = "ye_corn_b" , amount = 30.0, },
	  },
	  results = {
		{ type = "item", name = "ye_sugar", amount = 3.0, },
	  },
	  order = "0", group = "yi_engines", subgroup = "yie-processed",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_synwood_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 4.00,
	  ingredients = {
		{ type = "item", name = "ye_celluose" , amount = 18.0, },
	  },
	  results = {
		{ type = "item", name = "raw-wood", amount = 3.0, },
	  },
	  order = "0", group = "yi_engines", subgroup = "yie-processed",
	},

	-- gearbox
	{
	  type = "recipe",
	  name = "y-gearbox-power-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "y-iron-case" , amount = 1.0, },
		{ type = "item", name = "iron-gear-wheel" , amount = 2.0, },
		{ type = "item", name = "y-hc-ribb" , amount = 3.0, },
	  },
	  results = {
		{ type = "item", name = "y-gearbox-power", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/gearbox-icon.png",
	  order = "1", group = "yi_engines", subgroup = "yie-engines",
	},

	-- shaft-blue
	{
	  type = "recipe",
	  name = "y-shaft-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y-mftrans-shaft", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/shaft-pipe/shaft-icon.png",
	  order = "1a", group = "yi_engines", subgroup = "yie-parts",
	},

	-- Underground-Shaft
	{
	  type = "recipe",
	  name = "y-shaft-ground-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 10.0, },
	  },
	  results = {
		{ type = "item", name = "y-mftrans-shaft-ground", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/shaft-pipe/shaft-ground-icon.png",
	  order = "1b", group = "yi_engines", subgroup = "yie-parts",
	},

	-- Shaft-Red
	{
	  type = "recipe",
	  name = "y-shaft-r-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y-mftrans-shaft-red", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/shaft-pipe/shaft-r-icon.png",
	  order = "1c", group = "yi_engines", subgroup = "yie-parts",
	},

	-- Underground-Shaft-Red
	{
	  type = "recipe",
	  name = "y-shaft-ground-r-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 10.0, },
	  },
	  results = {
		{ type = "item", name = "y-mftrans-shaft-ground-red", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/shaft-pipe/shaft-ground-r-icon.png",
	  order = "1d", group = "yi_engines", subgroup = "yie-parts",
	},

	-- Little Stirling Engine
	{
	  type = "recipe",
	  name = "y-1stirling-engine-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "y-hc-ribb" , amount = 2.0, },
		{ type = "item", name = "iron-gear-wheel" , amount = 3.0, },
		{ type = "item", name = "engine-unit" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y-1stirling-engine", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/energy2/ast-icon.png",
	  order = "a", group = "yi_engines", subgroup = "yie-engines",
	},

	-- iron case
	{
	  type = "recipe",
	  name = "y-iron-case-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 6.0, },
	  },
	  results = {
		{ type = "item", name = "y-iron-case", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/caseing-icon.png",
	  order = "a", group = "yi_engines", subgroup = "yie-engines",
	},

	-- craft water-pump
	{
	  type = "recipe",
	  name = "y-mwater-pump-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-gear-wheel" , amount = 4.0, },
		{ type = "item", name = "pipe" , amount = 3.0, },
	  },
	  results = {
		{ type = "item", name = "y-mwater-pump", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/pump-icon.png",
	  order = "a", group = "yi_engines", subgroup = "yie-engines",
	},

	-- quantrinum-charge
	{
	  type = "recipe",
	  name = "y-quantrinum-charge-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 30.00,
	  ingredients = {
		{ type = "item", name = "y-iron-case" , amount = 1.0, },
		{ type = "item", name = "y-quantrinum" , amount = 3.0, },
	  },
	  results = {
		{ type = "item", name = "y-quantrinum-charge", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/quantrinum-32.png",
	  order = "a", group = "yi_engines", subgroup = "yie-processed",
	},

	-- removes pollution, add waste
	{
	  type = "recipe",
	  name = "y-rmvpol-recipe",
	  category = "yrcat-eg4", -- stirlings
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 60.0, },
		{ type = "fluid", name = "y-mechanical-force" , amount = 0.2, },
	  },
	  results = {
		{ type = "item", name = "y-pol-waste", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/hot-air.png",
	  order = "a", group = "yi_engines", subgroup = "yie-processed",
	},

	-- process corn-oil to lubricant
	{
	  type = "recipe",
	  name = "ye-cf2lubricant-recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "fluid", name = "ye_cornoil" , amount = 30.0, },
	  },
	  results = {
		{ type = "fluid", name = "lubricant", amount = 10.0, },
	  },
	  icon = "__yi_engines__/graphics/lubricant.png",
	  order = "a", group = "yi_engines", subgroup = "yie-processed",
	},

	-- growing corn
	{
	  type = "recipe",
	  name = "ye-growcorn-recipe",
	  category = "yrcat-farm", -- farm itself
	  enabled = "true",
	  energy_required = 300.00,
	  ingredients = {
		{ type = "item", name = "ye_seed_a" , amount = 1.0, },
		{ type = "fluid", name = "water" , amount = 500.0, },
	  },
	  results = {
		{ type = "item", name = "ye_corn_a", amount = 500.0, },
	  },
	  icon = "__yi_engines__/graphics/corn-icon.png",
	  order = "a", group = "yi_engines", subgroup = "yie-processed",
	},

	-- core seed
	{
	  type = "recipe",
	  name = "ye-seed_a1-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "raw-wood" , amount = 50.0, },
	  },
	  results = {
		{ type = "item", name = "ye_seed_a", amount = 1.0, },
	  },
	  order = "a", group = "yi_engines", subgroup = "yie-engines",
	},

	-- core seed
	{
	  type = "recipe",
	  name = "ye-seed_a2-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "ye_corn_a" , amount = 20.0, },
	  },
	  results = {
		{ type = "item", name = "ye_seed_a", amount = 1.0, },
	  },
	  order = "a", group = "yi_engines", subgroup = "yie-engines",
	},

	-- Farm itself
	{
	  type = "recipe",
	  name = "ye_farm_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "stone-brick" , amount = 12.0, },
		{ type = "item", name = "pipe" , amount = 2.0, },
		{ type = "item", name = "y-iron-case" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_farm", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/farm-icon.png",
	  order = "a", group = "yi_engines", subgroup = "yie-engines",
	},

	-- small e-motor
	{
	  type = "recipe",
	  name = "y-emotor-s-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "copper-cable" , amount = 2.0, },
		{ type = "item", name = "y-iron-case" , amount = 1.0, },
		{ type = "item", name = "y-winding" , amount = 1.0, },
		{ type = "item", name = "y-hc-ribb" , amount = 2.0, },
	  },
	  results = {
		{ type = "item", name = "y-emotor-s", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/e-motor-icon.png",
	  order = "c", group = "yi_engines", subgroup = "yie-engines",
	},

	-- Electric Air-Heater
	{
	  type = "recipe",
	  name = "y-electric-air-heater-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "engine-unit" , amount = 1.0, },
		{ type = "item", name = "iron-gear-wheel" , amount = 2.0, },
		{ type = "item", name = "copper-cable" , amount = 7.0, },
		{ type = "item", name = "y-hc-ribb" , amount = 4.0, },
	  },
	  results = {
		{ type = "item", name = "y-electric-air-heater", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/energy2/air-heater-icon.png",
	  order = "d", group = "yi_engines", subgroup = "yie-engines",
	},

	-- Heat-Cool-Rib-Block
	{
	  type = "recipe",
	  name = "y-hc-ribb-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "copper-plate" , amount = 2.0, },
		{ type = "item", name = "iron-plate" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y-hc-ribb", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/heat-pipe.png",
	  order = "i1", group = "yi_engines", subgroup = "yie-parts",
	},

	-- Motor Wicklung
	{
	  type = "recipe",
	  name = "y-winding-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 2.0, },
		{ type = "item", name = "copper-cable" , amount = 14.0, },
	  },
	  results = {
		{ type = "item", name = "y-winding", amount = 3.0, },
	  },
	  icon = "__yi_engines__/graphics/winding-icon.png",
	  order = "i1", group = "yi_engines", subgroup = "yie-parts",
	},

})