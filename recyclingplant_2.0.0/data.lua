require "util"

require("base-alter")
require("prototypes.recyclingplant")

taboo_categories =
{
    ["liquid-handler"] = true,
    ["lava-heater"] = true,
    ["lava-cooler"] = true,
    ["forge"] = true,
    ["smelting"] = true,
    ["chemical-furnace"] = true,
    ["mixing-furnace"] = true,
    ["blast-furnace"] = true,
}

function createRecycleRecipe(old)
    local new =
    {
        type = "recipe",
        name = "rec-",
        icon = "__recyclingplant__/graphics/items/recyclingplant.png",
        category = "recycling",
        subgroup = "i-recyclingplant",
        hidden = "true",
        energy_required = 1,
        ingredients = {},
        results = {}
    }
    
    if old.subgroup ~= nil then
        if string.find(old.subgroup, "liquid-crafting-") ~= nil then
            return nil
        end
    end
    
    if (taboo_categories[old.category] ~= nil)
    or (old.ingredients == nil)
    or (old.ingredients == {})
    or (#old.ingredients == 0) then
        return nil
    end
    
    new.name = "rec-" .. old.name
    if old.results ~= nil then
        new.ingredients = table.deepcopy(old.results)
        for _, ingredient in pairs(new.ingredients) do
            -- no recycling for random recipes
            if (ingredient.probability ~= nil) or (ingredient.amount == nil) then
                return nil
            end
            -- bob electric override
            if ingredient[1] == "basic-circuit-board" then ingredient[1] = "electronic-circuit" end
            if ingredient.name == "basic-circuit-board" then ingredient.name = "electronic-circuit" end
            if ingredient[1] == "electronic-circuit-board" then ingredient[1] = "advanced-circuit" end
            if ingredient.name == "electronic-circuit-board" then ingredient.name = "advanced-circuit" end
            if ingredient[1] == "electronic-processing-board" then ingredient[1] = "processing-unit" end
            if ingredient.name == "electronic-processing-board" then ingredient.name = "processing-unit" end

            if data.raw.item["advanced-processing-unit"] then
                if ingredient[1] == "electronic-processing-board-2" then ingredient[1] = "advanced-processing-unit" end
                if ingredient.name == "electronic-processing-board-2" then ingredient.name = "advanced-processing-unit" end
            end
        end
    else
        local amt = old.result_count
        if amt == nil then amt = 1 end
        local temp_ingredient = {old.result, amt}
        -- bob electric override
		if temp_ingredient[1] == "basic-circuit-board" then temp_ingredient[1] = "electronic-circuit" end
		if temp_ingredient.name == "basic-circuit-board" then temp_ingredient.name = "electronic-circuit" end
		if temp_ingredient[1] == "electronic-circuit-board" then temp_ingredient[1] = "advanced-circuit" end
		if temp_ingredient.name == "electronic-circuit-board" then temp_ingredient.name = "advanced-circuit" end
		if temp_ingredient[1] == "electronic-processing-board" then temp_ingredient[1] = "processing-unit" end
		if temp_ingredient.name == "electronic-processing-board" then temp_ingredient.name = "processing-unit" end

		if data.raw.item["advanced-processing-unit"] then
			if temp_ingredient[1] == "electronic-processing-board-2" then temp_ingredient[1] = "advanced-processing-unit" end
			if temp_ingredient.name == "electronic-processing-board-2" then temp_ingredient.name = "advanced-processing-unit" end
		end
        
        table.insert(new.ingredients, temp_ingredient)
    end
    new.results = table.deepcopy(old.ingredients)
    -- bob electric override
    for _, result in pairs(new.results) do
		if result[1] == "basic-circuit-board" then result[1] = "electronic-circuit" end
		if result.name == "basic-circuit-board" then result.name = "electronic-circuit" end
		if result[1] == "electronic-circuit-board" then result[1] = "advanced-circuit" end
		if result.name == "electronic-circuit-board" then result.name = "advanced-circuit" end
		if result[1] == "electronic-processing-board" then result[1] = "processing-unit" end
		if result.name == "electronic-processing-board" then result.name = "processing-unit" end

		if data.raw.item["advanced-processing-unit"] then
			if result[1] == "electronic-processing-board-2" then result[1] = "advanced-processing-unit" end
			if result.name == "electronic-processing-board-2" then result.name = "advanced-processing-unit" end
		end
    end
    new.energy_required = old.energy_required
    return new
end

-- Temporary table to hold new recipes
-- To prevent altering table we are reading from
new_recs = {}

-- Create new recipes
for _, rec in pairs (data.raw.recipe) do
    table.insert(new_recs, createRecycleRecipe(rec))
end

-- insert new recipes into data
for _, new_recipe in pairs (new_recs) do
    if (new_recipe ~= nil) then
        data:extend({new_recipe})
    end
end