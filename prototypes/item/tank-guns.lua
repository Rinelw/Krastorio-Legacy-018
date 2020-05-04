data:extend(
{
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------   
   
	{
    type = "gun",
    name = "k-tank-machine-gun",
    icon = "__base__/graphics/icons/submachine-gun.png",
    icon_size = 32,
    flags = {"hidden"},
    subgroup = "gun",
    order = "z[tank]-a[tank-machine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
	  damage_modifier = 1.5,
      cooldown = 6,
      movement_slow_down_factor = 0.25,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -0.6875,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_center = {0.5, 0.25},
      projectile_creation_distance = 1.75,
      range = 30,
	  sound =
		{
			{
			  filename = "__base__/sound/fight/tank-cannon.ogg",
			  volume = 0.9
			}
		}
    },
    stack_size = 1
	},
	
----------------------------------------------------------------------------------------------------------------- 
	
	{
    type = "gun",
    name = "k-laser-cannon",
    icon = "__Krastorio__/graphics/icons/impulse-rifle.png",
    icon_size = 32,
    flags = {"hidden"},
    subgroup = "gun",
    order = "z[tank]-b[laser-cannon]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "impulse-rifle",
	  damage_modifier = 1.5,
      cooldown = 30,
      movement_slow_down_factor = 0.25, 
      projectile_creation_distance = 1.75,
      projectile_center = {-0.5, 0.25},
      range = 60,
      sound =
      {
        {
          filename = "__Krastorio__/sound/impulse-rifle.ogg",
          volume = 1.0
        }
      },
    },
    stack_size = 1
	},
  
----------------------------------------------------------------------------------------------------------------- 
  
	{
    type = "gun",
    name = "k-tank-cannon-a",
    icon = "__Krastorio__/graphics/icons/k-tank-cannon-a.png",
    icon_size = 32,
    flags = {"hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon-a]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "railgun-shell",
	  damage_modifier = 0.5,
      cooldown = 80,
      movement_slow_down_factor = 0.5,
      projectile_creation_distance = 4.5,
      projectile_center = {0, 0.25},
      min_range = 15,
      range = 60,
      sound =
      {
        {
            filename = "__Krastorio__/sound/railgun.ogg",
          volume = 1.0
        }
      }
    },
    stack_size = 1
	},
  
----------------------------------------------------------------------------------------------------------------- 

	{
    type = "gun",
    name = "k-tank-cannon-b",
    icon = "__Krastorio__/graphics/icons/k-tank-cannon-b.png",
    icon_size = 32,
    flags = {"hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon-b]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "railgun-shell",
	  damage_modifier = 0.5,
      cooldown = 80,
      movement_slow_down_factor = 0.5,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 4.5,
      projectile_center = {0, 0.25},
      min_range = 15,
      range = 60,
      sound =
      {
        {
            filename = "__Krastorio__/sound/railgun.ogg",
          volume = 1.0
        }
      }
    },
    stack_size = 1
	},

----------------------------------------------------------------------------------------------------------------- 

	{
    type = "gun",
    name = "k-tank-cannon-c",
    icon = "__Krastorio__/graphics/icons/k-tank-cannon-c.png",
    icon_size = 32,
    flags = {"hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon-c]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "railgun-shell",
      cooldown = 160,
      movement_slow_down_factor = 0.75,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 4.5,
      projectile_center = {0, 0.25},
      min_range = 20,
      range = 120,
      sound =
      {
        {
            filename = "__Krastorio__/sound/railgun.ogg",
          volume = 1.5
        }
      }
    },
    stack_size = 1
	},
   
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
}
)
