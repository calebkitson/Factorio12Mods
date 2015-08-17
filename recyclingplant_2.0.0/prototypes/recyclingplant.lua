data:extend({
--added new recipe category = "recycling"
--current recyclable items
--wooden-chest, basic-armor, stone-belt, stone-transport-belt-to-ground
--stone-splitter, iron-chest
--burner-inserter, burner-mining-drill
--stone furnace, -fast, -fuel, -pollution

--New Category
{
  type = "recipe-category",
  name = "recycling"
},

--ENTITY
{
  type = "furnace",
  name = "recyclingplant",
  icon = "__recyclingplant__/graphics/items/recyclingplant.png",
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  minable = {mining_time = 1, result = "recyclingplant"},
  max_health = 250,
  corpse = "big-remnants",
  dying_explosion = "medium-explosion",
  light = {intensity = 1, size = 10},
  resistances = 
  {
    {
      type = "fire",
      percent = 80
    }
  },
  collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
  selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
  module_slots = 2,
  allowed_effects = {"consumption", "speed", "pollution"},
  crafting_categories = {"recycling"},
  result_inventory_size = 4,
  crafting_speed = 5,
  energy_usage = "20kW",
  source_inventory_size = 1,
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    emissions = 0.005
  },
  working_sound =
  {
    sound =
    {
      filename = "__base__/sound/electric-furnace.ogg",
      volume = 0.7
    },
    apparent_volume = 1.5
  },
  animation =
  {
    filename = "__recyclingplant__/graphics/entity/recyclingplant.png",
    priority = "high",
    width = 129,
    height = 100,
    frame_count = 1,
    shift = {0.421875, 0}
  },
  fluid_boxes =
  {
    {
      production_type = "input",
      pipe_picture = assembler3pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 20,
      base_level = -1,
      pipe_connections = {{ type="input", position = {0, -2} }}
    },
    {
      production_type = "input",
      pipe_picture = assembler3pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 15,
      base_level = -1,
      pipe_connections = {{ type="input", position = {2, 0} }}
    },
    {
      production_type = "input",
      pipe_picture = assembler3pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 15,
      base_level = -1,
      pipe_connections = {{ type="input", position = {-2, 0} }}
    },
    {
      production_type = "output",
      pipe_picture = assembler3pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 20,
      base_level = 1,
      pipe_connections = {{ type="output", position = {0, 2} }}
    },
    off_when_no_fluid_recipe = false
  },
  working_visualisations =
  {
    {
      animation =
      {
        filename = "__recyclingplant__/graphics/entity/recyclingplant-heater.png",
        priority = "high",
        width = 25,
        height = 15,
        frame_count = 12,
        animation_speed = 0.5,
        shift = {0.015625, 0.890625}
      },
      light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
    },
    {
      animation =
      {
        filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
        priority = "high",
        width = 19,
        height = 13,
        frame_count = 4,
        animation_speed = 0.5,
        shift = {-0.671875, -0.640625}
      }
    },
    {
      animation =
      {
        filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
        priority = "high",
        width = 12,
        height = 9,
        frame_count = 4,
        animation_speed = 0.5,
        shift = {0.0625, -1.234375}
      }
    }
  }
},

--ITEM
{
    type = "item",
    name = "recyclingplant",
    icon = "__recyclingplant__/graphics/items/recyclingplant.png",
    flags = {"goes-to-quickbar"},
    subgroup = "smelting-machine",
    order = "d[recyclingplant]",
    place_result = "recyclingplant",
    stack_size = 10
},

--RECIPE
{
  type = "recipe",
  name = "recyclingplant",
  enabled = "false",
  energy_required = 20,
  ingredients = {{"iron-plate", 30}, {"iron-gear-wheel", 15}},
  result = "recyclingplant"
},

--TECHNOLOGY
{
  type = "technology",
  name = "recyclingplant",
  icon = "__recyclingplant__/graphics/technology/recyclingplant.png",
  prerequisites = {"advanced-material-processing"},
  effects =
  {
	{
      type = "unlock-recipe",
      recipe = "recyclingplant"
	}
  },		 
  unit =
  {
    count = 80,
    ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1}
	},
    time = 15
  }
},

--for recipes with multiple outputs
{
  type = "item-group",
  name = "i-recyclingplant",
  order = "f",
  inventory_order = "f",
  icon = "__recyclingplant__/graphics/icons/module-tab.png"
},
--for recipes with multiple outputs
{
  type = "item-subgroup",
  name = "i-recyclingplant",
  group = "i-recyclingplant",
  order = "a"
}
 
})
