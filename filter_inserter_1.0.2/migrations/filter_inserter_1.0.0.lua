for i, player in ipairs(game.players) do
	player.force.reset_recipes()
	player.force.reset_technologies()
end

for index, force in pairs(game.forces) do
  local tech = force.technologies
  local recipes = force.recipes
 
  if tech["electronics"] and tech["electronics"].researched then
    if recipes["filter-inserter"] then
      recipes["filter-inserter"].enabled = true
    end
	if recipes["filter-inserter-left"] then
      recipes["filter-inserter-left"].enabled = true
    end
	if recipes["filter-inserter-right"] then
      recipes["filter-inserter-right"].enabled = true
    end
  end
end