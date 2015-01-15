data:extend(
  {
    type = "ammo",
    name = "flame-ammo",
    icon = "__base__/graphics/icons/flame-thrower-ammo.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "flame-thrower",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          {
            type = "flame-thrower",
            explosion = "flame-thrower-explosion",
            direction_deviation = 0.07,
            speed_deviation = 0.1,
            starting_frame_deviation = 0.07,
            damage = { amount = 40, type = "fire"},
            projectile_starting_speed = 0.2,
            starting_distance = 0.6,
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "ammo",
    order = "e[flame-thrower]",
    stack_size = 50
  }
)