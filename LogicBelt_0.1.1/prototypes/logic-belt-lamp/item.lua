data:extend(
{ 
	{
		type = "item",
		name = "logic-belt-lamp-off",
		icon = "__LogicBelt__/graphics/logic-belt-lamp/light-off.png",
		flags = {"goes-to-quickbar"},
		subgroup = "energy",
		order = "c[light]-a[small-lamp]",
		place_result = "logic-belt-lamp-off",
		stack_size = 50
	},
	{
		type = "item",
		name = "logic-belt-lamp-on",
		icon = "__LogicBelt__/graphics/logic-belt-lamp/light-on.png",
		flags = {"goes-to-quickbar"},
		subgroup = "energy",
		order = "c[light]-a[small-lamp]",
		place_result = "logic-belt-lamp-on",
		stack_size = 50
	}
})