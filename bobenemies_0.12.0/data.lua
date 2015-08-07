require("config")

if EnableSmallArtifacts == true then
  require("prototypes.small-alien-artifact")
end

if EnableNewArtifacts == true then
  require("prototypes.new-alien-artifact")
  if EnableSmallArtifacts == true then
    require("prototypes.new-small-alien-artifact")
  end
end


require("prototypes.entities")
require("prototypes.projectiles")
require("prototypes.enemies")

