-----------------------------------------------------------------------------------------------------------------

if settings.startup["k_powerful-beacon"].value then

bp = 2

else

bp = 1

end

-----------------------------------------------------------------------------------------------------------------

function cannon_turret_sheet(inputs)
return
{
  layers = 
  {
    {
      filename = "__Krastorio__/graphics/entity/turrets/railgun-turret-sheet.png",
      priority = "medium",
      width = 175,
      height = 175,
      direction_count = inputs.direction_count and inputs.direction_count or 64,
      frame_count = 1,
      line_length = inputs.line_length and inputs.line_length or 8,
      axially_symmetrical = false,
      run_mode = inputs.run_mode and inputs.run_mode or "forward",
      --shift = { 0, 0 },
	  hr_version =
		{
		  filename = "__Krastorio__/graphics/entity/turrets/hr-railgun-turret-sheet.png",
		  priority = "medium",
		  scale = 0.5,
		  width = 350,
		  height = 350,
		  direction_count = inputs.direction_count and inputs.direction_count or 64,
		  frame_count = 1,
		  line_length = inputs.line_length and inputs.line_length or 8,
		  axially_symmetrical = false,
		  run_mode = inputs.run_mode and inputs.run_mode or "forward",
		  --shift = { 0, 0 },
		}
    }
  }
}
end

function cannon_turret_attack_sheet(inputs)
return
{
  layers = 
  {
    {
      filename = "__Krastorio__/graphics/entity/turrets/railgun-turret-attack-sheet.png",
      priority = "medium",
      width = 175,
      height = 175,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      --run_mode = inputs.run_mode and inputs.run_mode or "forward",
      --shift = { 0, 0 },
	  hr_version =
		{
			filename = "__Krastorio__/graphics/entity/turrets/hr-railgun-turret-attack-sheet.png",
			priority = "high",
			scale = 0.5,
			width = 350,
			height = 350,
			direction_count = 64,
			frame_count = 1,
			line_length = 8,
			axially_symmetrical = false,
			--run_mode = inputs.run_mode and inputs.run_mode or "forward",
			--shift = { 0, 0 },
		}
	  
    }
  }
}
end

-----------------------------------------------------------------------------------------------------------------

function rocket_turret_sheet(inputs)
return
{
  layers = 
  {
    {
      filename = "__Krastorio__/graphics/entity/turrets/rocket_turret_sheet.png",
      priority = "medium",
      width = 175,
      height = 175,
      direction_count = inputs.direction_count and inputs.direction_count or 64,
      frame_count = 1,
      line_length = inputs.line_length and inputs.line_length or 8,
      axially_symmetrical = false,
      run_mode = inputs.run_mode and inputs.run_mode or "forward",
      --shift = { 0, 0 },
	  hr_version =
		{
      filename = "__Krastorio__/graphics/entity/turrets/hr-rocket_turret_sheet.png",
      priority = "medium",
      scale = 0.5,
      width = 350,
      height = 350,
      direction_count = inputs.direction_count and inputs.direction_count or 64,
      frame_count = 1,
      line_length = inputs.line_length and inputs.line_length or 8,
      axially_symmetrical = false,
      run_mode = inputs.run_mode and inputs.run_mode or "forward",
      --shift = { 0, 0 },
		}
    }
  }
}
end

-----------------------------------------------------------------------------------------------------------------

function imersite_accumulator_picture(tint, repeat_count)
  return
  {
    layers =
    {
      {
        filename = "__Krastorio__/graphics/entity/imersite-accumulator/imersite-accumulator.png",
        priority = "high",
        width = 65,
        height = 95,
        repeat_count = repeat_count,
        shift = util.by_pixel(0, -11),
        tint = tint,
        animation_speed = 0.5,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/imersite-accumulator/hr-imersite-accumulator.png",
			priority = "high",
			width = 130,
			height = 189,
			repeat_count = repeat_count,
			shift = util.by_pixel(0, -11),
			tint = tint,
			animation_speed = 0.5,
			scale = 0.5
			}
      },
      {
        filename = "__Krastorio__/graphics/entity/imersite-accumulator/imersite-accumulator-shadow.png",
        priority = "high",
        width = 117,
        height = 53,
        repeat_count = repeat_count,
        shift = util.by_pixel(29, 6),
        draw_as_shadow = true,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/imersite-accumulator/hr-imersite-accumulator-shadow.png",
			priority = "high",
			width = 234,
			height = 106,
			repeat_count = repeat_count,
			shift = util.by_pixel(29, 6),
			draw_as_shadow = true,
			scale = 0.5,
			}
      }
    }
  }
end

function imersite_accumulator_charge()
  return
  {
    layers =
    {
      accumulator_picture({ r=1, g=1, b=1, a=1 } , 24),
      {
        filename = "__Krastorio__/graphics/entity/imersite-accumulator/imersite-accumulator-charge.png",
        priority = "high",
        width = 89,
        height = 103,
        line_length = 6,
        frame_count = 24,
        blend_mode = "additive",
        shift = util.by_pixel(0, -22),
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/imersite-accumulator/hr-imersite-accumulator-charge.png",
			priority = "high",
			width = 178,
			height = 206,
			line_length = 6,
			frame_count = 24,
			blend_mode = "additive",
			shift = util.by_pixel(0, -22),
			scale = 0.5,
			}
      }
    }
  }
end

function imersite_accumulator_discharge()
  return
  {
    layers =
    {
      accumulator_picture({ r=1, g=1, b=1, a=1 } , 24),
      {
        filename = "__Krastorio__/graphics/entity/imersite-accumulator/imersite-accumulator-discharge.png",
        priority = "high",
        width = 85,
        height = 105,
        line_length = 6,
        frame_count = 24,
        blend_mode = "additive",
        shift = util.by_pixel(-1, -23),
		hr_version =
        {
        filename = "__Krastorio__/graphics/entity/imersite-accumulator/hr-imersite-accumulator-discharge.png",
        priority = "high",
        width = 170,
        height = 210,
        line_length = 6,
        frame_count = 24,
        blend_mode = "additive",
        shift = util.by_pixel(-1, -23),
		scale = 0.5,
		}
      }
    }
  }
end

k_belt_animation_set = {
  animation_set =
  {
    filename = "__Krastorio__/graphics/entity/superior-belt/k-transport-belt.png",
    priority = "extra-high",
    width = 64,
    height = 64,
    frame_count = 32,
    direction_count = 20,
    hr_version =
    {
      filename = "__Krastorio__/graphics/entity/superior-belt/hr-k-transport-belt.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
      frame_count = 32,
      direction_count = 20
    }
  },

  east_index = 1,
  west_index = 2,
  north_index = 3,
  south_index = 4,

  east_to_north_index = 5,
  north_to_east_index = 6,

  west_to_north_index = 7,
  north_to_west_index = 8,

  south_to_east_index = 9,
  east_to_south_index = 10,

  south_to_west_index = 11,
  west_to_south_index = 12,

  starting_south_index = 13,
  ending_south_index = 14,

  starting_west_index = 15,
  ending_west_index = 16,

  starting_north_index = 17,
  ending_north_index = 18,

  starting_east_index = 19,
  ending_east_index = 20
}

data:extend(
{
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------   
   
	{
	type = "assembling-machine",
	name = "k-advanced-chemical-plant",
	icon_size = 32,
    icon = krstr_entities_icon_path .. "advanced-chemical-plant_icon.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "k-advanced-chemical-plant"},
	max_health = 2000,
	corpse = "big-k-remnants",
	dying_explosion = "big-explosion",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 70},
	{type = "impact",percent = 70}
	},
	fluid_boxes =
	{
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 100,
			base_level = -1,
			pipe_connections = {{ type="input", position = {1, -4} }}
		},		
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 100,
			base_level = -1,
			pipe_connections = {{ type="input", position = {0, -4} }}
		},	
	{
			production_type = "input",
				pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 100,
			base_level = -1,
			pipe_connections = {{ type="input", position = {-1, -4} }}
			},
		
		
		
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{ type="output", position = {1, 4} }}
		},
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{ type="output", position = {0, 4} }}
		},
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{ type="output", position = {-1, 4} }}
		},
		
		off_when_no_fluid_recipe = false
	},
	collision_box = {{-3.25, -3.25}, {3.25, 3.25}},
	selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
	{
		filename = "__Krastorio__/graphics/entity/advanced-chemical-plant/advanced-chemical-plant.png",
		priority = "high",
		scale = scale,
		width = 300,
		height = 300,
		frame_count = 1,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/advanced-chemical-plant/hr-advanced-chemical-plant.png",
			priority = "high",
			scale = scale,
			width = 600,
			height = 600,
			frame_count = 1,
			scale = 0.5,
			}
		},
	working_visualisations =
       {
       {
       animation =
       {
		filename = "__Krastorio__/graphics/entity/advanced-chemical-plant/advanced-chemical-plant-animation.png",
		priority = "high",
		scale = scale,
		width = 200,
		height = 220,
		frame_count = 12,
		line_length = 4,
		animation_speed=0.05,
		hr_version =
			{
		filename = "__Krastorio__/graphics/entity/advanced-chemical-plant/hr-advanced-chemical-plant-animation.png",
		priority = "high",
		scale = scale,
		width = 400,
		height = 440,
		frame_count = 12,
		line_length = 4,
		animation_speed=0.05,
		scale = 0.5,
			}
       },
	light =
	{
	intensity = 0.1,
	size = 15,
	shift = {2.0, 0.0},
	color = {r=0.1, g=0.5, b=1}
	}
       },
    },
  
	crafting_categories = {"chemistry", "k-chemistry"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
       working_sound =
       {
           sound =
       {
       {
           filename = "__Krastorio__/sound/filtration-plant.ogg",
           volume = 1
       }
       },
       idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
       apparent_volume = 1.5
       },
	crafting_speed = 16,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions_per_minute = 10
	},
	energy_usage = "2.5MW",
	ingredient_count = 6,
	module_specification =
	{
		module_slots = 4
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},
	
----------------------------------------------------------------------------------------------------------------- 
	
	{
    type = "assembling-machine",
    name = "k-multifunctional-furnace",
    icon = krstr_entities_icon_path .. "multifunctional-furnace_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "k-multifunctional-furnace"},
    max_health = 350,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 3,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"smelting", "k-smelting", "coke-smelting"},
    crafting_speed = 2,
    energy_usage = "350kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      layers =
      {
        {
          filename = "__Krastorio__/graphics/entity/multifunctional-furnace/multifunctional-furnace.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = {0.421875, 0},
          hr_version =
          {
            filename = "__Krastorio__/graphics/entity/multifunctional-furnace/hr-multifunctional-furnace.png",
            priority = "high",
            width = 239,
            height = 219,
            frame_count = 1,
            shift = util.by_pixel(0.75, 5.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = {0.421875, 0},
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
            priority = "high",
            width = 227,
            height = 171,
            frame_count = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(11.25, 7.75),
            scale = 0.5
          }
        }
      }
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.015625, 0.890625},
          hr_version =
          {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
            priority = "high",
            width = 60,
            height = 56,
            frame_count = 12,
            animation_speed = 0.5,
            shift = util.by_pixel(1.75, 32.75),
            scale = 0.5
          }
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875, -0.640625},
          hr_version =
          {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
            priority = "high",
            width = 37,
            height = 25,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(-20.5, -18.5),
            scale = 0.5
          }
        }
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.0625, -1.234375},
          hr_version =
          {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
            priority = "high",
            width = 23,
            height = 15,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(3.5, -38),
            scale = 0.5
          }
        }
      }
    },
    fast_replaceable_group = "furnace"
	},
	
----------------------------------------------------------------------------------------------------------------- 
   
	{
	type = "assembling-machine",
	name = "k-advanced-furnace",
	icon_size = 32,
    icon = krstr_entities_icon_path .. "advanced-furnace_icon.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "k-advanced-furnace"},
	max_health = 2000,
	corpse = "big-k-remnants",
	dying_explosion = "big-explosion",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 95},
	{type = "impact",percent = 80}
	},
	collision_box = {{-3.25, -3.25}, {3.25, 3.25}},
	selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
    {
      layers =
      {
        {
          filename = "__Krastorio__/graphics/entity/advanced-furnace/advanced-furnace.png",
          priority = "high",
          width = 240,
          height = 240,
		  shift = {0, -0.1},
		  frame_count = 1,
		  hr_version =
			  {
			  filename = "__Krastorio__/graphics/entity/advanced-furnace/hr-advanced-furnace.png",
			  priority = "high",
			  width = 480,
			  height = 480,
			  shift = {0, -0.1},
			  frame_count = 1,
			  scale = 0.5,
			  }
        },
        {
		  filename = "__Krastorio__/graphics/entity/advanced-furnace/advanced-furnace-sh.png",
		  priority = "high",
		  scale = scale,
		  width = 83,
		  height = 240,
		  shift = {3.1, -0.1},
		  frame_count = 1,
		  draw_as_shadow = true,
		  hr_version =
			  {
			  filename = "__Krastorio__/graphics/entity/advanced-furnace/hr-advanced-furnace-sh.png",
			  priority = "high",
			  scale = scale,
			  width = 165,
			  height = 480,
			  shift = {3.1, -0.1},
			  frame_count = 1,
			  draw_as_shadow = true,
			  scale = 0.5,
			  }
        }
      }
    },
	working_visualisations =
    {
		{
		animation =
        {
          filename = "__Krastorio__/graphics/entity/advanced-furnace/advanced-furnace-anim.png",
          priority = "high",
          width = 240,
          height = 240,
		  shift = {0, -0.1},
		  frame_count = 28,
		  line_length = 4,
		  animation_speed=0.03,
		  hr_version =
			  {
			  filename = "__Krastorio__/graphics/entity/advanced-furnace/hr-advanced-furnace-anim.png",
			  priority = "high",
			  width = 480,
			  height = 480,
			  shift = {0, -0.1},
			  frame_count = 28,
			  line_length = 4,
			  animation_speed=0.03,
			  scale = 0.5,
			  }
        }
		},
		{
		light =
		{
		intensity = 0.5,
		size = 18,
		shift = {0.0, 0.0},
		color = {r=1, g=0.35, b=0.2}
		}
		},
	},
	crafting_categories = {"smelting", "coke-smelting", "k-smelting"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound =
    {
      sound =
      {
        --filename = "__Krastorio__/sound/advanced-furnace.ogg",
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.75,
      },
      apparent_volume = 1,
    },
	idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
	crafting_speed = 18,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions_per_minute = 10
	},
	energy_usage = "3MW",
	ingredient_count = 6,
	module_specification =
	{
		module_slots = 4
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},
	
-----------------------------------------------------------------------------------------------------------------

	{
	type = "assembling-machine",
	name = "kr-air-filter",
	icon_size = 32,
	icon = krstr_entities_icon_path .. "air-filter_icon.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "kr-air-filter"},
	max_health = 500,
	corpse = "medium-k-remnants",
	dying_explosion = "big-explosion",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 50},
	{type = "impact",percent = 50}
	},
	fluid_boxes =
	{
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{ type="input", position = {-3, -1} }}
		},						
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{ type="input", position = {-3, 1} }}
		},
		
		
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{ type="output", position = {3, -1} }}
		},
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{ type="output", position = {3, 1} }}
		},
		off_when_no_fluid_recipe = false
	},
	collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
	selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
    {
      north =
      {
        filename = "__Krastorio__/graphics/entity/air-filter/air-filter-h.png",
        width = 190,
        height = 190,
        frame_count = 1,
		--line_length = 6,
        shift = {0, 0},
		--animation_speed = 0.5
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/air-filter/hr-air-filter-h.png",
			width = 380,
			height = 380,
			scale = 0.5,
			frame_count = 1,
			--line_length = 6,
			shift = {0, 0},
			--animation_speed = 0.5
			}
      },
      east =
      {
        filename = "__Krastorio__/graphics/entity/air-filter/air-filter-v.png",
        width = 190,
        height = 190,
        frame_count = 1,
		--line_length = 6,
        shift = {0, 0},
		--animation_speed = 0.5
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/air-filter/hr-air-filter-v.png",
			width = 380,
			height = 380,
			scale = 0.5,
			frame_count = 1,
			--line_length = 6,
			shift = {0, 0},
			--animation_speed = 0.5
			}
      },
      south =
      {
        filename = "__Krastorio__/graphics/entity/air-filter/air-filter-h.png",
        width = 190,
        height = 190,
        frame_count = 1,
		--line_length = 6,
        shift = {0, 0},
		--animation_speed = 0.5
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/air-filter/hr-air-filter-h.png",
			width = 380,
			height = 380,
			scale = 0.5,
			frame_count = 1,
			--line_length = 6,
			shift = {0, 0},
			--animation_speed = 0.5
			}
      },
      west =
      {
        filename = "__Krastorio__/graphics/entity/air-filter/air-filter-v.png",
        width = 190,
        height = 190,
        frame_count = 1,
		--line_length = 6,
        shift = {0, 0},
		--animation_speed = 0.5
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/air-filter/hr-air-filter-v.png",
			width = 380,
			height = 380,
			scale = 0.5,
			frame_count = 1,
			--line_length = 6,
			shift = {0, 0},
			--animation_speed = 0.5
			}
      }
    },
	working_visualisations =
   {
   {
	light =
	{
	intensity = 0.3,
	size = 10,
	shift = {0, 0},
	color = {r=0.1, g=0.5, b=1}
	}
	},
	
	{
	animation =
    {
        filename = "__Krastorio__/graphics/entity/air-filter/air-filter-anim.png",
        width = 190,
        height = 190,
        frame_count = 12,
		line_length = 4,
        shift = {0, 0},
		animation_speed = 1,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/air-filter/hr-air-filter-anim.png",
			width = 380,
			height = 380,
			scale = 0.5,
			frame_count = 12,
			line_length = 4,
			shift = {0, 0},
			animation_speed = 1
			}
    }
	}
	},
	crafting_categories = {"kr-air-filter"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
       working_sound =
       {
           sound =
       {
       {
           filename = "__Krastorio__/sound/air-purifier.ogg",
           volume = 1
       }
       },
       idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
       apparent_volume = 1.5
       },
	crafting_speed = 1.5,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions_per_second_per_watt = 2 / 10000000
	},
	energy_usage = "0.5MW",
	ingredient_count = 6,
	module_specification =
	{
		module_slots = 4
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
   close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},
	
