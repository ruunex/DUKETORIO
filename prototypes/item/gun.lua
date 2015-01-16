data:extend(
{
  {
    type = "gun",
    name = "dev-stick",
    icon = "__Roon__/graphics/icons/dev-stick.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "e[dev-stick]",
    attack_parameters =
    {
      ammo_category = "bullet",
      cooldown = 20,
      movement_slow_down_factor = 2.0,
      projectile_creation_distance = 0.6,
      range = 30,
      sound =
      {
        {
          filename = "__Roon__/sound/sexy.ogg",
          volume = 1.0
        }
      }
    },
    stack_size = 1
  },
  {
    type = "gun",
    name = "Water-gun",
    icon = "__base__/graphics/icons/water-gun.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "e[water-gun]",
    attack_parameters =
    {
      ammo_category = "water-gun-ammo",
      cooldown = 2,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 0.6,
      range = 15
    },
    stack_size = 1
  },
}
)