game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["advanced-electronics"].researched then
    force.recipes["advanced-circuit"].enabled = true
  end

  if force.technologies["advanced-electronics-2"].researched then
    force.recipes["processing-unit"].enabled = true
  end
  force.recipes["basic-circuit-board"].enabled = false
  force.recipes["electronic-circuit-board"].enabled = false
  force.recipes["electronic-processing-board"].enabled = false

  if force.recipes["advanced-processing-unit"] then
    if force.technologies["advanced-electronics-3"].researched then
      force.recipes["advanced-processing-unit"].enabled = true
    end
    force.recipes["electronic-processing-board-2"].enabled = false
  end
end