-----------------------------------------------------------------------------------------------------------------

	{
	type = "assembling-machine",
	name = "k-electrolysis-plant",
	icon_size = 32,
	icon = krstr_entities_icon_path .. "electrolysis-plant_icon.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "k-electrolysis-plant"},
	max_health = 500,
	corpse = "medium-k-remnants",
	dying_explosion = "big-explosion",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 50},
	{type = "impact",percent = 50}
	},
	fluid_boxes =
	{
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{ type="input", position = {-3, -1} }}
		},						
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{ type="input", position = {-3, 1} }}
		},
		
		
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{ type="output", position = {3, -1} }}
		},
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{ type="output", position = {3, 1} }}
		},
		off_when_no_fluid_recipe = false
	},
	collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
	selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
    {
      north =
      {
        filename = "__Krastorio__/graphics/entity/electrolysis-plant/electrolysis-plant-h.png",
        width = 190,
        height = 190,
        frame_count = 1,
		--line_length = 6,
        shift = {0, 0},
		--animation_speed = 0.5
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/electrolysis-plant/hr-electrolysis-plant-h.png",
			width = 380,
			height = 380,
			scale = 0.5,
			frame_count = 1,
			--line_length = 6,
			shift = {0, 0},
			--animation_speed = 0.5
			}
      },
      east =
      {
        filename = "__Krastorio__/graphics/entity/electrolysis-plant/electrolysis-plant-v.png",
        width = 190,
        height = 190,
        frame_count = 1,
		--line_length = 6,
        shift = {0, 0},
		--animation_speed = 0.5
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/electrolysis-plant/hr-electrolysis-plant-v.png",
			width = 380,
			height = 380,
			scale = 0.5,
			frame_count = 1,
			--line_length = 6,
			shift = {0, 0},
			--animation_speed = 0.5
			}
      },
      south =
      {
        filename = "__Krastorio__/graphics/entity/electrolysis-plant/electrolysis-plant-h.png",
        width = 190,
        height = 190,
        frame_count = 1,
		--line_length = 6,
        shift = {0, 0},
		--animation_speed = 0.5
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/electrolysis-plant/hr-electrolysis-plant-h.png",
			width = 380,
			height = 380,
			scale = 0.5,
			frame_count = 1,
			--line_length = 6,
			shift = {0, 0},
			--animation_speed = 0.5
			}
      },
      west =
      {
        filename = "__Krastorio__/graphics/entity/electrolysis-plant/electrolysis-plant-v.png",
        width = 190,
        height = 190,
        frame_count = 1,
		--line_length = 6,
        shift = {0, 0},
		--animation_speed = 0.5
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/electrolysis-plant/hr-electrolysis-plant-v.png",
			width = 380,
			height = 380,
			scale = 0.5,
			frame_count = 1,
			--line_length = 6,
			shift = {0, 0},
			--animation_speed = 0.5
			}
      }
    },
	working_visualisations =
   {
   {
	light =
	{
	intensity = 0.3,
	size = 10,
	shift = {0, 0},
	color = {r=0.1, g=0.5, b=1}
	}
	},
	
	{
	animation =
    {
        filename = "__Krastorio__/graphics/entity/electrolysis-plant/electrolysis-plant-anim.png",
        width = 190,
        height = 190,
        frame_count = 8,
		line_length = 2,
        shift = {0, 0},
		animation_speed = 0.3,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/electrolysis-plant/hr-electrolysis-plant-anim.png",
			width = 380,
			height = 380,
			scale = 0.5,
			frame_count = 8,
			line_length = 2,
			shift = {0, 0},
			animation_speed = 0.3,
			}
    }
	}
	},
	crafting_categories = {"k-electrolysis-plant"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
       working_sound =
       {
           sound =
       {
       {
           filename = "__Krastorio__/sound/electrolysis-plant.ogg",
           volume = 0.8
       }
       },
       idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
       apparent_volume = 1.5
       },
	crafting_speed = 1,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions_per_second_per_watt = 2 / 10000000
	},
	energy_usage = "0.5MW",
	ingredient_count = 6,
	module_specification =
	{
		module_slots = 4
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
   close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},
	
-----------------------------------------------------------------------------------------------------------------
	
    {
	type = "assembling-machine",
	name = "k-filtration-plant",
	icon_size = 32,
	icon = krstr_entities_icon_path .. "filtration-plant_icon.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "k-filtration-plant"},
	max_health = 2000,
	corpse = "big-k-remnants",
	dying_explosion = "big-explosion",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 50},
	{type = "impact",percent = 50}
	},
	fluid_boxes =
	{
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{ type="input", position = {0, -4} }}
		},						
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{ type="output", position = {0, 4} }}
		},
		off_when_no_fluid_recipe = false
	},
	collision_box = {{-3.25, -3.25}, {3.25, 3.25}},
	selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
	{
		filename = "__Krastorio__/graphics/entity/filtration-plant/filtration-plant.png",
		priority = "high",
		scale = scale,
		width = 300,
		height = 300,
		frame_count = 1,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/filtration-plant/hr-filtration-plant.png",
			priority = "high",
			scale = scale,
			width = 600,
			height = 600,
			frame_count = 1,
			scale = 0.5,
			}
	},
	working_visualisations =
	{
	{
	animation =
	{
		filename = "__Krastorio__/graphics/entity/filtration-plant/filtration-plant-animation.png",
		priority = "high",
		scale = scale,
		width = 200,
		height = 220,
		frame_count = 24,
		line_length = 5,
		animation_speed=0.5,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/filtration-plant/hr-filtration-plant-animation.png",
			priority = "high",
			scale = scale,
			width = 400,
			height = 440,
			frame_count = 24,
			line_length = 5,
			animation_speed=0.5,
			scale = 0.5,
			}
	},
	light =
	{
	intensity = 0.1,
	size = 15,
	shift = {2.0, 0.0},
	color = {r=0.1, g=0.5, b=1}
	}
	},
	},
  
	crafting_categories = {"k-filtration-plant"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound =
	{
		sound =
	{
	{
		filename = "__Krastorio__/sound/filtration-plant.ogg",
		volume = 1
	}
	},
	idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
	apparent_volume = 1.5
	},
	crafting_speed = 1.0,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions_per_minute = 5
	},
	energy_usage = "500kW",
	ingredient_count = 6,
	module_specification =
	{
		module_slots = 2
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},
	
-----------------------------------------------------------------------------------------------------------------
	
	{
	type = "furnace",
	name = "k-flare-stack",
	icon = krstr_entities_icon_path .. "flare-stack_icon.png",
	icon_size = 32,
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 0.5, result = "k-flare-stack"},
	max_health = 250,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 95}
	},
	fluid_boxes =
	{
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 5,
			base_level = -1,
			pipe_connections = {{ type="input", position = {0.5, 1.5} }}
		},						
		off_when_no_fluid_recipe = false
	},
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "k-flare-stack",
	animation =
    {
		north =
				{
			layers =
				{
				{
				filename = "__Krastorio__/graphics/entity/flare-stack/flare-stack-n.png",
				width = 75,
				height = 150,
				frame_count = 1,
				--line_length = 6,
				shift = {0, -1},
				--animation_speed = 0.5
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/flare-stack/hr-flare-stack-n.png",
					width = 150,
					height = 300,
					scale = 0.5,
					frame_count = 1,
					--line_length = 6,
					shift = {0, -1},
					--animation_speed = 0.5
					}
				},
				{
				filename = "__Krastorio__/graphics/entity/flare-stack/flare-stack-sh.png",
				priority = "high",
				scale = scale,
				width = 129,
				height = 47,
				shift = {1.1, 0.25},
				frame_count = 1,
				draw_as_shadow = true,
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/flare-stack/hr-flare-stack-sh.png",
					priority = "high",
					scale = scale,
					width = 258,
					height = 94,
					shift = {1.1, 0.25},
					frame_count = 1,
					draw_as_shadow = true,
					scale = 0.5
					}
				}
				}
				},
		east =
				{
				layers =
				{
				{
				filename = "__Krastorio__/graphics/entity/flare-stack/flare-stack-e.png",
				width = 75,
				height = 150,
				frame_count = 1,
				--line_length = 6,
				shift = {0, -1},
				--animation_speed = 0.5
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/flare-stack/hr-flare-stack-e.png",
					width = 150,
					height = 300,
					scale = 0.5,
					frame_count = 1,
					--line_length = 6,
					shift = {0, -1},
					--animation_speed = 0.5
					}
				},
				{
				filename = "__Krastorio__/graphics/entity/flare-stack/flare-stack-sh.png",
				priority = "high",
				scale = scale,
				width = 129,
				height = 47,
				shift = {1.1, 0.25},
				frame_count = 1,
				draw_as_shadow = true,
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/flare-stack/hr-flare-stack-sh.png",
					priority = "high",
					scale = scale,
					width = 258,
					height = 94,
					shift = {1.1, 0.25},
					frame_count = 1,
					draw_as_shadow = true,
					scale = 0.5
					}
				}
				}
				},
		south =
				{
				layers =
				{
				{
				filename = "__Krastorio__/graphics/entity/flare-stack/flare-stack-s.png",
				width = 75,
				height = 150,
				frame_count = 1,
				--line_length = 6,
				shift = {0, -1},
				--animation_speed = 0.5
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/flare-stack/hr-flare-stack-s.png",
					width = 150,
					height = 300,
					scale = 0.5,
					frame_count = 1,
					--line_length = 6,
					shift = {0, -1},
					--animation_speed = 0.5
					}
				},
				{
				filename = "__Krastorio__/graphics/entity/flare-stack/flare-stack-sh.png",
				priority = "high",
				scale = scale,
				width = 129,
				height = 47,
				shift = {1.1, 0.25},
				frame_count = 1,
				draw_as_shadow = true,
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/flare-stack/hr-flare-stack-sh.png",
					priority = "high",
					scale = scale,
					width = 258,
					height = 94,
					shift = {1.1, 0.25},
					frame_count = 1,
					draw_as_shadow = true,
					scale = 0.5
					}
				}
				}
				},
		west =
				{
				layers =
				{
				{
				filename = "__Krastorio__/graphics/entity/flare-stack/flare-stack-w.png",
				width = 75,
				height = 150,
				frame_count = 1,
				--line_length = 6,
				shift = {0, -1},
				--animation_speed = 0.5
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/flare-stack/hr-flare-stack-w.png",
					width = 150,
					height = 300,
					scale = 0.5,
					frame_count = 1,
					--line_length = 6,
					shift = {0, -1},
					--animation_speed = 0.5
					}
				},
				{
				filename = "__Krastorio__/graphics/entity/flare-stack/flare-stack-sh.png",
				priority = "high",
				scale = scale,
				width = 129,
				height = 47,
				shift = {1.1, 0.25},
				frame_count = 1,
				draw_as_shadow = true,
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/flare-stack/hr-flare-stack-sh.png",
					priority = "high",
					scale = scale,
					width = 258,
					height = 94,
					shift = {1.1, 0.25},
					frame_count = 1,
					draw_as_shadow = true,
					scale = 0.5
					}
				}
				}
				},
	},
	working_visualisations =
		{
			{
			apply_recipe_tint = "quaternary",
			fadeout = true,
			animation =
			{
			filename = "__Krastorio__/graphics/entity/flare-stack/flare-stack-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 0.50,
			shift = {0, -3.25},
			}
			},
			
			{
			light =
			{
			intensity = 0.75,
			size = 25,
			shift = {0, 0},
			color = {r=1, g=0.95, b=0.75}
			}
			},
	
	},
	crafting_categories = {"k-flare-stack"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
       working_sound =
       {
           sound =
       {
       {
           filename = "__Krastorio__/sound/flare-stack.ogg",
           volume = 0.5
       }
       },
       idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
       apparent_volume = 1
       },
	crafting_speed = 1.0,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions_per_minute = 5,
	},
	energy_usage = "0.1MW",
    source_inventory_size = 1,
    result_inventory_size = 1,
	module_specification =
	{
		module_slots = 2
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
   close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},
	
-----------------------------------------------------------------------------------------------------------------

	{
	type = "furnace",
	name = "k-liquid-evaporator",
	icon_size = 32,
	icon = krstr_entities_icon_path .. "liquid-evaporator_icon.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 0.5, result = "k-liquid-evaporator"},
	max_health = 250,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 95}
	},
	fluid_boxes =
	{
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 5,
			base_level = -1,
			pipe_connections = {{ type="input", position = {0.5, 1.5} }}
		},						
		off_when_no_fluid_recipe = false
	},
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "k-flare-stack",
	animation =
    {
		north =
				{
			layers =
				{
				{
				filename = "__Krastorio__/graphics/entity/liquid-evaporator/liquid-evaporator-n.png",
				width = 75,
				height = 150,
				frame_count = 1,
				--line_length = 6,
				shift = {0, -1},
				--animation_speed = 0.5
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/liquid-evaporator/hr-liquid-evaporator-n.png",
					width = 150,
					height = 300,
					scale = 0.5,
					frame_count = 1,
					--line_length = 6,
					shift = {0, -1},
					--animation_speed = 0.5
					}
				},
				{
				filename = "__Krastorio__/graphics/entity/flare-stack/flare-stack-sh.png",
				priority = "high",
				scale = scale,
				width = 129,
				height = 47,
				shift = {1.1, 0.25},
				frame_count = 1,
				draw_as_shadow = true,
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/flare-stack/hr-flare-stack-sh.png",
					priority = "high",
					scale = scale,
					width = 258,
					height = 94,
					shift = {1.1, 0.25},
					frame_count = 1,
					draw_as_shadow = true,
					scale = 0.5
					}
				}
				}
				},
		east =
				{
				layers =
				{
				{
				filename = "__Krastorio__/graphics/entity/liquid-evaporator/liquid-evaporator-e.png",
				width = 75,
				height = 150,
				frame_count = 1,
				--line_length = 6,
				shift = {0, -1},
				--animation_speed = 0.5
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/liquid-evaporator/hr-liquid-evaporator-e.png",
					width = 150,
					height = 300,
					scale = 0.5,
					frame_count = 1,
					--line_length = 6,
					shift = {0, -1},
					--animation_speed = 0.5
					}
				},
				{
				filename = "__Krastorio__/graphics/entity/flare-stack/flare-stack-sh.png",
				priority = "high",
				scale = scale,
				width = 129,
				height = 47,
				shift = {1.1, 0.25},
				frame_count = 1,
				draw_as_shadow = true,
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/flare-stack/hr-flare-stack-sh.png",
					priority = "high",
					scale = scale,
					width = 258,
					height = 94,
					shift = {1.1, 0.25},
					frame_count = 1,
					draw_as_shadow = true,
					scale = 0.5
					}
				}
				}
				},
		south =
				{
				layers =
				{
				{
				filename = "__Krastorio__/graphics/entity/liquid-evaporator/liquid-evaporator-s.png",
				width = 75,
				height = 150,
				frame_count = 1,
				--line_length = 6,
				shift = {0, -1},
				--animation_speed = 0.5
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/liquid-evaporator/hr-liquid-evaporator-s.png",
					width = 150,
					height = 300,
					scale = 0.5,
					frame_count = 1,
					--line_length = 6,
					shift = {0, -1},
					--animation_speed = 0.5
					}
				},
				{
				filename = "__Krastorio__/graphics/entity/flare-stack/flare-stack-sh.png",
				priority = "high",
				scale = scale,
				width = 129,
				height = 47,
				shift = {1.1, 0.25},
				frame_count = 1,
				draw_as_shadow = true,
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/flare-stack/hr-flare-stack-sh.png",
					priority = "high",
					scale = scale,
					width = 258,
					height = 94,
					shift = {1.1, 0.25},
					frame_count = 1,
					draw_as_shadow = true,
					scale = 0.5
					}
				}
				}
				},
		west =
				{
				layers =
				{
				{
				filename = "__Krastorio__/graphics/entity/liquid-evaporator/liquid-evaporator-w.png",
				width = 75,
				height = 150,
				frame_count = 1,
				--line_length = 6,
				shift = {0, -1},
				--animation_speed = 0.5
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/liquid-evaporator/hr-liquid-evaporator-w.png",
					width = 150,
					height = 300,
					scale = 0.5,
					frame_count = 1,
					--line_length = 6,
					shift = {0, -1},
					--animation_speed = 0.5
					}
				},
				{
				filename = "__Krastorio__/graphics/entity/flare-stack/flare-stack-sh.png",
				priority = "high",
				scale = scale,
				width = 129,
				height = 47,
				shift = {1.1, 0.25},
				frame_count = 1,
				draw_as_shadow = true,
				hr_version =
					{
					filename = "__Krastorio__/graphics/entity/flare-stack/hr-flare-stack-sh.png",
					priority = "high",
					scale = scale,
					width = 258,
					height = 94,
					shift = {1.1, 0.25},
					frame_count = 1,
					draw_as_shadow = true,
					scale = 0.5
					}
				}
				}
				},
	},
	working_visualisations =
		{
			{
			apply_recipe_tint = "quaternary",
			fadeout = true,
			animation =
			{
			filename = "__Krastorio__/graphics/entity/liquid-evaporator/liquid-evaporator-steam.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 0.75,
			shift = {0, -3.50},
			}
			},
			
			{
			light =
			{
			intensity = 0.1,
			size = 10,
			shift = {0, 0},
			color = {r=1, g=1, b=1}
			}
			},
	
	},
	crafting_categories = {"k-liquid-evaporator"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
       working_sound =
       {
           sound =
       {
       {
           filename = "__Krastorio__/sound/liquid-evaporator.ogg",
           volume = 0.5
       }
       },
       idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
       apparent_volume = 1
       },
	crafting_speed = 1.0,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions_per_minute = 1,
	},
	energy_usage = "0.1MW",
    source_inventory_size = 1,
    result_inventory_size = 1,
	module_specification =
	{
		module_slots = 2
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "transport-belt",
    name = "k-transport-belt",
    icon = krstr_entities_icon_path .. "k-transport-belt_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "k-transport-belt"},
    max_health = 200,
    corpse = "k-transport-belt-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 50
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/transport-belt.ogg",
        volume = 0.4
      },
      persistent = true
    },
    animation_speed_coefficient = 32,
    animations =
    {
      filename = "__Krastorio__/graphics/entity/superior-belt/k-transport-belt.png",
      priority = "extra-high",
      width = 40,
      height = 40,
      frame_count = 32,
      direction_count = 12,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-belt/hr-k-transport-belt.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 32,
        direction_count = 12,
        scale = 0.5
      }
    },
    belt_animation_set = k_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.125,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
    circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "splitter",
    name = "k-splitter",
    icon = krstr_entities_icon_path .. "k-splitter_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "k-splitter"},
    max_health = 250,
    corpse = "k-splitter-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.9, -0.4}, {0.9, 0.4}},
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
    animation_speed_coefficient = 32,
    structure_animation_speed_coefficient = 1.2,
    structure_animation_movement_cooldown = 10,
    belt_animation_set = k_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.125,
    structure =
     {
      north =
      {
        filename = "__Krastorio__/graphics/entity/superior-belt/k-splitter-north.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 36,
        shift = util.by_pixel(6, 0),
        hr_version =
        {
          filename = "__Krastorio__/graphics/entity/superior-belt/hr-k-splitter-north.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 160,
          height = 70,
          shift = util.by_pixel(7, 0),
          scale = 0.5
        }
      },
      east =
      {
        filename = "__Krastorio__/graphics/entity/superior-belt/k-splitter-east.png",
		frame_count = 32,
		line_length = 8,
		priority = "extra-high",
		width = 46,
		height = 44,
        shift = util.by_pixel(4, 12),
        hr_version =
        {
          filename = "__Krastorio__/graphics/entity/superior-belt/hr-k-splitter-east.png",
		frame_count = 32,
		line_length = 8,
		priority = "extra-high",
		width = 90,
		height = 84,
          shift = util.by_pixel(4, 13),
          scale = 0.5
        }
      },
      south =
      {
        filename = "__Krastorio__/graphics/entity/superior-belt/k-splitter-south.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 32,
        shift = util.by_pixel(4, 0),
        hr_version =
        {
          filename = "__Krastorio__/graphics/entity/superior-belt/hr-k-splitter-south.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 164,
          height = 64,
          shift = util.by_pixel(4, 0),
          scale = 0.5
        }
      },
      west =
      {
        filename = "__Krastorio__/graphics/entity/superior-belt/k-splitter-west.png",
		frame_count = 32,
		line_length = 8,
		priority = "extra-high",
		width = 46,
		height = 44,
		shift = util.by_pixel(6, 12),
        hr_version =
        {
          filename = "__Krastorio__/graphics/entity/superior-belt/hr-k-splitter-west.png",
		frame_count = 32,
		line_length = 8,
		priority = "extra-high",
		width = 90,
		height = 86,
		shift = util.by_pixel(6, 12),
          scale = 0.5
        }
      }
     },
	 structure_patch =
		{
			north = util.empty_sprite(),
			east =
			{
				filename = "__Krastorio__/graphics/entity/superior-belt/k-splitter-east-top_patch.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 46,
				height = 52,
				shift = util.by_pixel(4, -20),
				hr_version =
				{
					filename = "__Krastorio__/graphics/entity/superior-belt/hr-k-splitter-east-top_patch.png",
					frame_count = 32,
					line_length = 8,
					priority = "extra-high",
					width = 90,
					height = 104,
					shift = util.by_pixel(4, -20),
					scale = 0.5
				}
			},
			south = util.empty_sprite(),
			west =
			{
				filename = "__Krastorio__/graphics/entity/superior-belt/k-splitter-west-top_patch.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 46,
				height = 48,
				shift = util.by_pixel(6, -18),
				hr_version =
				{
					filename = "__Krastorio__/graphics/entity/superior-belt/hr-k-splitter-west-top_patch.png",
					frame_count = 32,
					line_length = 8,
					priority = "extra-high",
					width = 90,
					height = 96,
					shift = util.by_pixel(6, -18),
					scale = 0.5
				}
			}
		}
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "underground-belt",
    name = "k-underground-belt",
	icon = krstr_entities_icon_path .. "k-underground-belt_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "k-underground-belt"},
    max_health = 200,
    corpse = "k-underground-belt-remnants",
    max_distance = 30,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    underground_remove_belts_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    animation_speed_coefficient = 32,
    belt_animation_set = k_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.125,
    structure =
     {
      direction_in =
      {
        sheet =
        {
          filename = "__Krastorio__/graphics/entity/superior-belt/k-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96,
          hr_version =
          {
            filename = "__Krastorio__/graphics/entity/superior-belt/hr-k-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192,
            scale = 0.5
          }
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__Krastorio__/graphics/entity/superior-belt/k-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__Krastorio__/graphics/entity/superior-belt/hr-k-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height =192,
            scale = 0.5
          }
        }
      },
      direction_in_side_loading =
      {
        sheet =
        {
          filename = "__Krastorio__/graphics/entity/superior-belt/k-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*3,
          hr_version =
          {
            filename = "__Krastorio__/graphics/entity/superior-belt/hr-k-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192*3,
            scale = 0.5
          }
        }
      },
      direction_out_side_loading =
      {
        sheet =
        {
          filename = "__Krastorio__/graphics/entity/superior-belt/k-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*2,
          hr_version =
          {
            filename = "__Krastorio__/graphics/entity/superior-belt/hr-k-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192*2,
            scale = 0.5
          }
        }
      },
      back_patch =
      {
        sheet =
        {
          filename = "__Krastorio__/graphics/entity/superior-belt/k-underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__Krastorio__/graphics/entity/superior-belt/hr-k-underground-belt-structure-back-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }
        }
      },
      front_patch =
      {
        sheet =
        {
          filename =  "__Krastorio__/graphics/entity/superior-belt/k-underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version =
          {
            filename = "__Krastorio__/graphics/entity/superior-belt/hr-k-underground-belt-structure-front-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5
          }
        }
      }
     }
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "container",
    name = "k-medium-g",
    icon = krstr_entities_icon_path .. "k_medium_g_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "k-medium-g"},
    max_health = 500,
    corpse = "big-remnants",
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1, -1}, {1, 1}},
	resistances = 
	{
	{type = "physical",percent = 30},
	{type = "fire",percent = 50},
	{type = "impact",percent = 50}
	},
    fast_replaceable_group = "container",
    inventory_size = 100,
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    opened_duration = logistic_chest_opened_duration,
    picture =
    {
		filename = "__Krastorio__/graphics/entity/chests/k-medium-g.png",
        priority = "extra-high",
        width = 85,
        height = 85,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/chests/hr-k-medium-g.png",
			priority = "extra-high",
			width = 340,
			height = 340,
			scale = 0.25,
			}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},	

