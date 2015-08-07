data:extend(
{

	-- recipe
	{
		type = "recipe",
		name = "y-repair-durotal-recipe",		
		enabled = "true",
		energy_required = 3,
		ingredients = {{"repair-pack", 1},{"y-unicomp-raw", 1},},
		result = "y-repair-durotal",
		group="yuoki",
		subgroup = "y-tools",
		order="a[repair]-b[1]",
	},		
	{
		type = "recipe",
		name = "y-repair-krakon-recipe",		
		enabled = "true",
		energy_required = 3,
		ingredients = {{"repair-pack", 1},{"y-unicomp-a2", 1},},
		result = "y-repair-krakon",
		group="yuoki",
		subgroup = "y-tools",
		order="a[repair]-b[2]",
	},		
	{
		type = "recipe",
		name = "y-axe-durotal-recipe",		
		enabled = "true",
		energy_required = 4,
		ingredients = {{"raw-wood", 1},{"y-unicomp-raw", 2},},
		result = "y-axe-duro",
		group="yuoki",
		subgroup = "y-tools",
		order="a[repair]-b[2]",
	},		
		
	-- items	
	{
		type = "repair-tool",
		name = "y-repair-durotal",
		icon = "__Yuoki__/graphics/icons/repair-durotal-icon.png",
		flags = {"goes-to-quickbar"},
		group="yuoki",
		subgroup = "y-tools",
		order = "b[repair]-a[repair-pack]",
		speed = 3,
		durability = 400,
		stack_size = 75,
	},
	{
		type = "repair-tool",
		name = "y-repair-krakon",
		icon = "__Yuoki__/graphics/icons/repair-krakon-icon.png",
		flags = {"goes-to-quickbar"},
		group="yuoki",
		subgroup = "y-tools",
		order = "b[repair]-a[repair-pack]",
		speed = 5,
		durability = 750,
		stack_size = 75,
	},
	
	{
		type = "mining-tool",
		name = "y-axe-duro",
		icon = "__Yuoki__/graphics/icons/duro-hammer.png",
		flags = {"goes-to-main-inventory"},
		action =
		{
			type="direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					type = "damage",
					damage = { amount = 18 , type = "physical"}
				}
			}
		},
		durability = 8000,
		group="yuoki",
		subgroup = "y-tools",
		order = "a[mining]-b[steel-axe]",
		speed = 9,
		stack_size = 20,
	}	
	
})