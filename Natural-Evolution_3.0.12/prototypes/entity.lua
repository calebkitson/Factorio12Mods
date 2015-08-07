data:extend({
  {
    type = "radar",
    name = "TerraformingStation",
    icon = "__Natural-Evolution__/graphics/icons/TerraformingStation.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "TerraformingStation"},
    max_health = 300,
    corpse = "big-remnants",
	resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.3, -1.7}, {3.0, 1.5}},
    selection_box = {{-1.3, -1.7}, {3.0, 1.5}},
    energy_per_sector = "10MJ",
    max_distance_of_nearby_sector_revealed = 4,
    max_distance_of_sector_revealed = 4,
    energy_per_nearby_scan = "250kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "200kW",
    pictures =
    {
      filename = "__Natural-Evolution__/graphics/entity/TerraformingStation.png",
      priority = "low",
      width = 153,
      height = 131,
      axially_symmetrical = false,
      apply_projection = false,
      direction_count = 64,
      line_length = 8,
      shift = {0.875, -0.35}
    },
  },
  
  --[[
  {
    type = "radar",
    name = "AlienControlStation",
    icon = "__Natural-Evolution__/graphics/icons/AlienControlStation.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "AlienControlStation"},
    max_health = 250,
    corpse = "big-remnants",
	--dying_explosion = "huge-explosion",
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_per_sector = "20KJ",
    max_distance_of_nearby_sector_revealed = 5,
    max_distance_of_sector_revealed = 15,
    energy_per_nearby_scan = "500J",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "600W",
	pictures =
    {
      filename = "__Natural-Evolution__/graphics/entity/AlienControlStation.png",
      priority = "low",
      width = 176,
      height = 186,
	  axially_symmetrical = false,
      apply_projection = false,
      direction_count = 32,
      line_length = 6,
      shift = {1.2, 0.5}
    },
  },
  ]]
})