-----------------------------------------------------------------------------------------------------------------

	{
    type = "logistic-container",
    name = "k-medium-s",
    icon = krstr_entities_icon_path .. "k_medium_s_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "k-medium-s"},
    max_health = 500,
    logistic_slots_count = 1,
    corpse = "medium-remnants",
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1, -1}, {1, 1}},
	resistances = 
	{
	{type = "physical",percent = 30},
	{type = "fire",percent = 50},
	{type = "impact",percent = 50}
	},
    fast_replaceable_group = "container",
    inventory_size = 100,
    logistic_mode = "storage",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    opened_duration = logistic_chest_opened_duration,
    animation =
    {
		filename = "__Krastorio__/graphics/entity/chests/k-medium-s.png",
        priority = "extra-high",
        width = 85,
        height = 85,
        frame_count = 6,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/chests/hr-k-medium-s.png",
			priority = "extra-high",
			width = 340,
			height = 340,
			frame_count = 6,
			line_length = 3,
			scale = 0.25,
			}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "logistic-container",
    name = "k-medium-b",
    icon = krstr_entities_icon_path .. "k_medium_b_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "k-medium-b"},
    max_health = 500,
    logistic_slots_count = 18,
    corpse = "medium-remnants",
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1, -1}, {1, 1}},
	resistances = 
	{
	{type = "physical",percent = 30},
	{type = "fire",percent = 50},
	{type = "impact",percent = 50}
	},
    fast_replaceable_group = "container",
    inventory_size = 100,
    logistic_mode = "buffer",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    opened_duration = logistic_chest_opened_duration,
    animation =
    {
		filename = "__Krastorio__/graphics/entity/chests/k-medium-b.png",
        priority = "extra-high",
        width = 85,
        height = 85,
        frame_count = 6,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/chests/hr-k-medium-b.png",
			priority = "extra-high",
			width = 340,
			height = 340,
			frame_count = 6,
			line_length = 3,
			scale = 0.25,
			}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    },
	
-----------------------------------------------------------------------------------------------------------------

	{
    type = "logistic-container",
    name = "k-medium-r",
    icon = krstr_entities_icon_path .. "k_medium_r_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "k-medium-r"},
    max_health = 500,
    logistic_slots_count = 18,
    corpse = "medium-remnants",
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1, -1}, {1, 1}},
	resistances = 
	{
	{type = "physical",percent = 30},
	{type = "fire",percent = 50},
	{type = "impact",percent = 50}
	},
    fast_replaceable_group = "container",
    inventory_size = 100,
    logistic_mode = "requester",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    opened_duration = logistic_chest_opened_duration,
    animation =
    {
		filename = "__Krastorio__/graphics/entity/chests/k-medium-r.png",
        priority = "extra-high",
        width = 85,
        height = 85,
        frame_count = 6,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/chests/hr-k-medium-r.png",
			priority = "extra-high",
			width = 340,
			height = 340,
			frame_count = 6,
			line_length = 3,
			scale = 0.25,
			}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "logistic-container",
    name = "k-medium-pp",
    icon = krstr_entities_icon_path .. "k_medium_pp_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "k-medium-pp"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1, -1}, {1, 1}},
	resistances = 
	{
	{type = "physical",percent = 30},
	{type = "fire",percent = 50},
	{type = "impact",percent = 50}
	},
    fast_replaceable_group = "container",
    inventory_size = 100,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    opened_duration = logistic_chest_opened_duration,
    animation =
    {
		filename = "__Krastorio__/graphics/entity/chests/k-medium-pp.png",
        priority = "extra-high",
        width = 85,
        height = 85,
        frame_count = 6,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/chests/hr-k-medium-pp.png",
			priority = "extra-high",
			width = 340,
			height = 340,
			frame_count = 6,
			line_length = 3,
			scale = 0.25,
			}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    },

-----------------------------------------------------------------------------------------------------------------

	{
    type = "logistic-container",
    name = "k-medium-ap",
    icon = krstr_entities_icon_path .. "k_medium_pp_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "k-medium-ap"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1, -1}, {1, 1}},
	resistances = 
	{
	{type = "physical",percent = 30},
	{type = "fire",percent = 50},
	{type = "impact",percent = 50}
	},
    fast_replaceable_group = "container",
    inventory_size = 100,
    logistic_mode = "active-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    opened_duration = logistic_chest_opened_duration,
    animation =
    {
		filename = "__Krastorio__/graphics/entity/chests/k-medium-ap.png",
        priority = "extra-high",
        width = 85,
        height = 85,
        frame_count = 6,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/chests/hr-k-medium-ap.png",
			priority = "extra-high",
			width = 340,
			height = 340,
			frame_count = 6,
			line_length = 3,
			scale = 0.25,
			}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    },
	
-----------------------------------------------------------------------------------------------------------------

	{
    type = "container",
    name = "k-big-g",
    icon = krstr_entities_icon_path .. "k_big_g_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "k-big-g"},
    max_health = 1500,
    corpse = "medium-k-remnants",
    collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
    selection_box = {{-3, -3}, {3, 3}},
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 75},
	{type = "impact",percent = 75}
	},
    fast_replaceable_group = "container",
    inventory_size = 750,
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    opened_duration = logistic_chest_opened_duration,
    picture =
    {
		filename = "__Krastorio__/graphics/entity/chests/k-big-g.png",
        priority = "extra-high",
        width = 213,
        height = 213,
        scale = 1.2,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/chests/hr-k-big-g.png",
			priority = "extra-high",
			width = 512,
			height = 512,
			scale = 0.5,
			}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = 20,
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "logistic-container",
    name = "k-big-s",
    icon = krstr_entities_icon_path .. "k_big_s_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "k-big-s"},
    max_health = 1500,
    logistic_slots_count = 1,
    corpse = "medium-k-remnants",
    collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
    selection_box = {{-3, -3}, {3, 3}},
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 75},
	{type = "impact",percent = 75}
	},
    fast_replaceable_group = "container",
    inventory_size = 750,
    logistic_mode = "storage",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    opened_duration = logistic_chest_opened_duration,
    animation =
    {
		filename = "__Krastorio__/graphics/entity/chests/k-big-s.png",
        priority = "extra-high",
        width = 213,
        height = 213,
        frame_count = 6,
		line_length = 2,
        scale = 1.2,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/chests/hr-k-big-s.png",
			priority = "extra-high",
			width = 512,
			height = 512,
			frame_count = 6,
			line_length = 3,
			scale = 0.5,
			}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = 20,
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "logistic-container",
    name = "k-big-pp",
    icon = krstr_entities_icon_path .. "k_big_pp_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "k-big-pp"},
    max_health = 1500,
    corpse = "medium-k-remnants",
    collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
    selection_box = {{-3, -3}, {3, 3}},
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 75},
	{type = "impact",percent = 75}
	},
    fast_replaceable_group = "container",
    inventory_size = 750,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    opened_duration = logistic_chest_opened_duration,
    animation =
    {
		filename = "__Krastorio__/graphics/entity/chests/k-big-pp.png",
        priority = "extra-high",
        width = 213,
        height = 213,
        frame_count = 6,
		line_length = 2,
        scale = 1.2,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/chests/hr-k-big-pp.png",
			priority = "extra-high",
			width = 512,
			height = 512,
			frame_count = 6,
			line_length = 3,
			scale = 0.5,
			}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = 20,
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    },

-----------------------------------------------------------------------------------------------------------------

	{
    type = "logistic-container",
    name = "k-big-r",
    icon = krstr_entities_icon_path .. "k_big_r_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "k-big-r"},
	logistic_slots_count = 30,
    max_health = 1500,
    corpse = "medium-k-remnants",
    collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
    selection_box = {{-3, -3}, {3, 3}},
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 75},
	{type = "impact",percent = 75}
	},
    fast_replaceable_group = "container",
    inventory_size = 750,
    logistic_mode = "requester",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    opened_duration = logistic_chest_opened_duration,
    animation =
    {
		filename = "__Krastorio__/graphics/entity/chests/k-big-r.png",
        priority = "extra-high",
        width = 213,
        height = 213,
        frame_count = 6,
		line_length = 2,
        scale = 1.2,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/chests/hr-k-big-r.png",
			priority = "extra-high",
			width = 512,
			height = 512,
			frame_count = 6,
			line_length = 3,
			scale = 0.5,
			}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = 20,
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    },

-----------------------------------------------------------------------------------------------------------------

	{
    type = "logistic-container",
    name = "k-big-b",
    icon = krstr_entities_icon_path .. "k_big_b_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "k-big-b"},
    max_health = 1500,
    logistic_slots_count = 30,
    corpse = "medium-k-remnants",
    collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
    selection_box = {{-3, -3}, {3, 3}},
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 75},
	{type = "impact",percent = 75}
	},
    fast_replaceable_group = "container",
    inventory_size = 750,
    logistic_mode = "buffer",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    opened_duration = logistic_chest_opened_duration,
    animation =
    {
		filename = "__Krastorio__/graphics/entity/chests/k-big-b.png",
        priority = "extra-high",
        width = 213,
        height = 213,
        frame_count = 6,
		line_length = 2,
        scale = 1.2,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/chests/hr-k-big-b.png",
			priority = "extra-high",
			width = 512,
			height = 512,
			frame_count = 6,
			line_length = 3,
			scale = 0.5,
			}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = 20,
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    },
	
-----------------------------------------------------------------------------------------------------------------
	
	{
    type = "logistic-container",
    name = "k-big-ap",
    icon = krstr_entities_icon_path .. "k_big_ap_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "k-big-ap"},
    max_health = 1500,
    corpse = "medium-k-remnants",
    collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
    selection_box = {{-3, -3}, {3, 3}},
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 75},
	{type = "impact",percent = 75}
	},
    fast_replaceable_group = "container",
    inventory_size = 750,
    logistic_mode = "active-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    opened_duration = logistic_chest_opened_duration,
    animation =
    {
		filename = "__Krastorio__/graphics/entity/chests/k-big-ap.png",
        priority = "extra-high",
        width = 213,
        height = 213,
        frame_count = 6,
		line_length = 2,
        scale = 1.2,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/chests/hr-k-big-ap.png",
			priority = "extra-high",
			width = 512,
			height = 512,
			frame_count = 6,
			line_length = 3,
			scale = 0.5,
			}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = 20,
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    },
	
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

	{
    type = "roboport",
    name = "drone-charging-station",
    icon = krstr_entities_icon_path .. "drone_charging_station_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "drone-charging-station"},
    max_health = 350,
    corpse = "big-remnants",
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1, -1}, {1, 1}},
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 75},
	{type = "impact",percent = 75}
	},
	dying_explosion = "medium-explosion",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "12MW",
      buffer_capacity = "300MJ"
    },
    recharge_minimum = "50MJ",
    energy_usage = "50kW",
    -- per one charge slot
    charging_energy = "3MW",
    logistics_radius = 18,
    construction_radius = 34,
    charge_approach_distance = 3,
    robot_slots_count = 0,
    material_slots_count = 0,
    stationing_offset = {0, 0},
    charging_offsets =
    {
      {-0.5, -1}, {-1, -0.5}, {-1, 0.5}, {-0.5, 1}, {0.5, 1}, {1, 0.5}, {1, -0.5}, {0.5, -1},
    },
    base =
    {
      filename = "__Krastorio__/graphics/entity/drone-charging-station/drone-charging-station.png",
      width = 85,
      height = 85,
	  shift = {0.15, -0.1},
	  scale = scale,
	  hr_version =
		{
		filename = "__Krastorio__/graphics/entity/drone-charging-station/hr-drone-charging-station.png",
		width = 170,
		height = 170,
		shift = {0.15, -0.1},
		scale = scale,
		scale = 0.5,
		}
    },
	  base_patch =
    {
      filename = "__Krastorio__/graphics/entity/empty.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    base_animation =
    {
      filename = "__Krastorio__/graphics/entity/drone-charging-station/drone-charging-station-animation.png",
      priority = "medium",
      width = 21,
      height = 15,
	  scale = scale,
      frame_count = 10,
	  line_length = 5,
	  shift = {0.03, -0.88},
      animation_speed = 0.1,
	  hr_version =
		{
		filename = "__Krastorio__/graphics/entity/drone-charging-station/hr-drone-charging-station-animation.png",
		priority = "medium",
		width = 42,
		height = 30,
		scale = scale,
		scale = 0.5,
		frame_count = 10,
		line_length = 5,
		shift = {0.03, -0.88},
		animation_speed = 0.1,
		}
    },
    door_animation_up =
    {
      filename = "__Krastorio__/graphics/entity/empty.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    door_animation_down =
    {
      filename = "__Krastorio__/graphics/entity/empty.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    recharging_animation =
    {
      filename = "__Krastorio__/graphics/entity/drone-charging-station/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    recharging_light = {intensity = 0.4, size = 5, color = {r = 1.0, g = 1.0, b = 1.0}},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 0.33,
  },

-----------------------------------------------------------------------------------------------------------------

	{
    type = "roboport",
    name = "drone-hub",
    icon = krstr_entities_icon_path .. "drone_hub_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "drone-hub"},
    max_health = 3500,
    corpse = "big-k-remnants",
    collision_box = {{-3.75, -3.75}, {3.75, 3.75}},
    selection_box = {{-4, -4}, {4, 4}},
	resistances = 
	{
	{type = "physical",percent = 60},
	{type = "fire",percent = 80},
	{type = "impact",percent = 80}
	},
    dying_explosion = "big-explosion",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "100MW",
      buffer_capacity = "1GJ"
    },
    recharge_minimum = "50MJ",
    energy_usage = "1MW",
    -- per one charge slot
    charging_energy = "5MW",
    logistics_radius = 100,
    construction_radius = 200,
    charge_approach_distance = 5,
    robot_slots_count = 20,
    material_slots_count = 10,
    stationing_offset = {0, 0},
    charging_offsets =
    {
      {-0.5, -3.6}, {-1.7, -3.3}, {-2.5, -2.7}, {-3.1, -1.9}, {-3.4, -0.9},       {0.5, -3.6}, {1.7, -3.3}, {2.5, -2.7}, {3.1, -1.9}, {3.4, -0.9},
      {0.5, 2.8}, {1.7, 2.5}, {2.5, 1.9}, {3.1, 1.2}, {3.4, 0.1},                 {-0.5, 2.8}, {-1.7, 2.5}, {-2.5, 1.9}, {-3.1, 1.2}, {-3.4, 0.1},
    },
    base =
    {
      filename = "__Krastorio__/graphics/entity/drone-hub/drone-hub.png",
      width = 340,
      height = 340,
	  shift = {0, 0.4},
	  hr_version =
		{
		filename = "__Krastorio__/graphics/entity/drone-hub/hr-drone-hub.png",
		width = 680,
		height = 680,
		shift = {0, 0.4},
		scale = 0.5,
		}
    },
    base_patch =
    {
      filename = "__Krastorio__/graphics/entity/drone-hub/drone-hub-patch.png",
      width = 65,
      height = 50,
	  shift = {0, 0.01},
	  hr_version =
		{
		filename = "__Krastorio__/graphics/entity/drone-hub/hr-drone-hub-patch.png",
		width = 130,
		height = 100,
		shift = {0, 0.01},
		scale = 0.5,
		}
    },
    base_animation =
    {
      filename = "__Krastorio__/graphics/entity/drone-hub/drone-hub-animation.png",
      priority = "medium",
      width = 187,
      height = 137,
	  line_length = 6,
      frame_count = 12,
	  shift = {0, -0.97},
      animation_speed = 0.1,
	  hr_version =
		{
		filename = "__Krastorio__/graphics/entity/drone-hub/hr-drone-hub-animation.png",
		priority = "medium",
		width = 374,
		height = 274,
		scale = 0.5,
		line_length = 6,
		frame_count = 12,
		shift = {0, -0.97},
		animation_speed = 0.1,
		}
    },
    door_animation_up =
    {
      filename = "__Krastorio__/graphics/entity/drone-hub/hub-door-up.png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0, -1.06},
	  hr_version =
		{
		filename = "__Krastorio__/graphics/entity/drone-hub/hr-hub-door-up.png",
		priority = "medium",
		width = 102,
		height = 43,
		scale = 0.5,
		frame_count = 16,
		shift = {0, -1.06},
		}
    },
    door_animation_down =
    {
      filename = "__Krastorio__/graphics/entity/drone-hub/hub-door-down.png",
      priority = "medium",
      width = 51,
      height = 18,
      frame_count = 16,
      shift = {0, -0.45},
	  hr_version =
		{
		filename = "__Krastorio__/graphics/entity/drone-hub/hr-hub-door-down.png",
		priority = "medium",
		width = 102,
		height = 36,
		scale = 0.5,
		frame_count = 16,
		shift = {0, -0.45},
		}
    },
	
    recharging_animation =
    {
      filename = "__Krastorio__/graphics/entity/drone-hub/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    recharging_light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 0,

    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,

    open_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.0 }
      }
    },
    close_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
      }
    },

    circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
    circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
    circuit_wire_max_distance = 20,

    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"},
	
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.6 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.6 },
	},
	
