data:extend(
{
	-- labor-path
	{
		type = "recipe",
		name = "y_path_labor_recipe",
		energy_required = 2,
		enabled = true,		
		ingredients = {{"iron-plate", 4},{"y-refined-yres2", 2}, {"y-crystal2", 1},},
		result= "y_path_labor",
		result_count = 12
	},

	{
		type = "item",
		name = "y_path_labor",
		icon = "__Yuoki__/graphics/entity/path_slag/labor_icon.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y_floor",
		order = "b[concrete]",
		stack_size = 500,
		place_as_tile =
		{
			result = "y_path_labor",
			condition_size = 3,
			condition = { "water-tile" }
		}
	},
	
	{
		type = "tile",
		name = "y_path_labor",
		needs_correction = false,
		minable = {hardness = 0.2, mining_time = 0.5, result = "y_path_labor"},
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		collision_mask = {"ground-tile"},
		walking_speed_modifier = 1.4,
		layer = 61,
		variants =
		{
			main =
			{
				{
					picture = "__Yuoki__/graphics/entity/path_slag/floor004-32.png",
					count = 1,
					size = 1
				},
				{
					picture = "__Yuoki__/graphics/entity/path_slag/lab_floor_64.png",
					count = 1,
					size = 2,
					probability = 0.39,
				},
				{
					picture = "__Yuoki__/graphics/entity/path_slag/lab_floor001-128.png",
					count = 1,
					size = 4,
					probability = 1,
				},
			},
			inner_corner =
			{
				picture = "__Yuoki__/graphics/entity/path_slag/concrete-inner-corner.png",
				count = 8
			},
			outer_corner =
			{
				picture = "__Yuoki__/graphics/entity/path_slag/concrete-outer-corner.png",
				count = 8
			},
			side =
			{
				picture = "__Yuoki__/graphics/entity/path_slag/concrete-side.png",
				count = 8
			},
			u_transition =
			{
				picture = "__Yuoki__/graphics/entity/path_slag/concrete-u.png",
				count = 8
			},
			o_transition =
			{
				picture = "__Yuoki__/graphics/entity/path_slag/concrete-o.png",
				count = 1
			}
		},
		walking_sound =
		{
			{
				filename = "__base__/sound/walking/concrete-01.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-02.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-03.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-04.ogg",
				volume = 1.2
			}
		},
		map_color={r=90, g=70, b=50},
		ageing=0,
		vehicle_friction_modifier = stone_path_vehicle_speed_modifier
	},
	
	-- vents-path
	{
		type = "recipe",
		name = "y_path_science_recipe",
		energy_required = 2,
		enabled = true,		
		ingredients = {{"iron-plate", 4}, {"y-refined-yres1", 1},},
		result= "y_path_science",
		result_count = 8
	},

	{
		type = "item",
		name = "y_path_science",
		icon = "__Yuoki__/graphics/entity/path_slag/vent_icon.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y_floor",
		order = "b[concrete]",
		stack_size = 500,
		place_as_tile =
		{
			result = "y_path_science",
			condition_size = 3,
			condition = { "water-tile" }
		}
	},
	
	{
		type = "tile",
		name = "y_path_science",
		needs_correction = false,
		minable = {hardness = 0.2, mining_time = 0.5, result = "y_path_science"},
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		collision_mask = {"ground-tile"},
		walking_speed_modifier = 1.4,
		layer = 61,
		variants =
		{
			main =
			{
				{
					picture = "__Yuoki__/graphics/entity/path_slag/vent003-32.png",
					count = 1,
					size = 1
				},
				{
					picture = "__Yuoki__/graphics/entity/path_slag/vent004-64.png",
					count = 1,
					size = 2,
					probability = 0.4,
				},
				{
					picture = "__Yuoki__/graphics/entity/path_slag/vent001-128.png",
					count = 1,
					size = 4,
					probability = 0.2,
				},
			},
			inner_corner =
			{
				picture = "__Yuoki__/graphics/entity/path_slag/concrete-inner-corner.png",
				count = 8
			},
			outer_corner =
			{
				picture = "__Yuoki__/graphics/entity/path_slag/concrete-outer-corner.png",
				count = 8
			},
			side =
			{
				picture = "__Yuoki__/graphics/entity/path_slag/concrete-side.png",
				count = 8
			},
			u_transition =
			{
				picture = "__Yuoki__/graphics/entity/path_slag/concrete-u.png",
				count = 8
			},
			o_transition =
			{
				picture = "__Yuoki__/graphics/entity/path_slag/concrete-o.png",
				count = 1
			}
		},
		walking_sound =
		{
			{
				filename = "__base__/sound/walking/concrete-01.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-02.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-03.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-04.ogg",
				volume = 1.2
			}
		},
		map_color={r=90, g=70, b=50},
		ageing=0,
		vehicle_friction_modifier = stone_path_vehicle_speed_modifier
	},

	-- slag-path
	{
		type = "recipe",
		name = "y_path_slag_recipe",
		energy_required = 2,
		enabled = true,		
		ingredients = {{"stone", 2}, {"y-slag", 6},},
		result= "y_path_slag",
		result_count = 4
	},

	{
		type = "item",
		name = "y_path_slag",
		icon = "__Yuoki__/graphics/entity/path_slag/pslag_icon.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y_floor",
		order = "b[concrete]",
		stack_size = 500,
		place_as_tile =
		{
			result = "y_path_slag",
			condition_size = 3,
			condition = { "water-tile" }
		}
	},
	
	{
		type = "tile",
		name = "y_path_slag",
		needs_correction = false,
		minable = {hardness = 0.2, mining_time = 0.5, result = "y_path_slag"},
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		collision_mask = {"ground-tile"},
		walking_speed_modifier = 1.4,
		layer = 61,
		variants =
		{
			main =
			{
				{
					picture = "__Yuoki__/graphics/entity/path_slag/slag1.png",
					count = 16,
					size = 1
				},
				{
					picture = "__Yuoki__/graphics/entity/path_slag/slag2.png",
					count = 4,
					size = 2,
					probability = 0.39,
				},
				{
					picture = "__Yuoki__/graphics/entity/path_slag/slag4.png",
					count = 4,
					size = 4,
					probability = 1,
				},
			},
			inner_corner =
			{
				picture = "__Yuoki__/graphics/entity/path_slag/concrete-inner-corner.png",
				count = 8
			},
			outer_corner =
			{
				picture = "__Yuoki__/graphics/entity/path_slag/concrete-outer-corner.png",
				count = 8
			},
			side =
			{
				picture = "__Yuoki__/graphics/entity/path_slag/concrete-side.png",
				count = 8
			},
			u_transition =
			{
				picture = "__Yuoki__/graphics/entity/path_slag/concrete-u.png",
				count = 8
			},
			o_transition =
			{
				picture = "__Yuoki__/graphics/entity/path_slag/concrete-o.png",
				count = 1
			}
		},
		walking_sound =
		{
			{
				filename = "__base__/sound/walking/concrete-01.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-02.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-03.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-04.ogg",
				volume = 1.2
			}
		},
		map_color={r=90, g=70, b=50},
		ageing=0,
		vehicle_friction_modifier = stone_path_vehicle_speed_modifier
	},
	
})
