data:extend(
{

  {
    type = "unit",
    name = "small-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = 15,
    order = "b-b-a",
    subgroup="enemies",
    resistances = 
    {
      {
        type = "physical",
        percent = 10,
      },
    },
    healing_per_tick = 0.01,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -0.7}, {0.7, 0.4}},
    attack_parameters =
    {
      type = "projectile",
	  range = 0.5,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(1),
      sound = make_biter_roars(0.8),
      animation = biterattackanimation(smallbiterscale, small_biter_tint1, small_biter_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.2,
    distance_per_frame = 0.1,
    pollution_to_join_attack = 200,
    distraction_cooldown = 300,
    corpse = "small-biter-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound = make_biter_dying_sounds(1.0),
	working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation(smallbiterscale, small_biter_tint1, small_biter_tint2)
  },

  {
    type = "unit",
    name = "medium-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 75,
    order="b-b-b",
    subgroup="enemies",
    resistances = 
    {
      {
        type = "physical",
        percent = 30,
      },
      {
        type = "acid",
        percent = 30,
      },
    },
    healing_per_tick = 0.01,
    collision_box = {{0, -0.01}, {0, 0.01}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
    distraction_cooldown = 300,
    attack_parameters =
    {
		type = "projectile",
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(5),
      range = 1,
      cooldown = 35,
      sound = make_biter_roars(0.8),
      animation = biterattackanimation(mediumbiterscale, medium_biter_tint1, medium_biter_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.185,
    distance_per_frame = 0.15,
    -- in pu
    pollution_to_join_attack = 1000,
    corpse = "medium-biter-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound = make_biter_dying_sounds(1.0),
	working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation(mediumbiterscale, medium_biter_tint1, medium_biter_tint2)
  },

  {
    type = "unit",
    name = "big-biter",
    order="b-b-c",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 375,
    subgroup="enemies",
    resistances = 
    {
      {
        type = "physical",
        percent = 50,
      },
      {
        type = "laser",
        percent = 50,
      },
      {
        type = "acid",
        percent = 50,
      },
    },
    healing_per_tick = 0.02,
    collision_box = {{0, -0.01}, {0, 0.01}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.6, -0.8}, {0.6, 0}},
    distraction_cooldown = 300,
    attack_parameters =
    {
		type = "projectile",
      range = 1.5,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(10),
		sound = make_biter_roars(0.8),
      animation = biterattackanimation(bigbiterscale, big_biter_tint1, big_biter_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.17,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 1000,
    corpse = "big-biter-corpse",
    dying_explosion = "blood-explosion-big",
    dying_sound = make_biter_dying_sounds(1.0),
	working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation(bigbiterscale, big_biter_tint1, big_biter_tint2)
  }
  
})