-----------------------------------------------------------------------------------------------------------------

	{
    type = "storage-tank",
    name = "fs-50",
    icon = krstr_entities_icon_path .. "fs_50_icon.png",
	icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "fs-50"},
    max_health = 750,
    corpse = "big-remnants",
	resistances = 
	{
	{type = "physical",percent = 35},
	{type = "fire",percent = 75},
	{type = "impact",percent = 50}
	},
    collision_box = {{-1.35, -1.35}, {1.35, 1.35}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_box =
    {
      base_area = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {-2, 0} },
		
        { position = {0, -2} },
		
		{ position = {2, 0} },
		
		{ position = {0, 2} },
      },
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    pictures =
    {
	picture =
		{
		sheet =
		  {
			filename = "__Krastorio__/graphics/entity/fs-50/fs-50.png",
			priority = "extra-high",
			frames = 1,
			width = 128,
			height = 128,
			hr_version =
				{
				filename = "__Krastorio__/graphics/entity/fs-50/hr-fs-50.png",
				priority = "extra-high",
				frames = 1,
				scale = 0.5,
				width = 256,
				height = 256,
				}
		  }
		},
		fluid_background =
	{
		filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
		priority = "extra-high",
		width = 32,
		height = 15
	},
		window_background =
	{
		filename = "__base__/graphics/entity/storage-tank/window-background.png",
		priority = "extra-high",
		width = 17,
		height = 24
	},
		flow_sprite =
	{
		filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
		priority = "extra-high",
		width = 160,
		height = 20
	},
		gas_flow =
	{
		filename = "__base__/graphics/entity/pipe/steam.png",
		priority = "extra-high",
		line_length = 10,
		width = 24,
		height = 15,
		frame_count = 60,
		axially_symmetrical = false,
		direction_count = 1,
		animation_speed = 0.25,
		hr_version =
	    {
		  filename = "__base__/graphics/entity/pipe/hr-steam.png",
		  priority = "extra-high",
		  line_length = 10,
		  width = 48,
		  height = 30,
		  frame_count = 60,
		  axially_symmetrical = false,
		  animation_speed = 0.25,
		  direction_count = 1
		}
	}
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.5
        },
      apparent_volume = 1.5,
      max_sounds_per_type = 3
    },
    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
    },

-----------------------------------------------------------------------------------------------------------------

	{
    type = "storage-tank",
    name = "fs-200",
    icon = krstr_entities_icon_path .. "fs_200_icon.png",
	icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "fs-200"},
    max_health = 2000,
    corpse = "medium-k-remnants",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 80},
	{type = "impact",percent = 80}
	},
    collision_box = {{-2.45, -2.45}, {2.45, 2.45}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    fluid_box =
    {
      base_area = 2000,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {-3, -1} },
        { position = {-3, 0} },
        { position = {-3, 1} },
		
        { position = {-1, -3} },
        { position = {-0, -3} },
        { position = {1, -3} },
		
		{ position = {3, -1} },
        { position = {3, 0} },
        { position = {3, 1} },
		
		{ position = {-1, 3} },
        { position = {0, 3} },
        { position = {1, 3} },
      },
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    pictures =
    {
	picture =
		{
		sheet =
		  {
			filename = "__Krastorio__/graphics/entity/fs-200/fs-200.png",
			priority = "extra-high",
			frames = 1,
			width = 213,
			height = 213,
			hr_version =
				{
				filename = "__Krastorio__/graphics/entity/fs-200/hr-fs-200.png",
				priority = "extra-high",
				frames = 1,
				scale = 0.5,
				width = 426,
				height = 426,
				}
		  }
		},
		fluid_background =
	{
		filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
		priority = "extra-high",
		width = 32,
		height = 15
	},
		window_background =
	{
		filename = "__base__/graphics/entity/storage-tank/window-background.png",
		priority = "extra-high",
		width = 17,
		height = 24
	},
		flow_sprite =
	{
		filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
		priority = "extra-high",
		width = 160,
		height = 20
	},
		gas_flow =
	{
		filename = "__base__/graphics/entity/pipe/steam.png",
		priority = "extra-high",
		line_length = 10,
		width = 24,
		height = 15,
		frame_count = 60,
		axially_symmetrical = false,
		direction_count = 1,
		animation_speed = 0.25,
		hr_version =
	    {
		  filename = "__base__/graphics/entity/pipe/hr-steam.png",
		  priority = "extra-high",
		  line_length = 10,
		  width = 48,
		  height = 30,
		  frame_count = 60,
		  axially_symmetrical = false,
		  animation_speed = 0.25,
		  direction_count = 1
		}
	}
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.5
        },
      apparent_volume = 1.5,
      max_sounds_per_type = 3
    },
    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = 20,
    },

-----------------------------------------------------------------------------------------------------------------

	{
	type = "assembling-machine",
	name = "matter-assembler",
	icon_size = 32,
	icon = krstr_entities_icon_path .. "matter_assembler_icon.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "matter-assembler"},
	max_health = 750,
	corpse = "medium-k-remnants",
	dying_explosion = "matter-explosion",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 70},
	{type = "impact",percent = 70}
	},
	fluid_boxes =
	{
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			base_area = 100,
			base_level = -1,
			pipe_connections = {{ type="input", position = {0, -3} }}
		},						
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			base_area = 100,
			base_level = 1,
			pipe_connections = {{ type="output", position = {-3, 0} }}
		},
					{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			base_area = 100,
			base_level = 1,
			pipe_connections = {{ type="output", position = {3, 0} }}
		},
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			base_area = 100,
			base_level = 1,
			pipe_connections = {{ type="output", position = {0, 3} }}
		},
		off_when_no_fluid_recipe = false
	},
	collision_box = {{-2.25, -2.25}, {2.25, 2.25}},
	selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
	---drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
	{
		filename = "__Krastorio__/graphics/entity/matter-assembler/matter-assembler.png",
		priority = "high",
		scale = scale,
		width = 213,
		height = 213,
		frame_count = 12,
		line_length = 6,
		nimation_speed = 0.1,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/matter-assembler/hr-matter-assembler.png",
			priority = "high",
			scale = scale,
			width = 426,
			height = 426,
			frame_count = 12,
			line_length = 6,
			scale = 0.5,
			nimation_speed = 0.1,
			}
	},
	
	working_visualisations =
	{
	{
	light =
	{
	intensity = 0.7,
	size = 15,
	shift = {0.0, 0.0},
	color = {r=0.1, g=0.5, b=1}
	}
	}
	},
	
	crafting_categories = {"matter-usage"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound =
	{
		sound =
	{
	{
		filename = "__Krastorio__/sound/matter-assembler.ogg",
		volume = 1
	}
	},
	idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
	apparent_volume = 1.5
	},
	crafting_speed = 1.0,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions_per_second_per_watt = 1 / 1000000
	},
	energy_usage = "10MW",
	ingredient_count = 6,
	module_specification =
	{
		module_slots = 4
	},
	allowed_effects = {"consumption", "productivity", "speed", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},

-----------------------------------------------------------------------------------------------------------------

	{
	type = "assembling-machine",
	name = "matter-converter",
	icon_size = 32,
	icon = krstr_entities_icon_path .. "matter-converter_icon.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "matter-converter"},
	max_health = 3000,
	corpse = "huge-kfc-remnants",
	dying_explosion = "big-matter-explosion",
	resistances = 
	{
	{type = "physical",percent = 60},
	{type = "fire",percent = 70},
	{type = "impact",percent = 70}
	},
	fluid_boxes =
	{
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 100,
			base_level = -1,
			pipe_connections = {{ type="input", position = {0, -4} }}
		},						
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 100,
			base_level = -1,
			pipe_connections = {{ type="input", position = {-4, 0} }}
		},
					{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 100,
			base_level = -1,
			pipe_connections = {{ type="input", position = {4, 0} }}
		},
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 100,
			base_level = 1,
			pipe_connections = {{ type="output", position = {0, 4} }}
		},
		off_when_no_fluid_recipe = false
	},
	collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
	selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
		{
		layers =
		{
		{
			filename = "__Krastorio__/graphics/entity/matter-converter/matter-converter.png",
			priority = "high",
			scale = scale,
			width = 268,
			height = 268,
			frame_count = 1,
			hr_version =
				{
				filename = "__Krastorio__/graphics/entity/matter-converter/hr-matter-converter.png",
				priority = "high",
				scale = scale,
				width = 536,
				height = 536,
				frame_count = 1,
				scale = 0.5,
				}
		},
		{
			filename = "__Krastorio__/graphics/entity/matter-converter/matter-converter-sh.png",
			priority = "high",
			scale = scale,
			width = 268,
			height = 268,
			frame_count = 1,
			draw_as_shadow = true,
			hr_version =
				{
				filename = "__Krastorio__/graphics/entity/matter-converter/hr-matter-converter-sh.png",
				priority = "high",
				scale = scale,
				width = 536,
				height = 536,
				frame_count = 1,
				draw_as_shadow = true,
				scale = 0.5,
				}
		}
		}
		},
	working_visualisations =
	{
		{
		animation =
		{
		  filename = "__Krastorio__/graphics/entity/matter-converter/matter-converter-working.png",
		  scale = scale,
		  width = 268,
		  height = 268,
		  frame_count = 16,
		  line_length = 4,
		  animation_speed=0.6,
		  hr_version =
			  {
			  filename = "__Krastorio__/graphics/entity/matter-converter/hr-matter-converter-working.png",
			  scale = scale,
			  width = 536,
			  height = 536,
			  frame_count = 16,
			  line_length = 4,
			  scale = 0.5,
			  animation_speed=0.6,
			  }
		},
		light =
		{
		intensity = 0.7,
		size = 15,
		shift = {2.0, 0.0},
		color = {r=0.1, g=0.5, b=1}
		}
		},
	},
	crafting_categories = {"matter-converter"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound =
	{
			sound =
		{
		{
			filename = "__Krastorio__/sound/matter-factory.ogg",
			volume = 1
		}
		},
		idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
		apparent_volume = 1.5
	},
	crafting_speed = 1.0,
	energy_source =
	{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 20
	},
	energy_usage = "35MW",
	ingredient_count = 6,
	module_specification =
	{
			module_slots = 4
	},
	allowed_effects = {"consumption", "speed", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},

-----------------------------------------------------------------------------------------------------------------

	{
	type = "furnace",
	name = "matter-factory",
	icon_size = 32,
	icon = krstr_entities_icon_path .. "matter_factory_icon.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "matter-factory"},
	max_health = 3000,
	result_inventory_size = 1,
	source_inventory_size = 1,
	corpse = "huge-kf-remnants",
	dying_explosion = "big-matter-explosion",
	resistances = 
	{
	{type = "physical",percent = 60},
	{type = "fire",percent = 70},
	{type = "impact",percent = 70}
	},
	fluid_boxes =
	{		
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{ type="input", position = {0, -4} }}
		},		
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{ type="output", position = {0, 4} }}
		},
		off_when_no_fluid_recipe = false
	},
	collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
	selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
		{
		layers =
		{
		{
			filename = "__Krastorio__/graphics/entity/matter-factory/matter-factory.png",
			priority = "high",
			scale = scale,
			width = 268,
			height = 268,
			frame_count = 1,
			hr_version =
				{
				filename = "__Krastorio__/graphics/entity/matter-factory/hr-matter-factory.png",
				priority = "high",
				scale = scale,
				width = 536,
				height = 536,
				frame_count = 1,
				scale = 0.5,
				}
		},
		{
			filename = "__Krastorio__/graphics/entity/matter-factory/matter-factory-sh.png",
			priority = "high",
			scale = scale,
			width = 268,
			height = 268,
			frame_count = 1,
			draw_as_shadow = true,
			hr_version =
				{
				filename = "__Krastorio__/graphics/entity/matter-factory/hr-matter-factory-sh.png",
				priority = "high",
				scale = scale,
				width = 536,
				height = 536,
				frame_count = 1,
				draw_as_shadow = true,
				scale = 0.5,
				}
		}
		}
		},
	working_visualisations =
    {
      {
        animation =
        {
          filename = "__Krastorio__/graphics/entity/matter-factory/matter-factory-working.png",
		  scale = scale,
		  width = 268,
		  height = 268,
		  frame_count = 16,
		  line_length = 4,
		  animation_speed=0.6,
		  hr_version =
			{
			filename = "__Krastorio__/graphics/entity/matter-factory/hr-matter-factory-working.png",
			scale = scale,
			width = 536,
			height = 536,
			frame_count = 16,
			line_length = 4,
			scale = 0.5,
			animation_speed=0.6,
			}
        },
		light =
		{
		intensity = 0.7,
		size = 20,
		shift = {2.0, 0.0},
		color = {r=0.1, g=0.5, b=1}
		}
      },
	  },
		crafting_categories = {"matter-extraction"},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
            sound =
        {
        {
            filename = "__Krastorio__/sound/matter-factory.ogg",
            volume = 1
        }
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
        apparent_volume = 1.5
        },
		crafting_speed = 1.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 10
		},
		energy_usage = "20MW",
		ingredient_count = 6,
		module_specification =
		{
			module_slots = 4
		},
	allowed_effects = {"consumption", "speed", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},

-----------------------------------------------------------------------------------------------------------------

	{
	type = "burner-generator",
	name = "antimatter-reactor-prototype",
	icon_size = 32,
	icon = krstr_entities_icon_path .. "antimatter_reactor_prototype_icon.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {mining_time = 2, result = "antimatter-reactor-prototype"},
	effectivity = 3.5,
	max_health = 3500,
	corpse = "big-krp-remnants",
	dying_explosion = "matter-explosion",
	fluid_usage_per_tick = 0,
	maximum_temperature=1000,
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 90},
	{type = "impact",percent = 90}
	},
	collision_box = {{-3.75, -3.75}, {3.75, 3.75}},
	selection_box = {{-3.95, -3.95}, {3.95, 3.95}},
	fluid_box =	
		{
			production_type = "input",
			--pipe_covers = pipecoverspictures(),
			--pipe_picture = krpipepictures(),
			base_area = 1,
			base_level = -1,
			pipe_connections = {{ type="input", position = {4, 0} }}
		},
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
	burner =
    {
      type = "burner",
	  fuel_category = "k-antimatter-fuel",
      fuel_inventory_size = 1,
      effectivity = 3.5,
	  emissions_per_minute = 200,
      light_flicker = {intensity = 2, minimum_light_size = 3, color = {r=0.35, g=0.75, b=1}},
    },	
	animation = 
	{
      filename = "__Krastorio__/graphics/entity/antimatter-reactor-prototype/antimatter-reactor-prototype.png",
	  scale = scale,
	  width = 310,
	  height = 310,
	  frame_count = 16,
	  line_length = 4,
	  animation_speed=0.8,
	  scale = 0.96,
	  hr_version =
		  {
		  filename = "__Krastorio__/graphics/entity/antimatter-reactor-prototype/hr-antimatter-reactor-prototype.png",
		  scale = scale,
		  width = 620,
		  height = 620,
		  frame_count = 16,
		  line_length = 4,
		  animation_speed=0.8,
		  scale = 0.48,
		  }
	},
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	working_sound =
	{
		sound = {
        {
            filename = "__Krastorio__/sound/antimatter-reactor-prototype.ogg",
            volume = 1.5
          },
        },
		match_speed_to_activity = true,
	},
	audible_distance_modifier = 8,
    min_perceived_performance = 0.2,
    performance_to_sound_speedup = 0.5,
    max_power_output = "500MW",
    },

