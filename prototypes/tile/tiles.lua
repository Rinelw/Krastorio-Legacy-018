data:extend(
{

-----------------------------------------------------------------------------------------------------------------
------------------------------------------------VANILLA--------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

	{	
	  type = "tile",
	  name = "reinforced-plate",
	  needs_correction = false,
	  minable = {mining_time = 0.05, result = "reinforced-plate"},
	  mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
	  collision_mask = {"ground-tile"},
	  walking_speed_modifier = 1.75,
	  layer = 90,
	  transition_overlay_layer_offset = 5,
	  decorative_removal_probability = 1,
	  variants =
    {
      main =
      {
        {
          picture = "__Krastorio__/graphics/terrain/reinforced-plate.png",
          count = 16,
		  size = 4,
          hr_version =
          {
            picture = "__Krastorio__/graphics/terrain/hr-reinforced-plate.png",
            count = 16,
            scale = 0.5,
			size = 4,
          }
        },
        {
          picture = "__Krastorio__/graphics/terrain/reinforced-plate.png",
          count = 16,
		  size = 1,
          hr_version =
          {
            picture = "__Krastorio__/graphics/terrain/hr-reinforced-plate.png",
            count = 16,
            scale = 0.5,
			size = 1,
          }
        },
      },
      inner_corner =
      {
        picture = "__Krastorio__/graphics/terrain/plate-inner-corner.png",
        count = 4,
        tall = true,
        hr_version =
        {
          picture = "__Krastorio__/graphics/terrain/hr-plate-inner-corner.png",
          count = 4,
          tall = true,
          scale = 0.5
        }
      },
      outer_corner =
      {
        picture = "__Krastorio__/graphics/terrain/plate-outer-corner.png",
        count = 4,
        tall = true,
        hr_version =
        {
          picture = "__Krastorio__/graphics/terrain/hr-plate-outer-corner.png",
          count = 4,
          tall = true,
          scale = 0.5
        }
      },
      side =
      {
        picture = "__Krastorio__/graphics/terrain/plate-side.png",
        count = 16,
        tall = true,
        hr_version =
        {
          picture = "__Krastorio__/graphics/terrain/hr-plate-side.png",
          count = 16,
          tall = true,
          scale = 0.5
        }
      },
      u_transition =
      {
        picture = "__Krastorio__/graphics/terrain/plate-u.png",
        count = 2,
        tall = true,
        hr_version =
        {
          picture = "__Krastorio__/graphics/terrain/hr-plate-u.png",
          count = 2,
          tall = true,
          scale = 0.5
        }
      },
      o_transition =
      {
        picture = "__Krastorio__/graphics/terrain/plate-o.png",
        count = 2,
        hr_version =
        {
          picture = "__Krastorio__/graphics/terrain/hr-plate-o.png",
          count = 2,
          scale = 0.5
        }
      }
    },
	  walking_sound =
	  {
		{
		  filename = "__base__/sound/walking/concrete-01.ogg",
		  volume = 1.0
		},
		{
		  filename = "__base__/sound/walking/concrete-02.ogg",
		  volume = 1.0
		},
		{
		  filename = "__base__/sound/walking/concrete-03.ogg",
		  volume = 1.0
		},
		{
		  filename = "__base__/sound/walking/concrete-04.ogg",
		  volume = 1.0
		}
	  },
	  map_color={r=175, g=175, b=175},
	  pollution_absorption_per_second = 0,
	  vehicle_friction_modifier = concrete_vehicle_speed_modifier
	},
	
	{	
	  type = "tile",
	  name = "black-reinforced-plate",
	  needs_correction = false,
	  minable = {mining_time = 0.05, result = "black-reinforced-plate"},
	  mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
	  collision_mask = {"ground-tile"},
	  walking_speed_modifier = 1.80,
	  layer = 95,
	  transition_overlay_layer_offset = 6,
	  decorative_removal_probability = 1,
	  variants =
    {
      main =
      {
        {
          picture = "__Krastorio__/graphics/terrain/black-reinforced-plate.png",
          count = 16,
		  size = 4,
          hr_version =
          {
            picture = "__Krastorio__/graphics/terrain/hr-black-reinforced-plate.png",
            count = 16,
            scale = 0.5,
			size = 4,
          }
        },
		{
          picture = "__Krastorio__/graphics/terrain/black-reinforced-plate.png",
          count = 16,
		  size = 1,
          hr_version =
          {
            picture = "__Krastorio__/graphics/terrain/hr-black-reinforced-plate.png",
            count = 16,
            scale = 0.5,
			size = 1,
          }
        },
      },
      inner_corner =
      {
        picture = "__Krastorio__/graphics/terrain/plate-inner-corner.png",
        count = 4,
        tall = true,
        hr_version =
        {
          picture = "__Krastorio__/graphics/terrain/hr-plate-inner-corner.png",
          count = 4,
          tall = true,
          scale = 0.5
        }
      },
      outer_corner =
      {
        picture = "__Krastorio__/graphics/terrain/plate-outer-corner.png",
        count = 4,
        tall = true,
        hr_version =
        {
          picture = "__Krastorio__/graphics/terrain/hr-plate-outer-corner.png",
          count = 4,
          tall = true,
          scale = 0.5
        }
      },
      side =
      {
        picture = "__Krastorio__/graphics/terrain/plate-side.png",
        count = 16,
        tall = true,
        hr_version =
        {
          picture = "__Krastorio__/graphics/terrain/hr-plate-side.png",
          count = 16,
          tall = true,
          scale = 0.5
        }
      },
      u_transition =
      {
        picture = "__Krastorio__/graphics/terrain/plate-u.png",
        count = 2,
        tall = true,
        hr_version =
        {
          picture = "__Krastorio__/graphics/terrain/hr-plate-u.png",
          count = 2,
          tall = true,
          scale = 0.5
        }
      },
      o_transition =
      {
        picture = "__Krastorio__/graphics/terrain/plate-o.png",
        count = 2,
        hr_version =
        {
          picture = "__Krastorio__/graphics/terrain/hr-plate-o.png",
          count = 2,
          scale = 0.5
        }
      }
    },
	walking_sound =
    {
      {
        filename = "__base__/sound/walking/concrete-01.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/walking/concrete-02.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/walking/concrete-03.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/walking/concrete-04.ogg",
        volume = 1.0
      }
    },
    map_color={r=50, g=50, b=50},
    pollution_absorption_per_second = 0,
	vehicle_friction_modifier = concrete_vehicle_speed_modifier
	},
	
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
})