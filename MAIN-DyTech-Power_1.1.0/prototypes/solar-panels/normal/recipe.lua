data:extend(
{
  {
    type = "recipe",
    name = "solar-panel-secondary",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 5},
      {"electronic-circuit", 15},
      {"copper-cable", 5},
      {"flux-capacitor-1", 1}
    },
    result = "solar-panel-secondary"
  },
  {
    type = "recipe",
    name = "solar-panel-primary-mk2",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"solar-panel", 5},
      {"advanced-circuit", 15},
      {"flux-capacitor-1", 1},
    },
    result = "solar-panel-primary-mk2"
  },
  {
    type = "recipe",
    name = "solar-panel-secondary-mk2",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"solar-panel-secondary", 5},
      {"advanced-circuit", 15},
      {"flux-capacitor-1", 1},
    },
    result = "solar-panel-secondary-mk2"
  },
  {
    type = "recipe",
    name = "solar-panel-primary-mk3",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"solar-panel-primary-mk2", 5},
      {"processing-unit", 15},
      {"tin-plate", 20},
      {"flux-capacitor-2", 2},
    },
    result = "solar-panel-primary-mk3"
  },
  {
    type = "recipe",
    name = "solar-panel-secondary-mk3",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"solar-panel-secondary-mk2", 5},
      {"processing-unit", 15},
      {"tin-plate", 20},
      {"flux-capacitor-2", 2},
    },
    result = "solar-panel-secondary-mk3"
  },
  {
    type = "recipe",
    name = "solar-panel-primary-mk4",
    enabled = false,
    energy_required = 40,
    ingredients =
    {
      {"solar-panel-primary-mk3", 5},
      {"advanced-processing-unit", 15},
      {"zinc-plate", 40},
      {"flux-capacitor-3", 5},
    },
    result = "solar-panel-primary-mk4"
  },
  {
    type = "recipe",
    name = "solar-panel-secondary-mk4",
    enabled = false,
    energy_required = 40,
    ingredients =
    {
      {"solar-panel-secondary-mk3", 5},
      {"advanced-processing-unit", 15},
      {"zinc-plate", 40},
      {"flux-capacitor-3", 5},
    },
    result = "solar-panel-secondary-mk4"
  },
  {
    type = "recipe",
    name = "solar-panel-primary-mk5",
    enabled = false,
    energy_required = 50,
    ingredients =
    {
      {"solar-panel-primary-mk4", 5},
      {"advanced-processing-unit", 45},
      {"gold-plate", 80},
      {"flux-capacitor-4", 10},
    },
    result = "solar-panel-primary-mk5"
  },
  {
    type = "recipe",
    name = "solar-panel-secondary-mk5",
    enabled = false,
    energy_required = 50,
    ingredients =
    {
      {"solar-panel-secondary-mk4", 5},
      {"advanced-processing-unit", 45},
      {"gold-plate", 80},
      {"flux-capacitor-4", 10},
    },
    result = "solar-panel-secondary-mk5"
  },
}
)