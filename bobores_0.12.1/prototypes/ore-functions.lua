function ore_autoplace_peaks(inputs)
return
  {
    influence = inputs.base_influence,
    starting_area_weight_optimal = inputs.starting_area,
    starting_area_weight_range = 0,
    starting_area_weight_max_range = 2,
  },

  {
    influence = inputs.noise_influence,
    noise_layer = inputs.noise_layer,
    noise_octaves_difference = inputs.noise_octaves_difference,
    noise_persistence = inputs.noise_persistence,
    starting_area_weight_optimal = inputs.starting_area,
    starting_area_weight_range = 0,
    starting_area_weight_max_range = 2,
  }
end

function ore_sheet(inputs)
local sheet
if inputs.sheet == 2 then
  sheet = "__bobores__/graphics/entity/ores/ore-2.png"
else
  sheet = "__bobores__/graphics/entity/ores/ore-1.png"
end

return
  {
    sheet =
    {
      filename = sheet,
      priority = "extra-high",
      width = 38,
      height = 38,
      frame_count = 4,
      variation_count = 8,
      tint = inputs.tint
    }
  }
end

function ore_particle(inputs)
return
  {
    type = "particle",
    name = inputs.name,
    flags = {"not-on-map"},
    life_time = 180,
    pictures = {
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-1.png",
        priority = "extra-high",
        tint = inputs.tint,
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-2.png",
        priority = "extra-high",
        tint = inputs.tint,
        width = 7,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-3.png",
        priority = "extra-high",
        tint = inputs.tint,
        width = 6,
        height = 7,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-4.png",
        priority = "extra-high",
        tint = inputs.tint,
        width = 9,
        height = 8,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-5.png",
        priority = "extra-high",
        tint = inputs.tint,
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-6.png",
        priority = "extra-high",
        tint = inputs.tint,
        width = 6,
        height = 4,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-7.png",
        priority = "extra-high",
        tint = inputs.tint,
        width = 7,
        height = 8,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-8.png",
        priority = "extra-high",
        tint = inputs.tint,
        width = 6,
        height = 5,
        frame_count = 1
      }
    },
    shadows = {
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-shadow-1.png",
        priority = "extra-high",
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-shadow-2.png",
        priority = "extra-high",
        width = 7,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-shadow-3.png",
        priority = "extra-high",
        width = 6,
        height = 7,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-shadow-4.png",
        priority = "extra-high",
        width = 9,
        height = 8,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-shadow-5.png",
        priority = "extra-high",
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-shadow-6.png",
        priority = "extra-high",
        width = 6,
        height = 4,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-shadow-7.png",
        priority = "extra-high",
        width = 7,
        height = 8,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/ores/ore-particle-shadow-8.png",
        priority = "extra-high",
        width = 6,
        height = 5,
        frame_count = 1
      }
    }
  }
end