-----------------------------------------------------------------------------------------------------------------

	{
	type = "burner-generator",
	name = "antimatter-reactor",
	icon_size = 32,
	icon = krstr_entities_icon_path .. "antimatter_reactor_icon.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {mining_time = 2, result = "antimatter-reactor"},
	max_health = 10000,
	corpse = "huge-kbr-remnants",
	dying_explosion = "big-matter-explosion",
	effectivity = 5,
	fluid_usage_per_tick = 0,
	maximum_temperature=1000,
	mode = "output-to-separate-pipe",
	resistances = 
	
	{
	{type = "physical",percent = 60},
	{type = "fire",percent = 90},
	{type = "impact",percent = 90}
	},
	
	collision_box = {{-4.75, -4.75}, {4.75, 4.75}},
	selection_box = {{-4.95, -4.95}, {4.95, 4.95}},
	fluid_box =
	{		
			production_type = "input",
			--pipe_covers = pipecoverspictures(),
			--pipe_picture = krpipepictures(),
			base_area = 1,
			base_level = -1,
			pipe_connections = {{ type="input", position = {5, 0} }}	
	},
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
	
	burner =
    {
      type = "burner",
	  fuel_category = "k-antimatter-fuel",
      fuel_inventory_size = 1,
      effectivity = 1,
	  effectivity = 5,
	  emissions_per_minute = 200,
      light_flicker = {intensity = 1.5, minimum_light_size = 3, color = {r=0.35, g=0.75, b=1}},
    },
     vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	 animation = 
	{
      filename = "__Krastorio__/graphics/entity/antimatter-reactor/antimatter-reactor.png",
      frame_count = 6,
	  scale = scale,
	  width = 400,
	  height = 400,
	  frame_count = 10,
	  line_length = 5,
	  animation_speed=1,
	  scale = 0.96,
	  hr_version =
		  {
		  filename = "__Krastorio__/graphics/entity/antimatter-reactor/hr-antimatter-reactor.png",
		  frame_count = 6,
		  scale = scale,
		  width = 800,
		  height = 800,
		  frame_count = 10,
		  line_length = 5,
		  animation_speed=1,
		  scale = 0.48,
		  }
	},	
		working_sound = {
        sound = {
        {
            filename = "__Krastorio__/sound/antimatter-reactor.ogg",
            volume = 1.75
          },
        },
	    },
	audible_distance_modifier = 10,
    min_perceived_performance = 0.2,
    performance_to_sound_speedup = 0.5,
    max_power_output = "2000MW",
    },

-----------------------------------------------------------------------------------------------------------------

	{
	type = "assembling-machine",
	name = "stabilizer-charging-station",
	icon_size = 32,
	icon = krstr_entities_icon_path .. "stabilizer_charging_station_icon.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 0.5, result = "stabilizer-charging-station"},
	max_health = 250,
	corpse = "big-remnants",
	resistances = 
	{
	{type = "physical",percent = 20},
	{type = "fire",percent = 35}
	},
	collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
	selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
	---drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
	{
		filename = "__Krastorio__/graphics/entity/stabilizer-charging-station/stabilizer-charging-station.png",
		priority = "high",
		width = 85,
		height = 85,
		frame_count = 6,
		line_length = 3,
		animation_speed = 0.2,
		hr_version =
          {
				filename = "__Krastorio__/graphics/entity/stabilizer-charging-station/hr-stabilizer-charging-station.png",
				priority = "high",
				width = 170,
				height = 170,
				frame_count = 6,
				line_length = 3,
				animation_speed = 0.2,
				scale = 0.5,
		  }
	},
	
	working_visualisations =
	{
	{
	light =
	{
	intensity = 0.5,
	size = 5,
	shift = {0.0, 0.3},
	color = {r=0.1, g=0.5, b=1}
	}
	}
	},
	
	crafting_categories = {"k-сharging"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound =
	{
		sound =
	{
	{
		filename = "__Krastorio__/sound/stabilizer-charging-station.ogg",
		volume = 0.75
	}
	},
	idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
	apparent_volume = 1.5
	},
	crafting_speed = 5.0,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions_per_second_per_watt = 1 / 1000000
	},
	energy_usage = "0.5MW",
	ingredient_count = 1,
	module_specification =
	{
		module_slots = 2
	},
	allowed_effects = {"consumption", "speed", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},

-----------------------------------------------------------------------------------------------------------------

	{
	type = "assembling-machine",
	name = "advanced-assembler",
	icon_size = 32,
	icon = krstr_entities_icon_path .. "advanced_assembler_icon.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "advanced-assembler"},
	max_health = 750,
	corpse = "medium-k-remnants",
	dying_explosion = "big-explosion",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 70},
	{type = "impact",percent = 70}
	},
	fluid_boxes =
	{
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			base_area = 100,
			base_level = -1,
			pipe_connections = {{ type="input-output", position = {0, -3} }}
		},						
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			base_area = 100,
			base_level = -1,
			pipe_connections = {{ type="input-output", position = {-3, 0} }}
		},
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			base_area = 100,
			base_level = -1,
			pipe_connections = {{ type="input-output", position = {3, 0} }}
		},
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			base_area = 100,
			base_level = 1,
			pipe_connections = {{ type="output", position = {0, 3} }}
		},
		off_when_no_fluid_recipe = false
	},
	collision_box = {{-2.25, -2.25}, {2.25, 2.25}},
	selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
	{
			filename = "__Krastorio__/graphics/entity/advanced-assembler/advanced-assembler.png",
			priority = "high",
			scale = scale,
			width = 213,
			height = 213,
			frame_count = 12,
			line_length = 6,
			animation_speed=0.1,
			hr_version =
			{
			filename = "__Krastorio__/graphics/entity/advanced-assembler/hr-advanced-assembler.png",
			priority = "high",
			scale = scale,
			width = 426,
			height = 426,
			frame_count = 12,
			line_length = 6,
			animation_speed=0.1,
			scale = 0.5,
			},
	},
	crafting_categories = {"basic-crafting", "crafting", "advanced-crafting", "advanced-assembler", "crafting-with-fluid", "k-research"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound =
	{
		sound =
	{
	{
		filename = "__Krastorio__/sound/matter-assembler.ogg",
		volume = 1
	}
	},
	idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
	apparent_volume = 1.5
	},
	crafting_speed = 3.0,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions_per_minute = 3
	},
	energy_usage = "1MW",
	ingredient_count = 10,
	module_specification =
	{
		module_slots = 4
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},
	
-----------------------------------------------------------------------------------------------------------------

	{
	type = "furnace",
	name = "k-air-purifier",
	icon_size = 32,
	icon = krstr_entities_icon_path .. "air-purifier_icon.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 0.5, result = "k-air-purifier"},
	result_inventory_size = 1,
	source_inventory_size = 1,
	max_health = 200,
	corpse = "medium-remnants",
	dying_explosion = "explosion",
	collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
	selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
	fast_replaceable_group = "assembling-machine",
	animation =
	{
		filename = "__Krastorio__/graphics/entity/air-purifier/air-purifier.png",
		priority = "high",
		scale = scale,
		width = 85,
		height = 85,
		frame_count = 18,
		line_length = 6,
		animation_speed=0.5,
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/air-purifier/hr-air-purifier.png",
			priority = "high",
			scale = scale,
			width = 170,
			height = 170,
			frame_count = 18,
			line_length = 6,
			animation_speed=0.5,
			scale = 0.5,
			}
	},
	crafting_categories = {"k-air-purifier"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound =
	{
		sound =
	{
	{
		filename = "__Krastorio__/sound/air-purifier.ogg",
		volume = 1
	}
	},
	idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
	apparent_volume = 1.5
	},
	crafting_speed = 1.0,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions_per_minute = -100
	},
	energy_usage = "75kW",
	ingredient_count = 1,
	module_specification =
	{
		module_slots = 1
	},
	allowed_effects = {"consumption", "speed", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},

-----------------------------------------------------------------------------------------------------------------

    {
    type = "beacon",
    name = "singularity-beacon",
	icon = "__Krastorio__/graphics/icons/entities/mip/singularity-beacon.png",
    icon_size = 64,
	icon_mipmaps = 1,
	pictures =
    {
      { size = 64, filename = "__Krastorio__/graphics/icons/entities/mip/singularity-beacon.png",   scale = 0.25, mipmap_count = 4 }
    }, 
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "singularity-beacon"},
    max_health = 350,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    allowed_effects = {"consumption", "speed", "pollution"},
    base_picture =
    {
      filename = "__Krastorio__/graphics/entity/singularity-beacon/singularity-beacon.png",
      width = 90,
      height = 90,
	  shift = util.by_pixel(0, -5),
	  hr_version =
          {
		  filename = "__Krastorio__/graphics/entity/singularity-beacon/hr-singularity-beacon.png",
		  width = 360,
		  height = 360,
		  shift = util.by_pixel(0, -5),
		  scale = 0.25,
		  }
    },
    animation =
    {
      filename = "__Krastorio__/graphics/entity/singularity-beacon/singularity-beacon-w.png",
      width = 48,
      height = 54,
	  frame_count = 10,
      line_length = 5,
	  shift = util.by_pixel(0, -11.5),
      animation_speed = 0.5,
	  hr_version =
          {
			  filename = "__Krastorio__/graphics/entity/singularity-beacon/hr-singularity-beacon-w.png",
			  width = 190,
			  height = 214,
			  frame_count = 10,
			  line_length = 5,
			  shift = util.by_pixel(0, -11.5),
			  scale = 0.25,
			  animation_speed = 0.5,
		  }
    },
	animation_shadow =
    {
      filename = "__Krastorio__/graphics/entity/singularity-beacon/singularity-beacon-ws.png",
      width = 10,
      height = 10,
	  frame_count = 10,
      line_length = 5,
      scale = scale,
	  scale = 0.5,
      animation_speed = 0.5
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
      priority = "extra-high-no-scale",
      width = 10,
      height = 10
    },
    supply_area_distance = 6.25,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_usage = "0.5MW",
    distribution_effectivity = bp,
    module_specification =
    {
      module_slots = 1,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.6 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.6 },
    },

-----------------------------------------------------------------------------------------------------------------

	{
    type = "accumulator",
    name = "imersite-accumulator",
    icon = krstr_entities_icon_path .. "imersite-accumulator_icon.png",
	fast_replaceable_group = "accumulator",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "imersite-accumulator"},
    max_health = 200,
    corpse = "accumulator-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "50MJ",
      usage_priority = "tertiary",
      input_flow_limit = "1MW",
      output_flow_limit = "2MW"
    },
    picture = imersite_accumulator_picture(),
    charge_animation = imersite_accumulator_charge(),
    charge_cooldown = 30,
    charge_light = {intensity = 0.5, size = 7, color = {r = 1.0, g = 0.5, b = 0.75}},
    discharge_animation = imersite_accumulator_discharge(),
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.95, size = 10, color = {r = 1.0, g = 0.5, b = 0.75}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound =
      {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
    },
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_output_signal = {type = "virtual", name = "signal-A"}
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "solar-panel",
    name = "imersite-solar-panel",
    icon = krstr_entities_icon_path .. "imersite-solar-panel_icon.png",
	fast_replaceable_group = "solar-panel",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "imersite-solar-panel"},
    max_health = 200,
    corpse = "imersite-solar-panel-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      layers =
      {
        {
			filename = "__Krastorio__/graphics/entity/imersite-solar-panel/imersite-solar-panel.png",
			priority = "high",
			width = 116,
			height = 112,
			shift = util.by_pixel(-3, 3),
			hr_version =
				{
				filename = "__Krastorio__/graphics/entity/imersite-solar-panel/hr-imersite-solar-panel.png",
				priority = "high",
				width = 230,
				height = 224,
				shift = util.by_pixel(-3, 3.5),
				scale = 0.5,
				}
        },
        {
            filename = "__Krastorio__/graphics/entity/imersite-solar-panel/imersite-solar-panel-shadow.png",
            priority = "high",
            width = 112,
            height = 90,
            shift = util.by_pixel(10, 6),
            draw_as_shadow = true,
            scale = 0.5,
				{
				filename = "__Krastorio__/graphics/entity/imersite-solar-panel/hr-imersite-solar-panel-shadow.png",
				priority = "high",
				width = 220,
				height = 180,
				shift = util.by_pixel(9.5, 6),
				draw_as_shadow = true,
				scale = 0.5
				}
        }
      }
    },
    overlay =
    {
      layers =
      {
        {
            filename = "__Krastorio__/graphics/entity/imersite-solar-panel/imersite-solar-panel-shadow-overlay.png",
            priority = "high",
            width = 108,
            height = 90,
            shift = util.by_pixel(11, 6),
			hr_version =
				{
				filename = "__Krastorio__/graphics/entity/imersite-solar-panel/hr-imersite-solar-panel-shadow-overlay.png",
				priority = "high",
				width = 214,
				height = 180,
				shift = util.by_pixel(10.5, 6),
				scale = 0.5
				}
        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    production = "120kW"
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "mining-drill",
    name = "k-big-drill",
    icon = krstr_entities_icon_path .. "big-drill_icon.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "k-big-drill"},
    fast_replaceable_group = "advanced-drill",
    max_health = 1000,
    resource_categories = {"gk-res"},
    corpse = "big-k-remnants",
    dying_explosion = "big-explosion",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 70},
	{type = "impact",percent = 70}
	},
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    energy_source =
    {
      type = "burner",
      fuel_category = "k-mining",
      effectivity = 0.75,
      fuel_inventory_size = 1,
      emissions_per_second_per_watt = 1 / 100000,
      smoke =
      {
        {
          name = "turbine-smoke",
          north_position = {0, -0.5},
          east_position = {0, -0.5},
          west_position = {0, -0.5},
          south_position = {0, -0.5},
          frequency = 40,
          starting_vertical_speed = 0.1,
          slow_down_factor = 1,
          starting_frame_deviation = 60
        },
      },
    },
    energy_usage = "1MW",
    mining_speed = 10,
    mining_power = 3,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -3.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    animations =
    {
		priority = "high",
		filename = "__Krastorio__/graphics/entity/big-drill/big-drill.png",
		line_length = 8,
		width = 250,
		height = 250,
		frame_count = 48,
		shift = {0.4, 0},
		animation_speed = 0.25,
		hr_version =
		  {
			priority = "high",
			filename = "__Krastorio__/graphics/entity/big-drill/hr-big-drill.png",
			line_length = 8,
			width = 500,
			height = 500,
			frame_count = 48,
			shift = {0.4, 0},
			animation_speed = 0.25,
			scale = 0.5
		  }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound =
    {
      sound = { filename = "__base__/sound/electric-mining-drill.ogg" },
      apparent_volume = 1.5
    },
    idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "mining-drill",
    name = "k-advanced-big-drill",
    icon = krstr_entities_icon_path .. "advanced-big-drill_icon.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "k-advanced-big-drill"},
    fast_replaceable_group = "advanced-drill",
    max_health = 1500,
    resource_categories = {"gk-res"},
    corpse = "big-k-remnants",
    dying_explosion = "big-explosion",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 70},
	{type = "impact",percent = 70}
	},
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    energy_source =
    {
      type = "burner",
      fuel_category = "k-mining",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_second_per_watt = 1 / 100000,
      smoke =
      {
        {
          name = "turbine-smoke",
          north_position = {0, -0.5},
          east_position = {0, -0.5},
          west_position = {0, -0.5},
          south_position = {0, -0.5},
          frequency = 40,
          starting_vertical_speed = 0.1,
          slow_down_factor = 1,
          starting_frame_deviation = 60
        },
      },
    },
    energy_usage = "2MW",
    mining_speed = 20,
    mining_power = 3,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -3.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    animations =
    {
		priority = "high",
		filename = "__Krastorio__/graphics/entity/advanced-big-drill/advanced-big-drill.png",
		line_length = 8,
		width = 250,
		height = 250,
		frame_count = 48,
		shift = {0.4, 0},
		animation_speed = 0.25,
        hr_version =
			{
			priority = "high",
			filename = "__Krastorio__/graphics/entity/advanced-big-drill/hr-advanced-big-drill.png",
			line_length = 8,
			width = 500,
			height = 500,
			frame_count = 48,
			shift = {0.4, 0},
			animation_speed = 0.25,
			scale = 0.5
			}
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound =
    {
      sound = { filename = "__base__/sound/electric-mining-drill.ogg" },
      apparent_volume = 1.5
    },
    idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
	},

-----------------------------------------------------------------------------------------------------------------

	{
	type = "furnace",
	name = "k-deep-mining-drill",
	icon = krstr_entities_icon_path .. "deep-mining-drill_icon.png",
	icon_size = 32,
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "k-deep-mining-drill"},
	result_inventory_size = 1,
	source_inventory_size = 1,
	max_health = 1500,
	corpse = "big-k-remnants",
	dying_explosion = "big-explosion",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 70},
	{type = "impact",percent = 70}
	},
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
    {
		priority = "high",
		filename = "__Krastorio__/graphics/entity/deep-mining-drill/deep-mining-drill.png",
		scale = scale,
		line_length = 8,
		width = 250,
		height = 250,
		frame_count = 48,
		shift = {0.4, 0},
		animation_speed = 0.5,
		hr_version =
			{
			priority = "high",
			filename = "__Krastorio__/graphics/entity/deep-mining-drill/hr-deep-mining-drill.png",
			scale = scale,
			line_length = 8,
			width = 500,
			height = 500,
			frame_count = 48,
			shift = {0.4, 0},
			animation_speed = 0.5,
			scale = 0.5
			}
    },
	crafting_categories = {"k-d-mining"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound =
    {
      sound = { filename = "__base__/sound/electric-mining-drill.ogg" },
      apparent_volume = 1.5
    },
    idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
	crafting_speed = 1.0,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions_per_minute=20
	},
	energy_usage = "5MW",
	ingredient_count = 6,
	module_specification =
	{
		module_slots = 4
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},

