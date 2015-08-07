--Adding Smart Inserter to higher Technology
table.insert(data.raw.technology["circuit-network"].effects,{type = "unlock-recipe", recipe = "smart-inserter"})

--Removing Smart Inserter from Lower Technology
----Thanks kds71 for help with code----
for i = 1, #data.raw.technology["electronics"].effects do
    effect = data.raw.technology["electronics"].effects[i]
    if effect.type == "unlock-recipe" and effect.recipe == "smart-inserter" then
        index = i
    end
end

table.remove(data.raw.technology["electronics"].effects, index)
