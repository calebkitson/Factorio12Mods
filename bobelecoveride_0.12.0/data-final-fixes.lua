for i, recipe in pairs(data.raw.recipe) do
	for j, ingredient in pairs(recipe.ingredients) do
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
end


data.raw.item["basic-circuit-board"] = nil
data.raw.item["electronic-circuit-board"] = nil
data.raw.item["electronic-processing-board"] = nil

if data.raw.item["advanced-processing-unit"] then
  data.raw.item["electronic-processing-board-2"] = nil
end
