-- Reload recipes and technologies
for i, player in ipairs(game.players) do
  player.force.reset_recipes()
  player.force.reset_technologies()
end

for index, force in pairs(game.forces) do
  -- Generate technology and recipe tables
  local tech = force.technologies
  local recipes = force.recipes
 
  -- Unlock researched recipes
  if tech["alien-technology"] and tech["alien-technology"].researched then
  
    if recipes["superconductor"] then
      recipes["superconductor"].enabled = true
    end
    if recipes["superconducting-wire"] then
      recipes["superconducting-wire"].enabled = true
    end
    if recipes["alien-artifact"] then
      recipes["alien-artifact"].enabled = true
    end
  end
end