data:extend(
{
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
   
    {
    type = "ammo",
    name = "imersite-rounds-magazine",
    icon = "__Krastorio__/graphics/icons/imersite-rounds-magazine.png",
    icon_size = 32,
    ammo_type =
    {
      category = "bullet",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-hit"
            },
            {
              type = "damage",
              damage = { amount = 28, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 10,
    subgroup = "ammo",
    order = "a[basic-clips]-d[imersite-rounds-magazine]",
    stack_size = 200
	},
   
-----------------------------------------------------------------------------------------------------------------
	
	{
    type = "ammo",
    name = "antimatter-artillery-shell",
    icon = "__Krastorio__/graphics/icons/antimatter-artillery-shell.png",
    icon_size = 64,
    ammo_type =
    {
      category = "artillery-shell",
      target_type = "position",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "artillery",
          projectile = "antimatter-artillery-projectile",
          starting_speed = 1,
          direction_deviation = 0,
          range_deviation = 0,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "artillery-cannon-muzzle-flash"
          }
        }
      }
    },
    subgroup = "ammo",
    order = "d[explosive-cannon-shell]-e[antimatter-artillery-shell]",
    stack_size = 25
	},
   
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
   
    {
    type = "ammo",
    name = "impulse-rifle-ammo",
    description = "impulse-rifle-ammo",
    icon = "__Krastorio__/graphics/icons/impulse-rifle-ammo.png",
    icon_size = 32,
    ammo_type =
    {
      category = "impulse-rifle",
      target_type = "direction",
      clamp_position = true,
      action =
      {
        type = "line",
        range = 60,
        width = 2,
        source_effects =
        {
          type = "create-explosion",
          entity_name = "impulse-rifle-beam"
        },
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            type = "damage",
            damage = { amount = 250, type="laser"}
          }
        }
      }
    },
    magazine_size = 3,
    subgroup = "ammo",
    order = "c[impulse-rifle-ammo]",
    stack_size = 200
    },

-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------	
	
  {
    type = "ammo",
    name = "heavy-rocket",
    icon = "__Krastorio__/graphics/icons/heavy-rocket.png",
    icon_size = 32,
    ammo_type =
    {
      cooldown_modifier = 0.75,
	  target_type = "position",
      category = "heavy-rocket",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "heavy-explosive-rocket-projectile",
          starting_speed = 0,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 300,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      }
    },
    subgroup = "ammo",
    order = "d[rocket-launcher]-b[explosive]",
    stack_size = 50
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "ammo",
    name = "antimatter-rocket",
    icon = "__Krastorio__/graphics/icons/antimatter-rocket.png",
    icon_size = 32,
    ammo_type =
    {
      range_modifier = 1,
      cooldown_modifier = 3,
      target_type = "position",
      category = "heavy-rocket",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "antimatter-rocket-projectile",
          starting_speed = 0,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 300,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          }
        }
      }
    },
    subgroup = "ammo",
    order = "d[rocket-launcher]-d[antimatter-rocket]",
    stack_size = 10
	},
	
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
   
    {
    type = "ammo",
    name = "basic-railgun-shell",
    description = "basic-railgun-shell",
    icon = "__Krastorio__/graphics/icons/basic-railgun-shell.png",
    icon_size = 64,
    ammo_type =
    {
      category = "railgun-shell",
      target_type = "entity",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "basic-railgun-projectile",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 100,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
    magazine_size = 1,
    subgroup = "k-railgun-turret",
    order = "2[basic-railgun-shell]",
    stack_size = 100
    },
  
------------------------------------------------

    {
    type = "ammo",
    name = "explosion-railgun-shell",
    description = "explosion-railgun-shell",
    icon = "__Krastorio__/graphics/icons/explosion-railgun-shell.png",
    icon_size = 64,
    ammo_type =
    {
      category = "railgun-shell",
      target_type = "position",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "explosion-railgun-projectile",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 100,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
    magazine_size = 1,
    subgroup = "k-railgun-turret",
    order = "3[explosion-railgun-shell]",
    stack_size = 100
    },
  
------------------------------------------------
  
    {
    type = "ammo",
    name = "antimatter-railgun-shell",
    description = "antimatter-railgun-shell",
    icon = "__Krastorio__/graphics/icons/antimatter-railgun-shell.png",
    icon_size = 64,
    ammo_type =
    {
      category = "railgun-shell",
      target_type = "position",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "matter-railgun-projectile",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 100,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
    magazine_size = 1,
    subgroup = "k-railgun-turret",
    order = "4[antimatter-railgun-shell]",
    stack_size = 100
    },
  
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

	{
    type = "ammo",
    name = "explosion-rocket-for-turret",
    description = "explosion-rocket-for-turret",
    icon = "__Krastorio__/graphics/icons/explosion-rocket-for-turret.png",
    icon_size = 32,
    ammo_type =
    {
      category = "missiles-for-turrets",
      target_type = "position",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "explosion-turret-rocket-projectile",
          starting_speed = 0,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 100,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
    magazine_size = 1,
    subgroup = "k-rocket-turret",
    order = "2[explosion-rocket-for-turret]",
    stack_size = 25
    },
	
------------------------------------------------

	{
    type = "ammo",
    name = "nuclear-rocket-for-turret",
    description = "nuclear-rocket-for-turret",
    icon = "__Krastorio__/graphics/icons/nuclear-rocket-for-turret.png",
    icon_size = 32,
    ammo_type =
    {
      category = "missiles-for-turrets",
      target_type = "position",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "nuclear-turret-rocket-projectile",
          starting_speed = 0,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 100,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
    magazine_size = 1,
    subgroup = "k-rocket-turret",
    order = "3[nuclear-rocket-for-turret]",
    stack_size = 25
    },
	
------------------------------------------------

	{
    type = "ammo",
    name = "antimatter-rocket-for-turret",
    description = "antimatter-rocket-for-turret",
    icon = "__Krastorio__/graphics/icons/antimatter-rocket-for-turret.png",
    icon_size = 32,
    ammo_type =
    {
      category = "missiles-for-turrets",
      target_type = "position",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "matter-turret-rocket-projectile",
          starting_speed = 0,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 100,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
    magazine_size = 1,
    subgroup = "k-rocket-turret",
    order = "4[antimatter-rocket-for-turret]",
    stack_size = 25
    },
	
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
}
)