-----------------------------------------------------------------------------------------------------------------

    {
    type = "lab",
    name = "k-lab",
    icon = krstr_entities_icon_path .. "lab_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "k-lab"},
    max_health = 150,
    corpse = "lab-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
    on_animation =
    {
      layers =
      {
        {
          filename = "__Krastorio__/graphics/entity/lab/lab.png",
          width = 97,
          height = 87,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 1.5),
		  hr_version =
			  {
			  filename = "__Krastorio__/graphics/entity/lab/hr-lab.png",
			  width = 194,
			  height = 174,
			  frame_count = 33,
			  line_length = 11,
			  animation_speed = 1 / 3,
			  shift = util.by_pixel(0, 1.5),
			  scale = 0.5,
			  }
        },
        {
          filename = "__Krastorio__/graphics/entity/lab/lab-integration.png",
          width = 121,
          height = 81,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 15.5),
		  hr_version =
			  {
			  filename = "__Krastorio__/graphics/entity/lab/hr-lab-integration.png",
			  width = 242,
			  height = 162,
			  frame_count = 1,
			  line_length = 1,
			  repeat_count = 33,
			  animation_speed = 1 / 3,
			  shift = util.by_pixel(0, 15.5),
			  scale = 0.5,
			  }
        },
        {
          filename = "__Krastorio__/graphics/entity/lab/lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
		  hr_version =
			  {
			  filename = "__Krastorio__/graphics/entity/lab/hr-lab-shadow.png",
			  width = 242,
			  height = 136,
			  frame_count = 1,
			  line_length = 1,
			  repeat_count = 33,
			  animation_speed = 1 / 3,
			  shift = util.by_pixel(13, 11),
			  scale = 0.5,
			  draw_as_shadow = true,
			  }
        }
      }
    },
    off_animation =
    {
      layers =
      {
        {
          filename = "__Krastorio__/graphics/entity/lab/lab.png",
          width = 97,
          height = 87,
          frame_count = 1,
          shift = util.by_pixel(0, 1.5),
		  hr_version =
			  {
			  filename = "__Krastorio__/graphics/entity/lab/hr-lab.png",
			  width = 194,
			  height = 174,
			  frame_count = 1,
			  shift = util.by_pixel(0, 1.5),
			  scale = 0.5,
			  }
        },
        {
          filename = "__Krastorio__/graphics/entity/lab/lab-integration.png",
          width = 121,
          height = 81,
          frame_count = 1,
          shift = util.by_pixel(0, 15.5),
		  hr_version =
			  {
			  filename = "__Krastorio__/graphics/entity/lab/hr-lab-integration.png",
			  width = 242,
			  height = 162,
			  frame_count = 1,
			  shift = util.by_pixel(0, 15.5),
			  scale = 0.5,
			  }
        },
        {
          filename = "__Krastorio__/graphics/entity/lab/lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
		  hr_version =
			  {
			  filename = "__Krastorio__/graphics/entity/lab/hr-lab-shadow.png",
			  width = 242,
			  height = 136,
			  frame_count = 1,
			  shift = util.by_pixel(13, 11),
			  scale = 0.5,
			  draw_as_shadow = true,
			  }
        }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "250kW",
    researching_speed = 1,
    inputs =
    {
		"automation-research-data",
		"logistic-research-data",
		"military-research-data",
		"chemical-research-data",
		"scientific-research-data",
		"matter-research-data",
		"optimization-research-data"
    },
    module_specification =
    {
      module_slots = 4,
      max_entity_info_module_icons_per_row = 3,
      max_entity_info_module_icon_rows = 1,
      module_info_icon_shift = {0, 0.9}
    }
	},
	
-----------------------------------------------------------------------------------------------------------------

	{
    type = "assembling-machine",
    name = "k-quantum-computer",
    icon = krstr_entities_icon_path .. "quantum-computer_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "k-quantum-computer"},
    max_health = 3500,
    corpse = "medium-k-remnants",
    dying_explosion = "medium-explosion",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 70},
	{type = "impact",percent = 70}
	},
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    selection_box = {{-2.95, -2.95}, {2.95, 2.95}},
    fast_replaceable_group = "assembling-machine",
    ---alert_icon_shift = util.by_pixel(-3, -12),
    animation =
    {
		filename = "__Krastorio__/graphics/entity/quantum-computer/quantum-computer.png",
		priority="high",
		width = 250,
		height = 250,
		frame_count = 48,
		line_length = 8,
		animation_speed = 0.05,
		--shift = util.by_pixel(0, 2),
		hr_version =
			{
			filename = "__Krastorio__/graphics/entity/quantum-computer/hr-quantum-computer.png",
			priority="high",
			width = 500,
			height = 500,
			frame_count = 48,
			line_length = 8,
			animation_speed = 0.05,
			--shift = util.by_pixel(0, 2),
			scale = 0.5
			}
    },
    crafting_categories = {"k-research"},
    crafting_speed = 30,
    energy_source =
    {
	  type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 10,
    },
    energy_usage = "10MW",
	
	working_visualisations =
		{
		{
		light =
		{
		intensity = 0.75,
		size = 20,
		shift = {0.0, 0.0},
		color = {r=0.35, g=0.75, b=1}
	    }
		}
		},
		
	module_specification =
		{
			module_slots = 6
		},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__Krastorio__/sound/quantum-computer.ogg",
        volume = 1
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5
    }
	},

