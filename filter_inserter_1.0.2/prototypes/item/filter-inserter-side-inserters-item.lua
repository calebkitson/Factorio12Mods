data:extend({
  {
    type = "item",
    name = "filter-inserter-left",
    icon = "__filter_inserter__/graphics/icons/filter-inserter-left.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserter",
    order = "f[inserter]-e[filter-inserter]a",
    place_result = "filter-inserter-left",
    stack_size = 50
  },
  {
    type = "item",
    name = "filter-inserter-right",
    icon = "__filter_inserter__/graphics/icons/filter-inserter-right.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserter",
    order = "f[inserter]-e[filter-inserter]b",
    place_result = "filter-inserter-right",
    stack_size = 50
  }
})
