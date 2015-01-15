require "util"

gun_turret_extension =
{
  filename = "__base__/graphics/entity/gun-turret/gun-turret-extension.png",
  priority = "medium",
  width = 171,
  height = 102,
  direction_count = 4,
  frame_count = 5,
  axially_symmetrical = false,
  shift = {1.34375, -0.5 + 0.6}
}

laser_turret_extension =
{
  filename = "__base__/graphics/entity/laser-turret/laser-turret-extension.png",
  priority = "medium",
  width = 131,
  height = 74,
  direction_count = 4,
  frame_count = 5,
  axially_symmetrical = false,
  shift = {1.171875, -0.34375}
}

data:extend(
{
	{
    type = "ammo-turret",
    name = "rocket-turret",
    icon = "__base__/graphics/icons/gun-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "rocket-turret"},
    max_health = 200,
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.9 }, {0.4, 0.9}},
    selection_box = {{-0.5, -1 }, {0.5, 1}},
    rotation_speed = 0.015,
    preparing_speed = 0.08,
    folding_speed = 0.08,
    dying_explosion = "huge-explosion",
    inventory_size = 1,
    automated_ammo_count = 5,
    folded_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension,
    prepared_animation =
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret.png",
      priority = "medium",
      width = 178,
      height = 107,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.34375, -0.46875 + 0.6}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0, -0.125 + 0.6 }
    },
    attack_parameters =
    {
      ammo_category = "rocket",
      cooldown = 50,
      projectile_center = {0, 0.6},
      projectile_creation_distance = 0.6,
      range = 30,
    }
  },
{
    type = "ammo-turret",
    name = "flame-turret",
    icon = "__base__/graphics/icons/laser-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "flame-turret"},
    max_health = 200,
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.9 }, {0.4, 0.9}},
    selection_box = {{-0.5, -1 }, {0.5, 1}},
    rotation_speed = 0.015,
    preparing_speed = 0.08,
    folding_speed = 0.08,
    dying_explosion = "huge-explosion",
    inventory_size = 1,
    automated_ammo_count = 50,
    folded_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension,
    prepared_animation =
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret.png",
      priority = "medium",
      width = 131,
      height = 74,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.34375, -0.46875 + 0.6}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0, -0.125 + 0.6 }
    },
    attack_parameters =
    {
      ammo_category = "flame-thrower",
      cooldown = 5,
      projectile_center = {0, 0.6},
      projectile_creation_distance = 0.6,
      range = 30,
    }
  },
}
)
