data:extend(
{
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------   
   
	{
    type = "gun",
    name = "impulse-rifle",
    icon = "__KrastorioPorted__/graphics/icons/impulse-rifle.png",
    icon_size = 32,
    subgroup = "gun",
    order = "c[impulse-rifle]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "impulse-rifle",
      cooldown = 60,
      movement_slow_down_factor = 0.6,
      projectile_creation_distance = 0.6,
      range = 60,
      sound =
      {
        {
          filename = "__KrastorioPorted__/sound/impulse-rifle.ogg",
          volume = 0.75
        }
      }
    },
    stack_size = 10
	},   

-----------------------------------------------------------------------------------------------------------------

    {
    type = "explosion",
    name = "impulse-rifle-beam",
    flags = {"not-on-map"},
    rotate = true,
    beam = true,
    animations =
    {
      {
        filename = "__KrastorioPorted__/graphics/entity/impulse-rifle-beam/impulse-rifle-beam.png",
        priority = "extra-high",
        width = 62,
        height = 1,
        frame_count = 6,
      }
    },
    light = {intensity = 1, size = 10, color = {r = 1.0, g = 1.0, b = 1.0}},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
  },
  
-----------------------------------------------------------------------------------------------------------------
  
  {
    type = "gun",
    name = "heavy-rocket-launcher",
    icon = "__KrastorioPorted__/graphics/icons/heavy-rocket-launcher.png",
    icon_size = 32,
    subgroup = "gun",
    order = "d[heavy-rocket-launcher]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "heavy-rocket",
      movement_slow_down_factor = 0.80,
      cooldown = 180,
      projectile_creation_distance = 0.6,
      range = 300,
      projectile_center = {-0.17, 0},
      sound =
      {
        {
          filename = "__KrastorioPorted__/sound/rocket-launch.ogg",
          volume = 1
        }
      }
    },
    stack_size = 5
  },
  
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
}
)
