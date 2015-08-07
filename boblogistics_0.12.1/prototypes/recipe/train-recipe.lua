data:extend(
{
  {
    type = "recipe",
    name = "diesel-locomotive-2",
    enabled = "false",
    ingredients =
    {
      {"diesel-locomotive", 1},
    },
    result = "diesel-locomotive-2"
  },

  {
    type = "recipe",
    name = "diesel-locomotive-3",
    enabled = "false",
    ingredients =
    {
      {"diesel-locomotive-2", 1},
    },
    result = "diesel-locomotive-3"
  },


  {
    type = "recipe",
    name = "armoured-diesel-locomotive",
    enabled = "false",
    ingredients =
    {
      {"diesel-locomotive", 1},
    },
    result = "armoured-diesel-locomotive"
  },


  {
    type = "recipe",
    name = "cargo-wagon-2",
    enabled = "false",
    ingredients =
    {
      {"cargo-wagon", 1},
    },
    result = "cargo-wagon-2"
  },

  {
    type = "recipe",
    name = "cargo-wagon-3",
    enabled = "false",
    ingredients =
    {
      {"cargo-wagon-2", 1},
    },
    result = "cargo-wagon-3"
  },


  {
    type = "recipe",
    name = "armoured-cargo-wagon",
    enabled = "false",
    ingredients =
    {
      {"cargo-wagon", 1},
    },
    result = "armoured-cargo-wagon"
  },
}
)


