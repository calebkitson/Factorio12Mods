game.regenerateentity("tin-ore")
game.regenerateentity("zinc-ore")
game.regenerateentity("tungsten-ore")
game.regenerateentity("silver-ore")
game.regenerateentity("gold-ore")
game.regenerateentity("bauxite-ore")
game.regenerateentity("lead-ore")
game.regenerateentity("rutile-ore")
game.regenerateentity("quartz")

for i, player in ipairs(game.players) do
  player.print("Added new ore types to the map.")
end


