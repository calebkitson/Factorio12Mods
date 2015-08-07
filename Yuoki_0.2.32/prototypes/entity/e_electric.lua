data:extend(
{
		
	{
		type = "electric-pole",
		name = "y-substation-m",
		icon = "__Yuoki__/graphics/icons/elec-mpole-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-substation-m"},
		max_health = 250,
		corpse = "medium-remnants", resistances = {{type = "fire",percent = 90}},
		collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
		selection_box = {{-1, -1}, {1, 1}},
		drawing_box = {{-1, -1.5}, {1, 1}},
		maximum_wire_distance = 28,
		supply_area_distance = 10,
		pictures =
		{
			filename = "__Yuoki__/graphics/entity/elec-sub-m1.png",
			priority = "high",
			width = 72,
			height = 170,
			axially_symmetrical = false,
			direction_count = 4,
			shift = {0.12, -1.66}
		},
		connection_points =
		{
			{
				shadow =
				{
					copper = {1.9, -0.6},
					green = {1.3, -0.6},
					red = {2.65, -0.6}
				},
				wire =
				{
					copper = {0, -4},
					green = {-0.85,-2.65},
					red = {0.35,-2.65}
				}
			},
			{
				shadow =
				{
					copper = {1.9, -0.6},
					green = {1.2, -0.8},
					red = {2.5, -0.35}
				},
				wire =
				{
					copper = {0, -4},
					green = {-0.67,-3},
					red = {0.17,-2.47}
				}
			},
			{
				shadow =
				{
					copper = {1.9, -0.6},
					green = {1.9, -0.9},
					red = {1.9, -0.3}
				},
				wire =
				{
					copper = {0, -4},
					green = {-0.23,-3.2},
					red = {-0.23,-2.35}
				}
			},
			{
				shadow =
				{
					copper = {1.8, -0.7},
					green = {1.3, -0.6},
					red = {2.4, -1.15}
				},
				wire =
				{
					copper = {0, -4},
					green = {-0.62,-2.45},
					red = {0.25,-2.98}
				}
			}
		},
		copper_wire_picture =
		{
			filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
			priority = "high",
			width = 224,
			height = 46
		},
		green_wire_picture =
		{
			filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
			priority = "high",
			width = 224,
			height = 46
		},
		radius_visualisation_picture =
		{
			filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
			width = 16,
			height = 16
		},
		red_wire_picture =
		{
			filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
			priority = "high",
			width = 224,
			height = 46
		},
		wire_shadow_picture =
		{
			filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
			priority = "high",
			width = 224,
			height = 46
		}
	},

	{
		type = "accumulator",
		name = "y-accumulator-s",
		icon = "__Yuoki__/graphics/gfx/small_accu_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-accumulator-s"},
		max_health = 150,
		corpse = "medium-remnants",
		collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "5MJ",
			usage_priority = "terciary",
			input_flow_limit = "80kW",
			output_flow_limit = "80kW"
		},
		picture =
		{
			filename = "__Yuoki__/graphics/gfx/small_accu_inaktiv.png",
			priority = "extra-high",
			width = 34,
			height = 52,
			shift = {0.0, -0.5}
		},
		charge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/small_accu_anim.png",
			width = 34,
			height = 52,
			line_length = 13,
			frame_count = 13,
			shift = {0.0, -0.5},
			animation_speed = 0.5
		},
		charge_cooldown = 30,
		charge_light = {intensity = 0.3, size = 6},
		discharge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/small_accu_anim.png",
			width = 34,
			height = 52,
			line_length = 13,
			frame_count = 13,
			shift = {0.0, -0.5},
			animation_speed = 0.5
		},
		discharge_cooldown = 60,
		discharge_light = {intensity = 0.7, size = 6},
		order="s[accu]-t1",
	},  
	{
		type = "accumulator",
		name = "y-accumulator-m",
		icon = "__Yuoki__/graphics/gfx/medium_accu_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-accumulator-m"},
		max_health = 250,
		corpse = "medium-remnants",
		collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
		selection_box = {{-1, -1}, {1, 1}},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "20MJ",
			usage_priority = "terciary",
			input_flow_limit = "300kW",
			output_flow_limit = "300kW"
		},
		picture =
		{
			filename = "__Yuoki__/graphics/gfx/accu_m_neutral.png",
			priority = "extra-high",
			width = 90,
			height = 100,
			shift = {0, -0.4}
		},
		charge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/accu_m_charge.png",
			width = 90,
			height = 100,
			line_length = 8,
			frame_count = 8,
			shift = {0, -0.4},
			animation_speed = 0.2,
		},
		charge_cooldown = 30,
		charge_light = {intensity = 0.3, size = 11},
		discharge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/accu_m_discharge.png",
			width = 90,
			height = 100,
			line_length = 8,
			frame_count = 8,
			shift = {0, -0.4},
			animation_speed = 0.2,
		},
		discharge_cooldown = 60,
		discharge_light = {intensity = 0.7, size = 11},
		order="s[accu]-t1",
	},  
	{
		type = "accumulator",
		name = "y-accumulator-b",
		icon = "__Yuoki__/graphics/gfx/accu_b_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-accumulator-b"},
		max_health = 300,
		corpse = "medium-remnants",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "45MJ",
			usage_priority = "terciary",
			input_flow_limit = "450kW",
			output_flow_limit = "900kW"
		},
		picture =
		{
			filename = "__Yuoki__/graphics/gfx/accu_b_idle-e.png",
			priority = "extra-high",
			width = 160,
			height = 130,
			shift = {0.7, -0.2}
		},
		charge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/accu_b_load-e.png",
			width = 160,
			height = 130,
			frame_count=1,
			shift = {0.7, -0.2},			
			--animation_speed = 0.2,
		},
		charge_cooldown = 30,
		charge_light = {intensity = 0.3, size = 15},
		discharge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/accu_b_unload-e.png",
			width = 160,
			height = 130,
			frame_count=1,
			shift = {0.7, -0.2},
			--animation_speed = 0.2,
		},
		discharge_cooldown = 60,
		discharge_light = {intensity = 0.7, size = 15},
		order="s[accu]-t1",
	},  

	-- tier 1.5		
	{
		type = "accumulator",
		name = "y-ups-flywheel-b",
		icon = "__Yuoki__/graphics/gfx/accflywheel_b_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-ups-flywheel-b"},
		max_health = 250,
		corpse = "medium-remnants",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "25MJ",
			usage_priority = "terciary",
			input_flow_limit = "300kW",
			output_flow_limit = "1500kW",
		},
		picture =
		{
			filename = "__Yuoki__/graphics/gfx/accflywheel_bn_idle.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			shift = {0.5, -0.5}
		},
		charge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/accflywheel_bn_load.png",
			width = 128,
			height = 128,
			frame_count=1,
			shift = {0.5, -0.5}
			--animation_speed = 0.2,
		},
		charge_cooldown = 30,
		charge_light = {intensity = 0.3, size = 15},
		discharge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/accflywheel_bn_unload.png",
			width = 128,
			height = 128,
			frame_count=1,
			shift = {0.5, -0.5}
			--animation_speed = 0.2,
		},
		discharge_cooldown = 60,
		discharge_light = {intensity = 0.7, size = 15},
		order="s[accu]-tx",
	},  
	
	-- tier 2
	{
		type = "accumulator",
		name = "y-accumulator-s-t2",
		icon = "__Yuoki__/graphics/gfx/scd-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-accumulator-s-t2"},
		max_health = 150,
		corpse = "medium-remnants",
		collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "3.5MJ",
			usage_priority = "terciary",
			input_flow_limit = "150kW",
			output_flow_limit = "150kW"
		},
		picture =
		{
			filename = "__Yuoki__/graphics/gfx/scd-idle-e.png",
			priority = "extra-high",
			width = 48,
			height = 52,
			shift = {0.25, -0.3}
		},
		charge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/scd_load-e.png",
			width = 48,
			height = 52,
			line_length = 1,
			frame_count = 1,
			shift = {0.25, -0.3},
			--animation_speed = 0.5
		},
		charge_cooldown = 30,
		charge_light = {intensity = 0.3, size = 6},
		discharge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/scd-unload-e.png",
			width = 48,
			height = 52,
			line_length = 1,
			frame_count = 1,
			shift = {0.25, -0.3},
			--animation_speed = 0.5
		},
		discharge_cooldown = 60,
		discharge_light = {intensity = 0.7, size = 6},
		order="s[accu]-t2",
	},  
		
	{
		type = "accumulator",
		name = "y-accumulator-m-t2",
		icon = "__Yuoki__/graphics/gfx/mcd-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-accumulator-m-t2"},
		max_health = 250,
		corpse = "medium-remnants",
		collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
		selection_box = {{-1, -1}, {1, 1}},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "30MJ",
			usage_priority = "terciary",
			input_flow_limit = "600kW",
			output_flow_limit = "400kW"
		},
		picture =
		{
			filename = "__Yuoki__/graphics/gfx/mcd-idle-e.png",
			priority = "extra-high",
			width = 100,
			height = 100,
			shift = {0.35, -0.4}
		},
		charge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/mcd-load-e.png",
			width = 100,
			height = 100,
			line_length = 1,
			frame_count = 1,
			shift = {0.35, -0.4},
			--animation_speed = 0.2,
		},
		charge_cooldown = 30,
		charge_light = {intensity = 0.3, size = 11},
		discharge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/mcd-unload-e.png",
			width = 100,
			height = 100,
			line_length = 1,
			frame_count = 1,
			shift = {0.35, -0.4},
			--animation_speed = 0.2,
		},
		discharge_cooldown = 60,
		discharge_light = {intensity = 0.7, size = 11},
		order="s[accu]-t2",
	},  
	{
		type = "accumulator",
		name = "y-accumulator-b-t2",
		icon = "__Yuoki__/graphics/gfx/bcd-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-accumulator-b-t2"},
		max_health = 300,
		corpse = "medium-remnants",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "70MJ",
			usage_priority = "terciary",
			input_flow_limit = "1400kW",
			output_flow_limit = "950kW"
		},
		picture =
		{
			filename = "__Yuoki__/graphics/gfx/bcd-idle-e.png",
			priority = "extra-high",
			width = 160,
			height = 140,
			shift = {0.7, -0.3}
		},
		charge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/bcd-load-e.png",
			width = 160,
			height = 140,
			frame_count=1,
			shift = {0.7, -0.3},			
			--animation_speed = 0.2,
		},
		charge_cooldown = 30,
		charge_light = {intensity = 0.3, size = 15},
		discharge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/bcd-unload-e.png",
			width = 160,
			height = 140,
			frame_count=1,
			shift = {0.7, -0.3},
			--animation_speed = 0.2,
		},
		discharge_cooldown = 60,
		discharge_light = {intensity = 0.7, size = 15},
		order="s[accu]-t2",
	},  
	{
		type = "accumulator",
		name = "y-accumulator-b-tx",
		icon = "__Yuoki__/graphics/gfx/aqe-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-accumulator-b-tx"},
		max_health = 300,
		corpse = "medium-remnants",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "180MJ",
			usage_priority = "terciary",
			input_flow_limit = "1800kW",
			output_flow_limit = "900kW"
		},
		picture =
		{
			filename = "__Yuoki__/graphics/gfx/aqe-idle-e.png",
			priority = "extra-high",
			width = 158,
			height = 130,
			shift = {0.75, -0.2}
		},
		charge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/aqe-load-e.png",
			width = 158,
			height = 130,
			frame_count=1,
			shift = {0.75, -0.2},			
			--animation_speed = 0.2,
		},
		charge_cooldown = 30,
		charge_light = {intensity = 0.3, size = 15},
		discharge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/aqe-unload-e.png",
			width = 158,
			height = 130,
			frame_count=1,
			shift = {0.75, -0.2},
			--animation_speed = 0.2,
		},
		discharge_cooldown = 60,
		discharge_light = {intensity = 0.7, size = 15},
		order="s[accu]-tx",
	},  
	
	{
		type = "accumulator",
		name = "y-accumulator-crystal-m",
		icon = "__Yuoki__/graphics/gfx/accu_crystal-m-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-accumulator-crystal-m"},
		max_health = 250,
		corpse = "medium-remnants",
		collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
		selection_box = {{-1, -1}, {1, 1}},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "400MJ",
			usage_priority = "terciary",
			input_flow_limit = "1500kW",
			output_flow_limit = "1500kW"
		},
		picture =
		{
			filename = "__Yuoki__/graphics/gfx/accu_crystal-m-idle-s.png",
			priority = "extra-high",
			width = 90,
			height = 100,
			shift = {0.5, -0.4}
		},
		charge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/accu_crys-m-char-anim.png",
			width = 90,
			height = 100,
			line_length = 8,
			frame_count = 8,
			shift = {0.5, -0.3},
			animation_speed = 0.6,
		},
		charge_cooldown = 30,
		charge_light = {intensity = 0.3, size = 25},
		discharge_animation =
		{
			filename = "__Yuoki__/graphics/gfx/accu_crys-m-disc-anim.png",
			width = 90,
			height = 100,
			line_length = 8,
			frame_count = 8,
			shift = {0.5, -0.3},
			animation_speed = 0.6,
		},
		discharge_cooldown = 60,
		discharge_light = {intensity = 0.7, size = 25},
		order="s[accu]-cm",
	},  	
	
})