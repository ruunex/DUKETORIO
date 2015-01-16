require ("prototypes.entity.demo-railpictures")
require ("prototypes.entity.demo-pipecovers")
require ("prototypes.entity.demo-transport-belt-pictures")
require ("prototypes.entity.demo-player-animations")

data:extend(
{
 {
    type = "offshore-pump",
    name = "Sea-floor-pump",
    icon = "__base__/graphics/icons/offshore-pump.png",
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "Sea-floor-pump"},
    max_health = 80,
    corpse = "small-remnants",
    fluid = "sea-water",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.6, -0.3}, {0.6, 0.3}},
    selection_box = {{-1, -1.49}, {1, 0.49}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 1} },
      },
    },
    pumping_speed = 1,
    tile_width = 1,
    picture =
    {
      north =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {0.9, 0.05},
        width = 160,
        height = 102
      },
      east =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {0.9, 0.05},
        x = 160,
        width = 160,
        height = 102
      },
      south =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {0.9, 0.65},
        x = 320,
        width = 160,
        height = 102
      },
      west =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {1.0, 0.05},
        x = 480,
        width = 160,
        height = 102
      }
    }
  },
  {
    type = "water-gun-explosion",
    name = "water-gun-explosion",
    flags = {"not-on-map"},
    animation_speed = 1,
    animations =
    {
      {
        filename = "__base__/graphics/entity/flame-thrower-explosion/water-fun-explosion.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 64,
        line_length = 8
      }
    },
    slow_down_factor = 0.3,
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 0.95,
    damage = {amount = 0.50, type = "fire"}
  },
}
)