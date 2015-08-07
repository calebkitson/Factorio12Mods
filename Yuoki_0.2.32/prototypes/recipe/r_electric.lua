data:extend(
{	
	{
		type = "recipe",
		name = "y-conductive-wire-1-recipe",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-orange-stuff", 1}, {"copper-plate", 1}, }, 
		result = "y-conductive-wire-1",
		result_count = 4,
		order="p-w-a",	
	},	
	{
		type = "recipe",
		name = "y-conductive-coil-1-recipe",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y-orange-stuff", 1}, {"iron-plate", 5}}, 
		result = "y-conductive-coil-1",
		result_count = 2,
		order="p-w-b",	
	},			
	{
		type = "recipe",
		name = "y-chip1-recipe",
		energy_required = 1.0,
		enabled = "true",
		ingredients = {{"electronic-circuit", 1}, {"y-orange-stuff", 1}, }, 
		result = "y-chip-1",
		result_count = 1,
		order="p-c-a",	
	},	
	{
		type = "recipe",
		name = "y-chip2-recipe",
		energy_required = 1.5,
		enabled = "true",
		ingredients = {{"advanced-circuit", 1}, {"y-orange-stuff", 2}, }, 
		result = "y-chip-2",
		result_count = 1,
		order="p-c-b",	
	},	
	
	-- new battery-concept from 215-0101
	-- basic-cell + combine cells
	
	-- basic cell empty
	{
		type = "recipe",
		name = "y-battery-singleuse1-recipe",		
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-crush-yres2", 3}, {"coal", 1}, {"iron-plate", 1} }, 
		result = "y-battery-single-use1",
		result_count = 3,
		order="p-b-a",	
	},	
	-- loaded cell
	{
		type = "recipe",
		name = "y-battery-singleuse2-recipe",		
		energy_required = 4.0,
		enabled = "true",		
		ingredients = {{"y-battery-single-use1", 1},}, 
		result = "y-battery-single-use2",
		result_count = 1,
		order="p-b-b",	
	},		
	-- block loaded cells
	{
		type = "recipe",
		name = "y-battery-single-use3-recipe",
		--category="crafting-with-fluid";
		energy_required = 4.0,
		enabled = "true",
		ingredients = {{"y-battery-single-use2", 2}, {"y-conductive-wire-1", 1 },}, 
		result = "y-battery-single-use3",
		result_count = 1,
		order="p-b-c",	
	},		
	
	--single-use-mod-batterys to standard-batterys
	{
		type = "recipe",
		name = "y-battery-rip1-recipe",		
		energy_required = 1.0,
		enabled = "true",
		ingredients = {{"y-battery-single-use1", 1},}, 
		result = "battery",
		result_count = 1,
	},	
	
	{
		type = "recipe",
		name = "y-substation-m-recipe",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"substation", 1}, {"y-conductive-wire-1", 6}, {"y-chip-1", 1}, {"y-unicomp-a2", 2}, },
		result = "y-substation-m",
		result_count = 1,
		order="e-e-a",	
	},	
	
	-- Tier 1 - Accumulators
	{
		type = "recipe",
		name = "y-accumulator-s-recipe",
		energy_required = 4.0, enabled = "true",
		ingredients = {{"y-battery-single-use3", 2}, {"copper-plate", 2}, {"electronic-circuit", 1}, {"iron-plate", 2},},
		result = "y-accumulator-s", result_count = 1,
		order="e-a-a-a",	
	},	
	{
		type = "recipe",
		name = "y-accumulator-m-recipe",
		energy_required = 6.0, enabled = "true",
		ingredients = {{"y-accumulator-s", 4}, {"copper-plate", 4}, {"electronic-circuit", 1}, {"iron-plate", 2}, },
		result = "y-accumulator-m", result_count = 1,
		order="e-a-a-b",	
	},	
	{
		type = "recipe",
		name = "y-accumulator-b-recipe",
		energy_required = 8.0, enabled = "true",
		ingredients = {{"y-accumulator-m", 2}, {"y-conductive-wire-1", 6}, {"advanced-circuit", 1}, {"steel-plate", 1},},
		result = "y-accumulator-b", result_count = 1,
		order="e-a-a-c",	
	},		
	
	-- Tier 1.5 - Accumulators
	{
		type = "recipe",
		name = "y-ups-flywheel-b-recipe",
		energy_required = 12.0, enabled = "true",
		ingredients = {{"y-accumulator-m", 2}, {"y-unicomp-a2", 20},},
		result = "y-ups-flywheel-b", result_count = 1,
		order="e-u",	
	},	
		
	-- Tier 2 - Accumulators
	--[[
	{
		type = "recipe",
		name = "y-accumulator-st2-recipe",
		energy_required = 4.0, enabled = "true",
		ingredients = {{"y-accumulator-s", 1}, {"y-conductive-wire-1", 4}, {"y-chip-2", 2}, {"y-unicomp-raw", 3}, {"y-crystal-cnd", 1},},
		result = "y-accumulator-s-t2", result_count = 1,
		order="e-a-b-a",	
	},	
	]]
	{
		type = "recipe",
		name = "y-accumulator-mt2-recipe",
		energy_required = 6.0, enabled = "true",
		ingredients = {{"y-accumulator-m", 1}, {"y-conductive-wire-1", 6}, {"y-chip-2", 6}, {"y-unicomp-raw", 9}, {"y-crystal-cnd", 1},},
		result = "y-accumulator-m-t2", result_count = 1,
		order="e-a-b-b",	
	},		
	{
		type = "recipe",
		name = "y-accumulator-bt2-recipe",
		energy_required = 8.0, enabled = "true",
		ingredients = {{"y-accumulator-b", 1}, {"y-conductive-wire-1", 10}, {"y-chip-2", 14}, {"y-unicomp-raw", 15}, {"y-crystal-cnd", 2},},
		result = "y-accumulator-b-t2", result_count = 1,
		order="e-a-b-c",	
	},		
	-- Tier 3 - Accumulators - AQE
	{
		type = "recipe",
		name = "y-accumulator-btx-recipe",
		category="yuoki-wonder-recipe";
		energy_required = 8.0, enabled = "true",
		ingredients = {{"y-accumulator-b-t2", 1}, {"alien-artifact", 4}, {"y-quantrinum", 2}},
		result = "y-accumulator-b-tx", result_count = 1,
		order="e-a-c-c",	
	},		
	-- Tier 4 - Accumulators - Crystal
	--[[
	{
		type = "recipe",
		name = "y-accumulator-crystal-m-recipe",
		category="yuoki-wonder-recipe";
		energy_required = 8.0, enabled = "true",
		ingredients = {{"y-accumulator-m-t2", 1}, {"science-pack-3", 5}, {"y-infused-uca2", 4},},
		result = "y-accumulator-crystal-m", result_count = 1,
		order="e-a-d-b",	
	},	
	]]


	
})