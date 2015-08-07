
--automatically generated file | fMT-Export (c)YT v0.03-215Jul17 

data:extend({

	--YI-Engines
	{ type="item-group", name="yi_engines", icon="__yi_engines__/graphics/yi-engines-icon.png", inventory_order="y", order="yi-e" },

	--building parts
	{ type="item-subgroup", name="yie-parts", group="yi_engines", order="a" },
	--Engines
	{ type="item-subgroup", name="yie-engines", group="yi_engines", order="e" },
	--all fluids (MF)
	{ type="item-subgroup", name="yie-fluids", group="yi_engines", order="f" },
	--products
	{ type="item-subgroup", name="yie-processed", group="yi_engines", order="p" },
	{ type="item-subgroup", name="ys-test", group="yi_engines", order="x" },
	--temporary experimental stuff
	{ type="item-subgroup", name="yie-exp", group="yi_engines", order="y" },

	{ type="recipe-category", name="advanced-crafting" }, --
	{ type="recipe-category", name="chemistry" }, --
	{ type="recipe-category", name="crafting" }, --
	{ type="recipe-category", name="crafting-with-fluid" }, --
	{ type="recipe-category", name="oil-processing" }, --
	{ type="recipe-category", name="smelting" }, --all furnace stuff
	{ type="recipe-category", name="yrcat-eg1" }, --c
	{ type="recipe-category", name="yrcat-eg2" }, --c
	{ type="recipe-category", name="yrcat-eg3" }, --c
	{ type="recipe-category", name="yrcat-eg4" }, --stirlings
	{ type="recipe-category", name="yrcat-farm" }, --farm itself
	{ type="recipe-category", name="yrcat-heater" }, --overheater for steam
	{ type="recipe-category", name="yrcat-mf1a" }, --mechanical force primary - sfe
	{ type="recipe-category", name="yrcat-mf1b" }, --mechanical force primary - ffe
	{ type="recipe-category", name="yrcat-mf1c" }, --mechanical force primary - stirling
	{ type="recipe-category", name="yrcat-mf1q" }, --mechanical force quantrinum-reactor
	{ type="recipe-category", name="yrcat-mf2" }, --gearbox
	{ type="recipe-category", name="yrcat-pump" }, --water-pump
	{ type="recipe-category", name="yrcat_turbine" }, --steam to mechanical power

})