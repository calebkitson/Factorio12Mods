data:extend(
{
  {
    type = "recipe",
    name = "bob-logistic-robot-2",
    enabled = "false",
    ingredients =
    {
      {"logistic-robot", 1},
    },
    result = "bob-logistic-robot-2"
  },

  {
    type = "recipe",
    name = "bob-logistic-robot-3",
    enabled = "false",
    ingredients =
    {
      {"bob-logistic-robot-2", 1},
    },
    result = "bob-logistic-robot-3"
  },

  {
    type = "recipe",
    name = "bob-logistic-robot-4",
    enabled = "false",
    ingredients =
    {
      {"bob-logistic-robot-3", 1},
    },
    result = "bob-logistic-robot-4"
  },


  {
    type = "recipe",
    name = "bob-construction-robot-2",
    enabled = "false",
    ingredients =
    {
      {"construction-robot", 1},
    },
    result = "bob-construction-robot-2"
  },

  {
    type = "recipe",
    name = "bob-construction-robot-3",
    enabled = "false",
    ingredients =
    {
      {"bob-construction-robot-2", 1},
    },
    result = "bob-construction-robot-3"
  },

  {
    type = "recipe",
    name = "bob-construction-robot-4",
    enabled = "false",
    ingredients =
    {
      {"bob-construction-robot-3", 1},
    },
    result = "bob-construction-robot-4"
  },
}
)





