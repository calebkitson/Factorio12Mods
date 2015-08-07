data:extend({
  {
    type = "item",
    name = "old-air-filter-machine",
    icon = "__air-filtering__/graphics/icons/air-filter-machine.png",
    flags = { "goes-to-quickbar" },
    subgroup = "production-machine",
    order = "f[air-filter-machine]",
    place_result = "old-air-filter-machine",
    stack_size = 10
  },
  {
    type = "item",
    name = "air-filter-machine",
    icon = "__air-filtering__/graphics/icons/air-filter-machine.png",
    flags = { "goes-to-quickbar" },
    subgroup = "production-machine",
    order = "f[air-filter-machine]",
    place_result = "air-filter-machine",
    stack_size = 10
  },
  {
    type = "item",
    name = "air-filter",
    icon = "__air-filtering__/graphics/icons/air-filter.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[plastic-bar]-h[filter-air]",
    stack_size = 50
  },
  {
    type = "item",
    name = "used-air-filter",
    icon = "__air-filtering__/graphics/icons/used-air-filter.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "h[air-filter]-i[used-air-filter]",
    stack_size = 50
  }
})