-----------------------------------------------------------------------------------------------------------------

	{
	type = "assembling-machine",
	name = "k-research-server-mk1",
	icon_size = 32,
	icon = krstr_entities_icon_path .. "research-server-mk1_icon.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 0.5, result = "k-research-server-mk1"},
	max_health = 250,
	corpse = "medium-remnants",
	resistances = 
	{
	{type = "physical",percent = 20},
	{type = "fire",percent = 20}
	},
	collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
	selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
	---drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
	{
		filename = "__Krastorio__/graphics/entity/research-server-mk1/research-server-mk1.png",
		priority = "high",
		scale = scale,
		width = 85,
		height = 85,
		shift = {0.13, 0},
		frame_count = 16,
		line_length = 4,
		animation_speed = 0.75,
		hr_version =
          {
			filename = "__Krastorio__/graphics/entity/research-server-mk1/hr-research-server-mk1.png",
			priority = "high",
			scale = scale,
			width = 170,
			height = 170,
			shift = {0.13, 0},
			frame_count = 16,
			line_length = 4,
			animation_speed = 0.75,
			scale = 0.5,
		  }
	},
	
	working_visualisations =
	{
	{
	light =
	{
	intensity = 0.5,
	size = 5,
	shift = {0.0, 0.3},
	color = {r=0.1, g=0.5, b=1}
	}
	}
	},
	
	crafting_categories = {"k-research"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound =
	{
		sound =
	{
	{
		filename = "__Krastorio__/sound/small-research-server.ogg",
		volume = 0.5
	}
	},
	idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
	apparent_volume = 1.5
	},
	crafting_speed = 1,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions_per_minute = 0.5
	},
	energy_usage = "0.2MW",
	ingredient_count = 6,
	module_specification =
	{
		module_slots = 2
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},

-----------------------------------------------------------------------------------------------------------------

	{
	type = "assembling-machine",
	name = "k-research-server-mk2",
	icon_size = 32,
	icon = krstr_entities_icon_path .. "research-server-mk2_icon.png",
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {mining_time = 0.5, result = "k-research-server-mk2"},
	max_health = 250,
	corpse = "medium-remnants",
	resistances = 
	{
	{type = "physical",percent = 20},
	{type = "fire",percent = 20}
	},
	collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
	selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
	---drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
	fast_replaceable_group = "assembling-machine",
	animation =
	{
		filename = "__Krastorio__/graphics/entity/research-server-mk2/research-server-mk2.png",
		priority = "high",
		scale = scale,
		width = 85,
		height = 85,
		shift = {0.13, 0},
		frame_count = 16,
		line_length = 4,
		animation_speed = 0.5,
		hr_version =
          {
			filename = "__Krastorio__/graphics/entity/research-server-mk2/hr-research-server-mk2.png",
			priority = "high",
			scale = scale,
			width = 170,
			height = 170,
			shift = {0.13, 0},
			frame_count = 16,
			line_length = 4,
			animation_speed = 0.5,
			scale = 0.5,
		  }
	},
	
	working_visualisations =
	{
	{
	light =
	{
	intensity = 0.5,
	size = 5,
	shift = {0.0, 0.3},
	color = {r=0.1, g=0.5, b=1}
	}
	}
	},
	
	crafting_categories = {"k-research"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound =
	{
		sound =
	{
	{
		filename = "__Krastorio__/sound/small-research-server.ogg",
		volume = 0.5
	}
	},
	idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
	apparent_volume = 1.5
	},
	crafting_speed = 2,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions_per_minute = 0.5
	},
	energy_usage = "0.25MW",
	ingredient_count = 6,
	module_specification =
	{
		module_slots = 2
	},
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},

-----------------------------------------------------------------------------------------------------------------

	{
	type = "ammo-turret",
	name = "railgun-turret",
	icon = krstr_entities_icon_path .. "railgun_turret_icon.png",
	icon_size = 32,
	flags = {"placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "railgun-turret"},
	max_health = 1500,
	corpse = "big-remnants",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 75},
	{type = "impact",percent = 75}
	},
	collision_box = {{-1.75, -1.75 }, {1.75, 1.75}},
	selection_box = {{-2, -2 }, {2, 2}},
	rotation_speed = 0.002,
	preparing_speed = 0.04,
	folding_speed = 0.04,
	dying_explosion = "big-explosion",
	inventory_size = 1,
	automated_ammo_count = 10,
	attacking_speed = 0.5,
	folded_animation = cannon_turret_sheet{direction_count = 8, line_length = 1},
	preparing_animation = cannon_turret_sheet{direction_count = 8, line_length = 1},
	prepared_animation = cannon_turret_sheet{},
	attacking_animation = cannon_turret_attack_sheet{direction_count = 8, line_length = 1},
	folding_animation = cannon_turret_sheet{direction_count = 8, line_length = 1, run_mode = "backward"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	attack_parameters =
	{
	  type = "projectile",
	  ammo_category = "railgun-shell",
	  cooldown = 120,
	  --turn_range = 1/6.5,
	  projectile_creation_distance = 2.65,
	  projectile_center = {0, 0.4},
	  --damage_modifier = 1.25,
	  shell_particle =
	  {
	   name = "shell-particle",
	   direction_deviation = 0.1,
	   speed = 0.1,
	   speed_deviation = 0.02,
	   center = {0, 0},
	   creation_distance = -3.5,
	   starting_frame_speed = 0.3,
	   starting_frame_speed_deviation = 0.1
	  },
	  range = 50,
	  min_range = 20,
	  sound =
	  {
		{
			filename = "__Krastorio__/sound/railgun.ogg",
			volume = 1.5
		}
	  },
	},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	call_for_help_radius = 80
	},

-----------------------------------------------------------------------------------------------------------------

	{
	type = "ammo-turret",
	name = "rocket-turret",
	icon = krstr_entities_icon_path .. "rocket_turret_icon.png",
	icon_size = 32,
	flags = {"placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "rocket-turret"},
	max_health = 1500,
	corpse = "big-remnants",
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 75},
	{type = "impact",percent = 75}
	},
	collision_box = {{-1.75, -1.75 }, {1.75, 1.75}},
	selection_box = {{-2, -2 }, {2, 2}},
	rotation_speed = 0.002,
	preparing_speed = 0.04,
	folding_speed = 0.04,
	dying_explosion = "big-explosion",
	inventory_size = 1,
	automated_ammo_count = 10,
	attacking_speed = 0.5,
	folded_animation = rocket_turret_sheet{direction_count = 8, line_length = 1},
	preparing_animation = rocket_turret_sheet{direction_count = 8, line_length = 1},
	prepared_animation = rocket_turret_sheet{},
	attacking_animation = rocket_turret_sheet{},
	folding_animation = rocket_turret_sheet{direction_count = 8, line_length = 1, run_mode = "backward"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	attack_parameters =
	  {
		type = "projectile",
		  ammo_category = "missiles-for-turrets",
		  cooldown = 120,
		  turn_range = 1/7,
		  projectile_creation_distance = 2.65,
		  projectile_center = {0, 0.4},
		  --damage_modifier = 1.25,
		  shell_particle =
		{
		   name = "shell-particle",
		   direction_deviation = 0.1,
		   speed = 0.1,
		   speed_deviation = 0.02,
		   center = {0, 0},
		   creation_distance = -3.5,
		   starting_frame_speed = 0.3,
		   starting_frame_speed_deviation = 0.1
		},
	range = 80,
	min_range = 35,
	sound =
		{
		  {
			filename = "__Krastorio__/sound/rocket-launch.ogg",
			volume = 0.8
		  }
		},
	  },
	shoot_in_prepare_state = false,
    turret_base_has_direction = true,
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	call_for_help_radius = 85
	},

-----------------------------------------------------------------------------------------------------------------

   {
    type = "wall",
    name = "k-wall",
    icon = krstr_entities_icon_path .. "reinforced-wall_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    minable = {mining_time = 0.2, result = "k-wall"},
    fast_replaceable_group = "wall",
    max_health = 600,
    repair_speed_modifier = 2,
    corpse = "wall-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
    -- this kind of code can be used for having walls mirror the effect
    -- there can be multiple reaction items
    --attack_reaction =
    --{
      --{
        ---- how far the mirroring works
        --range = 2,
        ---- what kind of damage triggers the mirroring
        ---- if not present then anything triggers the mirroring
        --damage_type = "physical",
        ---- caused damage will be multiplied by this and added to the subsequent damages
        --reaction_modifier = 0.1,
        --action =
        --{
          --type = "direct",
          --action_delivery =
          --{
            --type = "instant",
            --target_effects =
            --{
              --type = "damage",
              ---- always use at least 0.1 damage
              --damage = {amount = 0.1, type = "physical"}
            --}
          --}
        --},
      --}
    --},
    connected_gate_visualization =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "physical",
        decrease = 5,
        percent = 20
      },
      {
        type = "impact",
        decrease = 100,
        percent = 75
      },
      {
        type = "explosion",
        decrease = 500,
        percent = 99.5
      },
      {
        type = "fire",
        percent = 99.5
      },
      {
        type = "acid",
        percent = 50
      },
      {
        type = "laser",
        percent = 50
      }
    },
    pictures =
    {
      single =
      {
        layers =
        {
          {
            filename = "__Krastorio__/graphics/entity/wall/wall-single.png",
            priority = "extra-high",
            width = 32,
            height = 46,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, -6),
            hr_version =
				{
				filename = "__Krastorio__/graphics/entity/wall/hr-wall-single.png",
				priority = "extra-high",
				width = 64,
				height = 86,
				variation_count = 2,
				line_length = 2,
				shift = util.by_pixel(0, -5),
				scale = 0.5
				}
          },
          {
            filename = "__base__/graphics/entity/wall/wall-single-shadow.png",
            priority = "extra-high",
            width = 50,
            height = 32,
            repeat_count = 2,
            shift = util.by_pixel(10, 16),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-single-shadow.png",
              priority = "extra-high",
              width = 98,
              height = 60,
              repeat_count = 2,
              shift = util.by_pixel(10, 17),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      straight_vertical =
      {
        layers =
        {
          {
            filename = "__Krastorio__/graphics/entity/wall/wall-vertical.png",
            priority = "extra-high",
            width = 32,
            height = 68,
            variation_count = 5,
            line_length = 5,
            shift = util.by_pixel(0, 8),
            hr_version =
            {
              filename = "__Krastorio__/graphics/entity/wall/hr-wall-vertical.png",
              priority = "extra-high",
              width = 64,
              height = 134,
              variation_count = 5,
              line_length = 5,
              shift = util.by_pixel(0, 8),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/wall/wall-vertical-shadow.png",
            priority = "extra-high",
            width = 50,
            height = 58,
            repeat_count = 5,
            shift = util.by_pixel(10, 28),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-vertical-shadow.png",
              priority = "extra-high",
              width = 98,
              height = 110,
              repeat_count = 5,
              shift = util.by_pixel(10, 29),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      straight_horizontal =
      {
        layers =
        {
          {
            filename = "__Krastorio__/graphics/entity/wall/wall-horizontal.png",
            priority = "extra-high",
            width = 32,
            height = 50,
            variation_count = 6,
            line_length = 6,
            shift = util.by_pixel(0, -4),
            hr_version =
            {
              filename = "__Krastorio__/graphics/entity/wall/hr-wall-horizontal.png",
              priority = "extra-high",
              width = 64,
              height = 92,
              variation_count = 6,
              line_length = 6,
              shift = util.by_pixel(0, -2),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/wall/wall-horizontal-shadow.png",
            priority = "extra-high",
            width = 62,
            height = 36,
            repeat_count = 6,
            shift = util.by_pixel(14, 14),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-horizontal-shadow.png",
              priority = "extra-high",
              width = 124,
              height = 68,
              repeat_count = 6,
              shift = util.by_pixel(14, 15),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      corner_right_down =
      {
        layers =
        {
          {
            filename = "__Krastorio__/graphics/entity/wall/wall-corner-right.png",
            priority = "extra-high",
            width = 32,
            height = 64,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, 6),
            hr_version =
            {
              filename = "__Krastorio__/graphics/entity/wall/hr-wall-corner-right.png",
              priority = "extra-high",
              width = 64,
              height = 128,
              variation_count = 2,
              line_length = 2,
              shift = util.by_pixel(0, 7),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/wall/wall-corner-right-shadow.png",
            priority = "extra-high",
            width = 62,
            height = 60,
            repeat_count = 2,
            shift = util.by_pixel(14, 28),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-corner-right-shadow.png",
              priority = "extra-high",
              width = 124,
              height = 120,
              repeat_count = 2,
              shift = util.by_pixel(17, 28),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      corner_left_down =
      {
        layers =
        {
          {
            filename = "__Krastorio__/graphics/entity/wall/wall-corner-left.png",
            priority = "extra-high",
            width = 32,
            height = 68,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, 6),
            hr_version =
            {
              filename = "__Krastorio__/graphics/entity/wall/hr-wall-corner-left.png",
              priority = "extra-high",
              width = 64,
              height = 134,
              variation_count = 2,
              line_length = 2,
              shift = util.by_pixel(0, 7),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/wall/wall-corner-left-shadow.png",
            priority = "extra-high",
            width = 54,
            height = 60,
            repeat_count = 2,
            shift = util.by_pixel(8, 28),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-corner-left-shadow.png",
              priority = "extra-high",
              width = 102,
              height = 120,
              repeat_count = 2,
              shift = util.by_pixel(9, 28),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      t_up =
      {
        layers =
        {
          {
            filename = "__Krastorio__/graphics/entity/wall/wall-t.png",
            priority = "extra-high",
            width = 32,
            height = 68,
            variation_count = 4,
            line_length = 4,
            shift = util.by_pixel(0, 6),
            hr_version =
            {
              filename = "__Krastorio__/graphics/entity/wall/hr-wall-t.png",
              priority = "extra-high",
              width = 64,
              height = 134,
              variation_count = 4,
              line_length = 4,
              shift = util.by_pixel(0, 7),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/wall/wall-t-shadow.png",
            priority = "extra-high",
            width = 62,
            height = 60,
            repeat_count = 4,
            shift = util.by_pixel(14, 28),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-t-shadow.png",
              priority = "extra-high",
              width = 124,
              height = 120,
              repeat_count = 4,
              shift = util.by_pixel(14, 28),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      ending_right =
      {
        layers =
        {
          {
            filename = "__Krastorio__/graphics/entity/wall/wall-ending-right.png",
            priority = "extra-high",
            width = 32,
            height = 48,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, -4),
            hr_version =
            {
              filename = "__Krastorio__/graphics/entity/wall/hr-wall-ending-right.png",
              priority = "extra-high",
              width = 64,
              height = 92,
              variation_count = 2,
              line_length = 2,
              shift = util.by_pixel(0, -3),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/wall/wall-ending-right-shadow.png",
            priority = "extra-high",
            width = 62,
            height = 36,
            repeat_count = 2,
            shift = util.by_pixel(14, 14),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-ending-right-shadow.png",
              priority = "extra-high",
              width = 124,
              height = 68,
              repeat_count = 2,
              shift = util.by_pixel(17, 15),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      ending_left =
      {
        layers =
        {
          {
            filename = "__Krastorio__/graphics/entity/wall/wall-ending-left.png",
            priority = "extra-high",
            width = 32,
            height = 48,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, -4),
            hr_version =
            {
              filename = "__Krastorio__/graphics/entity/wall/hr-wall-ending-left.png",
              priority = "extra-high",
              width = 64,
              height = 92,
              variation_count = 2,
              line_length = 2,
              shift = util.by_pixel(0, -3),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/wall/wall-ending-left-shadow.png",
            priority = "extra-high",
            width = 54,
            height = 36,
            repeat_count = 2,
            shift = util.by_pixel(8, 14),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-ending-left-shadow.png",
              priority = "extra-high",
              width = 102,
              height = 68,
              repeat_count = 2,
              shift = util.by_pixel(9, 15),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      filling =
      {
        filename = "__Krastorio__/graphics/entity/wall/wall-filling.png",
          priority = "extra-high",
          width = 24,
          height = 30,
          variation_count = 8,
          line_length = 8,
          shift = util.by_pixel(0, -2),
          hr_version =
          {
            filename = "__Krastorio__/graphics/entity/wall/hr-wall-filling.png",
            priority = "extra-high",
            width = 48,
            height = 56,
            variation_count = 8,
            line_length = 8,
            shift = util.by_pixel(0, -1),
            scale = 0.5
          }
      },
      water_connection_patch =
      {
        sheets =
        {
          {
            filename = "__Krastorio__/graphics/entity/wall/wall-patch.png",
            priority = "extra-high",
            width = 58,
            height = 64,
            shift = util.by_pixel(0, -2),
            hr_version =
            {
              filename = "__Krastorio__/graphics/entity/wall/hr-wall-patch.png",
              priority = "extra-high",
              width = 116,
              height = 128,
              shift = util.by_pixel(0, -2),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/wall/wall-patch-shadow.png",
            priority = "extra-high",
            width = 74,
            height = 52,
            shift = util.by_pixel(8, 14),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-patch-shadow.png",
              priority = "extra-high",
              width = 144,
              height = 100,
              shift = util.by_pixel(9, 15),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      gate_connection_patch =
      {
        sheets =
        {
          {
            filename = "__Krastorio__/graphics/entity/wall/wall-gate.png",
            priority = "extra-high",
            width = 42,
            height = 56,
            shift = util.by_pixel(0, -8),
            hr_version =
            {
              filename = "__Krastorio__/graphics/entity/wall/hr-wall-gate.png",
              priority = "extra-high",
              width = 82,
              height = 108,
              shift = util.by_pixel(0, -7),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/wall/wall-gate-shadow.png",
            priority = "extra-high",
            width = 66,
            height = 40,
            shift = util.by_pixel(14, 18),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/wall/hr-wall-gate-shadow.png",
              priority = "extra-high",
              width = 130,
              height = 78,
              shift = util.by_pixel(14, 18),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      }
    },

    wall_diode_green = util.conditional_return(not data.is_demo,
    {
      sheet =
      {
        filename = "__base__/graphics/entity/wall/wall-diode-green.png",
        priority = "extra-high",
        width = 38,
        height = 24,
        --frames = 4, -- this is optional, it will default to 4 for Sprite4Way
        shift = util.by_pixel(-2, -24),
        hr_version =
        {
          filename = "__base__/graphics/entity/wall/hr-wall-diode-green.png",
          priority = "extra-high",
          width = 72,
          height = 44,
          --frames = 4,
          shift = util.by_pixel(-1, -23),
          scale = 0.5
        }
      }
    }),
    wall_diode_green_light_top = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {g=1},
      shift = util.by_pixel(0, -30),
      size = 1,
      intensity = 0.3
    }),
    wall_diode_green_light_right = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {g=1},
      shift = util.by_pixel(12, -23),
      size = 1,
      intensity = 0.3
    }),
    wall_diode_green_light_bottom = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {g=1},
      shift = util.by_pixel(0, -17),
      size = 1,
      intensity = 0.3
    }),
    wall_diode_green_light_left = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {g=1},
      shift = util.by_pixel(-12, -23),
      size = 1,
      intensity = 0.3
    }),

    wall_diode_red = util.conditional_return(not data.is_demo,
    {
      sheet =
      {
        filename = "__base__/graphics/entity/wall/wall-diode-red.png",
        priority = "extra-high",
        width = 38,
        height = 24,
        --frames = 4, -- this is optional, it will default to 4 for Sprite4Way
        shift = util.by_pixel(-2, -24),
        hr_version =
        {
          filename = "__base__/graphics/entity/wall/hr-wall-diode-red.png",
          priority = "extra-high",
          width = 72,
          height = 44,
          --frames = 4,
          shift = util.by_pixel(-1, -23),
          scale = 0.5
        }
      }
    }),
    wall_diode_red_light_top = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = util.by_pixel(0, -30),
      size = 1,
      intensity = 0.3
    }),
    wall_diode_red_light_right = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = util.by_pixel(12, -23),
      size = 1,
      intensity = 0.3
    }),
    wall_diode_red_light_bottom = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = util.by_pixel(0, -17),
      size = 1,
      intensity = 0.3
    }),
    wall_diode_red_light_left = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = util.by_pixel(-12, -23),
      size = 1,
      intensity = 0.3
    }),

    circuit_wire_connection_point = circuit_connector_definitions["gate"].points,
    circuit_connector_sprites = circuit_connector_definitions["gate"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_output_signal = data.is_demo and {type = "virtual", name = "signal-green"} or {type = "virtual", name = "signal-G"}
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "gate",
    name = "k-gate",
    icon = krstr_entities_icon_path .. "reinforced-gate_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    fast_replaceable_group = "wall",
    minable = {mining_time = 0.2, result = "k-gate"},
    max_health = 500,
    corpse = "small-remnants",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    opening_speed = 0.0666666,
    activation_distance = 3,
    timeout_to_close = 5,
    fadeout_interval = 15,
    resistances =
    {
      {
        type = "physical",
        decrease = 5,
        percent = 20
      },
      {
        type = "impact",
        decrease = 100,
        percent = 75
      },
      {
        type = "explosion",
        decrease = 500,
        percent = 99.5
      },
      {
        type = "fire",
        percent = 99.5
      },
      {
        type = "acid",
        percent = 50
      },
      {
        type = "laser",
        percent = 50
      }
    },
    vertical_animation =
    {
      layers =
      {
        {
          filename = "__Krastorio__/graphics/entity/gate/gate-vertical.png",
          line_length = 8,
          width = 38,
          height = 62,
          frame_count = 16,
          shift = util.by_pixel(0, -14),
          hr_version =
          {
            filename = "__Krastorio__/graphics/entity/gate/hr-gate-vertical.png",
            line_length = 8,
            width = 78,
            height = 120,
            frame_count = 16,
            shift = util.by_pixel(-1, -13),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-vertical-shadow.png",
          line_length = 8,
          width = 40,
          height = 54,
          frame_count = 16,
          shift = util.by_pixel(10, 8),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-vertical-shadow.png",
            line_length = 8,
            width = 82,
            height = 104,
            frame_count = 16,
            shift = util.by_pixel(9, 9),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    horizontal_animation =
    {
      layers =
      {
        {
          filename = "__Krastorio__/graphics/entity/gate/gate-horizontal.png",
          line_length = 8,
          width = 34,
          height = 48,
          frame_count = 16,
          shift = util.by_pixel(0, -4),
          hr_version =
          {
            filename = "__Krastorio__/graphics/entity/gate/hr-gate-horizontal.png",
            line_length = 8,
            width = 66,
            height = 90,
            frame_count = 16,
            shift = util.by_pixel(0, -3),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-horizontal-shadow.png",
          line_length = 8,
          width = 62,
          height = 30,
          frame_count = 16,
          shift = util.by_pixel(12, 10),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-horizontal-shadow.png",
            line_length = 8,
            width = 122,
            height = 60,
            frame_count = 16,
            shift = util.by_pixel(12, 10),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    horizontal_rail_animation_left =
    {
      layers =
      {
        {
          filename = "__Krastorio__/graphics/entity/gate/gate-rail-horizontal-left.png",
          line_length = 8,
          width = 34,
          height = 40,
          frame_count = 16,
          shift = util.by_pixel(0, -8),
          hr_version =
          {
            filename = "__Krastorio__/graphics/entity/gate/hr-gate-rail-horizontal-left.png",
            line_length = 8,
            width = 66,
            height = 74,
            frame_count = 16,
            shift = util.by_pixel(0, -7),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-shadow-left.png",
          line_length = 8,
          width = 62,
          height = 30,
          frame_count = 16,
          shift = util.by_pixel(12, 10),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-horizontal-shadow-left.png",
            line_length = 8,
            width = 122,
            height = 60,
            frame_count = 16,
            shift = util.by_pixel(12, 10),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    horizontal_rail_animation_right =
    {
      layers =
      {
        {
          filename = "__Krastorio__/graphics/entity/gate/gate-rail-horizontal-right.png",
          line_length = 8,
          width = 34,
          height = 40,
          frame_count = 16,
          shift = util.by_pixel(0, -8),
          hr_version =
          {
            filename = "__Krastorio__/graphics/entity/gate/hr-gate-rail-horizontal-right.png",
            line_length = 8,
            width = 66,
            height = 74,
            frame_count = 16,
            shift = util.by_pixel(0, -7),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-shadow-right.png",
          line_length = 8,
          width = 62,
          height = 30,
          frame_count = 16,
          shift = util.by_pixel(12, 10),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-horizontal-shadow-right.png",
            line_length = 8,
            width = 122,
            height = 58,
            frame_count = 16,
            shift = util.by_pixel(12, 11),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    vertical_rail_animation_left =
    {
      layers =
      {
        {
          filename = "__Krastorio__/graphics/entity/gate/gate-rail-vertical-left.png",
          line_length = 8,
          width = 22,
          height = 62,
          frame_count = 16,
          shift = util.by_pixel(0, -14),
          hr_version =
          {
            filename = "__Krastorio__/graphics/entity/gate/hr-gate-rail-vertical-left.png",
            line_length = 8,
            width = 42,
            height = 118,
            frame_count = 16,
            shift = util.by_pixel(0, -13),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-shadow-left.png",
          line_length = 8,
          width = 44,
          height = 54,
          frame_count = 16,
          shift = util.by_pixel(8, 8),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-vertical-shadow-left.png",
            line_length = 8,
            width = 82,
            height = 104,
            frame_count = 16,
            shift = util.by_pixel(9, 9),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    vertical_rail_animation_right =
    {
      layers =
      {
        {
          filename = "__Krastorio__/graphics/entity/gate/gate-rail-vertical-right.png",
          line_length = 8,
          width = 22,
          height = 62,
          frame_count = 16,
          shift = util.by_pixel(0, -14),
          hr_version =
          {
            filename = "__Krastorio__/graphics/entity/gate/hr-gate-rail-vertical-right.png",
            line_length = 8,
            width = 42,
            height = 118,
            frame_count = 16,
            shift = util.by_pixel(0, -13),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-shadow-right.png",
          line_length = 8,
          width = 44,
          height = 54,
          frame_count = 16,
          shift = util.by_pixel(8, 8),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-vertical-shadow-right.png",
            line_length = 8,
            width = 82,
            height = 104,
            frame_count = 16,
            shift = util.by_pixel(9, 9),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    vertical_rail_base =
    {
      filename = "__Krastorio__/graphics/entity/gate/gate-rail-base-vertical.png",
      line_length = 8,
      width = 68,
      height = 66,
      frame_count = 16,
      shift = util.by_pixel(0, 0),
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/gate/hr-gate-rail-base-vertical.png",
        line_length = 8,
        width = 138,
        height = 130,
        frame_count = 16,
        shift = util.by_pixel(-1, 0),
        scale = 0.5
      }
    },
    horizontal_rail_base =
    {
      filename = "__Krastorio__/graphics/entity/gate/gate-rail-base-horizontal.png",
      line_length = 8,
      width = 66,
      height = 54,
      frame_count = 16,
      shift = util.by_pixel(0, 2),
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/gate/hr-gate-rail-base-horizontal.png",
        line_length = 8,
        width = 130,
        height = 104,
        frame_count = 16,
        shift = util.by_pixel(0, 3),
        scale = 0.5
      }
    },
    wall_patch =
    {
      layers =
      {
        {
          filename = "__Krastorio__/graphics/entity/gate/gate-wall-patch.png",
          line_length = 8,
          width = 34,
          height = 48,
          frame_count = 16,
          shift = util.by_pixel(0, 12),
          hr_version =
          {
            filename = "__Krastorio__/graphics/entity/gate/hr-gate-wall-patch.png",
            line_length = 8,
            width = 70,
            height = 94,
            frame_count = 16,
            shift = util.by_pixel(-1, 13),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-wall-patch-shadow.png",
          line_length = 8,
          width = 44,
          height = 38,
          frame_count = 16,
          shift = util.by_pixel(8, 32),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-wall-patch-shadow.png",
            line_length = 8,
            width = 82,
            height = 72,
            frame_count = 16,
            shift = util.by_pixel(9, 33),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },

    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    open_sound =
    {
      variations = { filename = "__base__/sound/gate-open-1.ogg", volume = 0.5 },
      aggregation =
      {
        max_count = 1,
        remove = true
      }
    },
    close_sound =
    {
      variations = { filename = "__base__/sound/gate-close-1.ogg", volume = 0.5 },
      aggregation =
      {
        max_count = 1,
        remove = true
      }
    }
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "mining-drill",
    name = "electric-mining-drill-mk2",
    icon = krstr_entities_icon_path .. "electric-mining-drill-mk2_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "electric-mining-drill-mk2"},
    max_health = 350,
    resource_categories = {"basic-solid"},
    corpse = "medium-remnants",
	resistances = 
	{
	{type = "physical",percent = 20},
	{type = "fire",percent = 20},
	{type = "impact",percent = 20}
	},
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    input_fluid_box = (not data.is_demo) and
    {
      production_type = "input-output",
      pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_connections =
      {
        { position = {-2, 0} },
        { position = {2, 0} },
        { position = {0, 2} }
      }
    } or nil,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animations =
    {
      north =
      {
        priority = "high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/electric-mining-drill-N.png",
        line_length = 8,
        width = 98,
        height = 113,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -8.5),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/hr-electric-mining-drill-N.png",
          line_length = 8,
          width = 196,
          height = 226,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(0, -8),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      east =
      {
        priority = "high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/electric-mining-drill-E.png",
        line_length = 8,
        width = 105,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(3.5, -1),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/hr-electric-mining-drill-E.png",
          line_length = 8,
          width = 211,
          height = 197,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(3.75, -1.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      south =
      {
        priority = "high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/electric-mining-drill-S.png",
        line_length = 8,
        width = 98,
        height = 109,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -1.5),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/hr-electric-mining-drill-S.png",
          line_length = 8,
          width = 196,
          height = 219,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(0, -1.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      west =
      {
        priority = "high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/electric-mining-drill-W.png",
        line_length = 8,
        width = 105,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-3.5, -1),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/hr-electric-mining-drill-W.png",
          line_length = 8,
          width = 211,
          height = 197,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-3.75, -0.75),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      }
    },
    shadow_animations =
    {
      north =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-drill-shadow.png",
        flags = { "shadow" },
        line_length = 8,
        width = 101,
        height = 111,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(1.5, -7.5),
        draw_as_shadow = true,
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-drill-shadow.png",
          flags = { "shadow" },
          line_length = 8,
          width = 201,
          height = 223,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1.25, -7.25),
          draw_as_shadow = true,
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      east =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-drill-shadow.png",
        flags = { "shadow" },
        line_length = 8,
        width = 110,
        height = 97,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(6, -0.5),
        draw_as_shadow = true,
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-drill-shadow.png",
          flags = { "shadow" },
          line_length = 8,
          width = 221,
          height = 195,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(6.25, -0.25),
          draw_as_shadow = true,
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      south =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-drill-shadow.png",
        flags = { "shadow" },
        line_length = 8,
        width = 100,
        height = 103,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(1, 2.5),
        draw_as_shadow = true,
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-drill-shadow.png",
          flags = { "shadow" },
          line_length = 8,
          width = 200,
          height = 206,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1, 2.5),
          draw_as_shadow = true,
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      west =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-drill-shadow.png",
        flags = { "shadow" },
        line_length = 8,
        width = 114,
        height = 97,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(1, -0.5),
        draw_as_shadow = true,
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-drill-shadow.png",
          flags = { "shadow" },
          line_length = 8,
          width = 229,
          height = 195,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1.25, -0.25),
          draw_as_shadow = true,
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      }
    },
    input_fluid_patch_sprites =
    {
      north =
      {
        priority = "extra-high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/electric-mining-drill-N-patch.png",
        width = 100,
        height = 111,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -6.5),
        hr_version =
        {
          priority = "extra-high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/hr-electric-mining-drill-N-patch.png",
          width = 200,
          height = 222,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -6.5),
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/electric-mining-drill-E-patch.png",
        width = 100,
        height = 110,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -6),
        hr_version =
        {
          priority = "extra-high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/hr-electric-mining-drill-E-patch.png",
          width = 200,
          height = 219,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(0, -5.75),
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/electric-mining-drill-S-patch.png",
        width = 100,
        height = 113,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -7.5),
        hr_version =
        {
          priority = "extra-high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/hr-electric-mining-drill-S-patch.png",
          width = 200,
          height = 226,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -7.5),
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/electric-mining-drill-W-patch.png",
        width = 100,
        height = 108,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -5),
        hr_version =
        {
          priority = "extra-high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk2/hr-electric-mining-drill-W-patch.png",
          width = 200,
          height = 220,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -6),
          scale = 0.5
        }
      }
    },
    input_fluid_patch_shadow_sprites =
    {
      north =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-patch-shadow.png",
        flags = { "shadow" },
        width = 110,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, 0),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-patch-shadow.png",
          flags = { "shadow" },
          width = 220,
          height = 197,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(5, -0.25),
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-patch-shadow.png",
        flags = { "shadow" },
        width = 112,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(6, 0),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-patch-shadow.png",
          flags = { "shadow" },
          width = 224,
          height = 198,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(6, 0),
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-patch-shadow.png",
        flags = { "shadow" },
        width = 110,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, 0),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-patch-shadow.png",
          flags = { "shadow" },
          width = 220,
          height = 197,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(5, -0.25),
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-patch-shadow.png",
        flags = { "shadow" },
        width = 110,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, 0),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-patch-shadow.png",
          flags = { "shadow" },
          width = 220,
          height = 197,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(5, -0.25),
          scale = 0.5
        }
      }
    },
    input_fluid_patch_shadow_animations =
    {
      north =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 100,
        height = 102,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-1, -3),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 204,
          height = 206,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -2),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      east =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 102,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -2),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 204,
          height = 209,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -1.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      south =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 100,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-1, -1),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 204,
          height = 204,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -2.5),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      west =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 96,
        height = 99,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -1.5),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 198,
          height = 206,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1, -2),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      }
    },
    input_fluid_patch_window_sprites =
    {
      north =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-window-background.png",
        width = 72,
        height = 54,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-1, 1),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-window-background.png",
          width = 142,
          height = 107,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-1, 0.75),
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-window-background.png",
        width = 51,
        height = 74,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-11.5, -11),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-window-background.png",
          width = 104,
          height = 147,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-11, -11.25),
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-window-background.png",
        width = 71,
        height = 44,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-1.5, -29),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-window-background.png",
          width = 141,
          height = 86,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-1.75, -29),
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-window-background.png",
        width = 41,
        height = 69,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(11.5, -11.5),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-window-background.png",
          width = 80,
          height = 137,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(11.5, -11.25),
          scale = 0.5
        }
      }
    },

    input_fluid_patch_window_flow_sprites =
    {
      {
        north =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-flow.png",
          width = 68,
          height = 50,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, -1),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-flow.png",
            width = 136,
            height = 99,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2.5, -0.75),
            scale = 0.5
          }
        },
        east =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-flow.png",
          width = 41,
          height = 70,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-11.5, -11),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-flow.png",
            width = 82,
            height = 139,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-11.5, -11.25),
            scale = 0.5
          }
        },
        south =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-flow.png",
          width = 68,
          height = 40,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, -29),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-flow.png",
            width = 136,
            height = 80,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2.5, -29.5),
            scale = 0.5
          }
        },
        west =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-flow.png",
          width = 42,
          height = 70,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(11, -11),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-flow.png",
            width = 83,
            height = 140,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(10.75, -11),
            scale = 0.5
          }
        }
      }
    },
    input_fluid_patch_window_base_sprites =
    {
      {
        north =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-background.png",
          width = 70,
          height = 48,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, 0),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-background.png",
            width = 138,
            height = 94,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2, 0),
            scale = 0.5
          }
        },
        east =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-background.png",
          width = 42,
          height = 70,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-12, -11),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-background.png",
            width = 84,
            height = 138,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-12, -11),
            scale = 0.5
          }
        },
        south =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-background.png",
          width = 70,
          height = 40,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, -29),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-background.png",
            width = 138,
            height = 80,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2, -29),
            scale = 0.5
          }
        },
        west =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-background.png",
          width = 42,
          height = 69,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(12, -10.5),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-background.png",
            width = 83,
            height = 137,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(11.75, -10.75),
            scale = 0.5
          }
        }
      }
    },

    mining_speed = 1,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 10,
      usage_priority = "secondary-input"
    },
    energy_usage = "150kW",
    resource_searching_radius = 3.51,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 3
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 10,
      height = 10
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
	next_upgrade = "electric-mining-drill-mk3",
    fast_replaceable_group = "mining-drill",

    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
	},
	
