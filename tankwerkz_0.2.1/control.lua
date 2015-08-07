
for index, force in pairs(game.forces) do
  if force.technologies["tanks"].researched then
    force.recipes["light-tank"].enabled=true
    -- force.technologies["light-tanks"].researched=true
    force.reset_technologies()
  end
end