-----------------------------------------------------------------------------------------------------------------
	
	{
    type = "mining-drill",
    name = "electric-mining-drill-mk3",
    icon = krstr_entities_icon_path .. "electric-mining-drill-mk3_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "electric-mining-drill-mk3"},
    max_health = 400,
    resource_categories = {"basic-solid"},
    corpse = "medium-remnants",
	resistances = 
	{
	{type = "physical",percent = 35},
	{type = "fire",percent = 35},
	{type = "impact",percent = 35}
	},
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    input_fluid_box = (not data.is_demo) and
    {
      production_type = "input-output",
      pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_connections =
      {
        { position = {-2, 0} },
        { position = {2, 0} },
        { position = {0, 2} }
      }
    } or nil,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animations =
    {
      north =
      {
        priority = "high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/electric-mining-drill-N.png",
        line_length = 8,
        width = 98,
        height = 113,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -8.5),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/hr-electric-mining-drill-N.png",
          line_length = 8,
          width = 196,
          height = 226,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(0, -8),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      east =
      {
        priority = "high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/electric-mining-drill-E.png",
        line_length = 8,
        width = 105,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(3.5, -1),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/hr-electric-mining-drill-E.png",
          line_length = 8,
          width = 211,
          height = 197,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(3.75, -1.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      south =
      {
        priority = "high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/electric-mining-drill-S.png",
        line_length = 8,
        width = 98,
        height = 109,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -1.5),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/hr-electric-mining-drill-S.png",
          line_length = 8,
          width = 196,
          height = 219,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(0, -1.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      west =
      {
        priority = "high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/electric-mining-drill-W.png",
        line_length = 8,
        width = 105,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-3.5, -1),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/hr-electric-mining-drill-W.png",
          line_length = 8,
          width = 211,
          height = 197,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-3.75, -0.75),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      }
    },
    shadow_animations =
    {
      north =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-drill-shadow.png",
        flags = { "shadow" },
        line_length = 8,
        width = 101,
        height = 111,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(1.5, -7.5),
        draw_as_shadow = true,
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-drill-shadow.png",
          flags = { "shadow" },
          line_length = 8,
          width = 201,
          height = 223,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1.25, -7.25),
          draw_as_shadow = true,
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      east =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-drill-shadow.png",
        flags = { "shadow" },
        line_length = 8,
        width = 110,
        height = 97,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(6, -0.5),
        draw_as_shadow = true,
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-drill-shadow.png",
          flags = { "shadow" },
          line_length = 8,
          width = 221,
          height = 195,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(6.25, -0.25),
          draw_as_shadow = true,
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      south =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-drill-shadow.png",
        flags = { "shadow" },
        line_length = 8,
        width = 100,
        height = 103,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(1, 2.5),
        draw_as_shadow = true,
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-drill-shadow.png",
          flags = { "shadow" },
          line_length = 8,
          width = 200,
          height = 206,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1, 2.5),
          draw_as_shadow = true,
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      west =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-drill-shadow.png",
        flags = { "shadow" },
        line_length = 8,
        width = 114,
        height = 97,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(1, -0.5),
        draw_as_shadow = true,
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-drill-shadow.png",
          flags = { "shadow" },
          line_length = 8,
          width = 229,
          height = 195,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1.25, -0.25),
          draw_as_shadow = true,
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      }
    },
    input_fluid_patch_sprites =
    {
      north =
      {
        priority = "extra-high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/electric-mining-drill-N-patch.png",
        width = 100,
        height = 111,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -6.5),
        hr_version =
        {
          priority = "extra-high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/hr-electric-mining-drill-N-patch.png",
          width = 200,
          height = 222,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -6.5),
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/electric-mining-drill-E-patch.png",
        width = 100,
        height = 110,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -6),
        hr_version =
        {
          priority = "extra-high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/hr-electric-mining-drill-E-patch.png",
          width = 200,
          height = 219,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(0, -5.75),
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/electric-mining-drill-S-patch.png",
        width = 100,
        height = 113,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -7.5),
        hr_version =
        {
          priority = "extra-high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/hr-electric-mining-drill-S-patch.png",
          width = 200,
          height = 226,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -7.5),
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/electric-mining-drill-W-patch.png",
        width = 100,
        height = 108,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -5),
        hr_version =
        {
          priority = "extra-high",
          filename = "__Krastorio__/graphics/entity/electric-mining-drill-mk3/hr-electric-mining-drill-W-patch.png",
          width = 200,
          height = 220,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -6),
          scale = 0.5
        }
      }
    },
    input_fluid_patch_shadow_sprites =
    {
      north =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-patch-shadow.png",
        flags = { "shadow" },
        width = 110,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, 0),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-patch-shadow.png",
          flags = { "shadow" },
          width = 220,
          height = 197,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(5, -0.25),
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-patch-shadow.png",
        flags = { "shadow" },
        width = 112,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(6, 0),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-patch-shadow.png",
          flags = { "shadow" },
          width = 224,
          height = 198,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(6, 0),
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-patch-shadow.png",
        flags = { "shadow" },
        width = 110,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, 0),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-patch-shadow.png",
          flags = { "shadow" },
          width = 220,
          height = 197,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(5, -0.25),
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-patch-shadow.png",
        flags = { "shadow" },
        width = 110,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, 0),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-patch-shadow.png",
          flags = { "shadow" },
          width = 220,
          height = 197,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(5, -0.25),
          scale = 0.5
        }
      }
    },
    input_fluid_patch_shadow_animations =
    {
      north =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 100,
        height = 102,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-1, -3),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 204,
          height = 206,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -2),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      east =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 102,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -2),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 204,
          height = 209,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -1.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      south =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 100,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-1, -1),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 204,
          height = 204,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -2.5),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      west =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 96,
        height = 99,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -1.5),
        run_mode = "forward-then-backward",
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 198,
          height = 206,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1, -2),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      }
    },
    input_fluid_patch_window_sprites =
    {
      north =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-window-background.png",
        width = 72,
        height = 54,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-1, 1),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-window-background.png",
          width = 142,
          height = 107,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-1, 0.75),
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-window-background.png",
        width = 51,
        height = 74,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-11.5, -11),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-window-background.png",
          width = 104,
          height = 147,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-11, -11.25),
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-window-background.png",
        width = 71,
        height = 44,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-1.5, -29),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-window-background.png",
          width = 141,
          height = 86,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-1.75, -29),
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-window-background.png",
        width = 41,
        height = 69,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(11.5, -11.5),
        hr_version =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-window-background.png",
          width = 80,
          height = 137,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(11.5, -11.25),
          scale = 0.5
        }
      }
    },

    input_fluid_patch_window_flow_sprites =
    {
      {
        north =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-flow.png",
          width = 68,
          height = 50,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, -1),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-flow.png",
            width = 136,
            height = 99,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2.5, -0.75),
            scale = 0.5
          }
        },
        east =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-flow.png",
          width = 41,
          height = 70,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-11.5, -11),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-flow.png",
            width = 82,
            height = 139,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-11.5, -11.25),
            scale = 0.5
          }
        },
        south =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-flow.png",
          width = 68,
          height = 40,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, -29),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-flow.png",
            width = 136,
            height = 80,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2.5, -29.5),
            scale = 0.5
          }
        },
        west =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-flow.png",
          width = 42,
          height = 70,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(11, -11),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-flow.png",
            width = 83,
            height = 140,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(10.75, -11),
            scale = 0.5
          }
        }
      }
    },
    input_fluid_patch_window_base_sprites =
    {
      {
        north =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-background.png",
          width = 70,
          height = 48,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, 0),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-background.png",
            width = 138,
            height = 94,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2, 0),
            scale = 0.5
          }
        },
        east =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-background.png",
          width = 42,
          height = 70,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-12, -11),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-background.png",
            width = 84,
            height = 138,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-12, -11),
            scale = 0.5
          }
        },
        south =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-background.png",
          width = 70,
          height = 40,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, -29),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-background.png",
            width = 138,
            height = 80,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2, -29),
            scale = 0.5
          }
        },
        west =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-background.png",
          width = 42,
          height = 69,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(12, -10.5),
          hr_version =
          {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-background.png",
            width = 83,
            height = 137,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(11.75, -10.75),
            scale = 0.5
          }
        }
      }
    },

    mining_speed = 1.5,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 12.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "200kW",
    resource_searching_radius = 4.51,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 4
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 10,
      height = 10
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "mining-drill",

    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
	},
	
-----------------------------------------------------------------------------------------------------------------
	
	{
	type = "furnace",
	name = "k-fusion-reactor",
	icon = "__Krastorio__/graphics/icons/entities/mip/fusion-reactor.png",
    icon_size = 64,
	flags = {"placeable-neutral","placeable-player", "player-creation"},
	minable = {hardness = 1, mining_time = 3, result = "k-fusion-reactor"},
	max_health = 20000,
	corpse = "huge-kfr-remnants",
	dying_explosion = "medium-explosion",
	resistances = 
	{
	{type = "physical",percent = 60},
	{type = "fire",percent = 95},
	{type = "impact",percent = 95}
	},
	fluid_boxes =
	{
		{
			production_type = "input",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{ type="input", position = {0, 8} }}
		},
		
		
		{
			production_type = "output",
			pipe_covers = pipecoverspictures(),
			pipe_picture = krpipepictures(),
			base_area = 1000,
			base_level = 1,
			pipe_connections = {{ type="output", position = {0, -8} }}
		},

		
		off_when_no_fluid_recipe = false
	},
	collision_box = {{-7.25, -7.25}, {7.25, 7.25}},
	selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
	fast_replaceable_group = "k-fusion-reactor",
	animation =
    {
		layers =
			{
			{
			filename = "__Krastorio__/graphics/entity/fusion-reactor/fusion-reactor.png",
			width = 550,
			height = 550,
			frame_count = 1,
			--line_length = 6,
			shift = {1.01, 0},
			--animation_speed = 0.5
			hr_version =
				{
				filename = "__Krastorio__/graphics/entity/fusion-reactor/hr-fusion-reactor.png",
				width = 1100,
				height = 1100,
				scale = 0.5,
				frame_count = 1,
				--line_length = 6,
				shift = {1.01, 0},
				--animation_speed = 0.5
				}
			},
			{
			filename = "__Krastorio__/graphics/entity/fusion-reactor/fusion-reactor-shd.png",
			priority = "high",
			scale = scale,
			width = 550,
			height = 550,
			shift = {1.01, 0},
			frame_count = 1,
			draw_as_shadow = true,
			hr_version =
				{
				filename = "__Krastorio__/graphics/entity/fusion-reactor/hr-fusion-reactor-shd.png",
				priority = "high",
				scale = scale,
				width = 1100,
				height = 1100,
				shift = {1.01, 0},
				frame_count = 1,
				draw_as_shadow = true,
				scale = 0.5,
				}
			}
			}
	},
	working_visualisations =
		{
			{
			animation =
			{
			filename = "__Krastorio__/graphics/entity/fusion-reactor/fusion-reactor-an.png",
            line_length = 6,
            width = 313,
            height = 344,
            frame_count = 12,
            animation_speed = 0.75,
			shift = {2.18, -2.358},
			hr_version =
				{
				filename = "__Krastorio__/graphics/entity/fusion-reactor/hr-fusion-reactor-an.png",
				line_length = 6,
				width = 626,
				height = 688,
				frame_count = 12,
				animation_speed = 0.75,
				scale = 0.5,
				shift = {2.18, -2.358},
				}
			}
			},
		
			{
			animation =
			{
			filename = "__Krastorio__/graphics/entity/liquid-evaporator/liquid-evaporator-steam.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.5,
            scale = 0.75,
			shift = {-4.25, -5.35},
			}
			},
			
			{
			animation =
			{
			filename = "__Krastorio__/graphics/entity/liquid-evaporator/liquid-evaporator-steam.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.5,
            scale = 0.5,
			shift = {-5.25, -1.35},
			}
			},
			
			{
			light =
			{
			intensity = 0.35,
			size = 30,
			shift = {0, 0},
			color = {r=0.95, g=0.75, b=0.5}
			}
			},
	
	},
	crafting_categories = {"k-fusion"},
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
       working_sound =
       {
           sound =
       {
       {
			filename = "__Krastorio__/sound/antimatter-reactor.ogg",
			volume = 1,
			audible_distance_modifier = 10,
       }
       },
       idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
       apparent_volume = 1
       },
	crafting_speed = 1.0,
    energy_source =
    {
      type = "burner",
	  fuel_categories = {"k-fusion-power"},
      fuel_inventory_size = 1,
      emissions_per_minute = 2,
      effectivity = 1,
	  emissions_per_minute = nil,
      light_flicker = {intensity = 2, minimum_light_size = 3, color = {r=0.35, g=0.75, b=1}},
	  smoke =
      {
      {
        name = "turbine-smoke",
        north_position = {6.35, -3.75},
        east_position = {6.35, -3.75},
        west_position = {6.35, -3.75},
        south_position = {6.35, -3.75},
        frequency = 10,
        starting_vertical_speed = 0.05,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      },
      {
        name = "turbine-smoke",
        north_position = {6.5, -2.7},
        east_position = {6.5, -2.7},
        west_position = {6.5, -2.7},
        south_position = {6.5, -2.7},
        frequency = 10,
        starting_vertical_speed = 0.05,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      },
      {
        name = "turbine-smoke",
        north_position = {0, -6.35},
        east_position = {0, -6.35},
        west_position = {0, -6.35},
        south_position = {0, -6.35},
        frequency = 10,
        starting_vertical_speed = 0.05,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      }
      }
    },
	energy_usage = "500MW",
    source_inventory_size = 1,
    result_inventory_size = 1,
	--module_specification =
	--{
	--	module_slots = 6
	--},
	--allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "generator",
    name = "big-turbine",
	icon = "__Krastorio__/graphics/icons/entities/mip/big-turbine.png",
    icon_size = 64,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "big-turbine"},
    max_health = 2000,
    corpse = "medium-k-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(0, -12),
    effectivity = 5,
    fluid_usage_per_tick = 1,
    maximum_temperature = 1500,
    burns_fluid = false,
	resistances = 
	{
	{type = "physical",percent = 50},
	{type = "fire",percent = 90},
	{type = "impact",percent = 80}
	},
    fast_replaceable_group = "big-turbine",
    collision_box = {{-2.25, -3.25}, {2.25, 3.25}},
    selection_box = {{-2.5, -3.5}, {2.5, 3.5}},
    fluid_box =
    {
      base_area = 5,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { type = "input-output", position = {0, 4} },
        { type = "input-output", position = {0, -4} }
      },
      production_type = "input-output",
      filter = "steam",
      minimum_temperature = 350.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    horizontal_animation =
    {
      layers =
      {
        {
			filename = "__Krastorio__/graphics/entity/big-turbine/big-turbine-H.png",
			width = 235,
			height = 134,
			frame_count = 6,
			shift = {0, -0.2},
			line_length = 2,
			hr_version =
			  {
				filename = "__Krastorio__/graphics/entity/big-turbine/hr-big-turbine-H.png",
				width = 469,
				height = 270,
				frame_count = 6,
				shift = {0, -0.2},
				line_length = 2,
				scale = 0.5,
			  }
        },
        {
			filename = "__Krastorio__/graphics/entity/big-turbine/big-turbine-sh-H.png",
			width = 258,
			height = 113,
			frame_count = 6,
			shift = {0.575, 0.25},
			line_length = 3,
            draw_as_shadow = true,
			hr_version =
			  {
				filename = "__Krastorio__/graphics/entity/big-turbine/hr-big-turbine-sh-H.png",
				width = 514,
				height = 225,
				frame_count = 6,
				shift = {0.575, 0.25},
				line_length = 3,
				scale = 0.5,
				draw_as_shadow = true,
			  }
        }
      }
    },
    vertical_animation =
    {
     layers =
     {
        {
			filename = "__Krastorio__/graphics/entity/big-turbine/big-turbine-V.png",
			width = 165,
			height = 250,
			frame_count = 6,
			line_length = 6,
			shift = {0.26, 0},
			hr_version =
			  {
				filename = "__Krastorio__/graphics/entity/big-turbine/hr-big-turbine-V.png",
				width = 330,
				height = 500,
				frame_count = 6,
				line_length = 6,
				shift = {0.26, 0},
				scale = 0.5,
			  }
        },
        {
			filename = "__Krastorio__/graphics/entity/big-turbine/big-turbine-sh-V.png",
			width = 175,
			height = 213,
			frame_count = 6,
			line_length = 6,
			shift = {0.48, 0.36},
            draw_as_shadow = true,
			hr_version =
			  {
				filename = "__Krastorio__/graphics/entity/big-turbine/hr-big-turbine-sh-V.png",
				width = 350,
				height = 425,
				frame_count = 6,
				line_length = 6,
				shift = {0.48, 0.36},
				scale = 0.5,
				draw_as_shadow = true,
			  }
        }
      }
    },
    smoke =
    {
      {
        name = "turbine-smoke",
        north_position = {2, -2.6},
        east_position = {2.75, 1.0},
        frequency = 10 / 32,
        starting_vertical_speed = 0.08,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5,
	max_power_output = "100.01MW",
	},
	
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
}
)