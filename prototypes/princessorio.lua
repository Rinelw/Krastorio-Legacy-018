if settings.startup["princessorio"] and settings.startup["princessorio"].value then

	data:extend(
	{
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------   
		{
		type = "ammo-category",
		name = "rocketfish"
		},
		
		{
		type = "gun",
		name = "dolphin-gun",
		icon = "__KrastorioPorted__/graphics/icons/dolphin-gun.png",
		icon_size = 32,
		subgroup = "gun",
		order = "z[dolphin-gun]",
		attack_parameters =
		{
		  type = "projectile",
		  ammo_category = "rocketfish",
		  movement_slow_down_factor = 0.5,
		  cooldown = 30,
		  projectile_creation_distance = 0.6,
		  range = 300,
		  projectile_center = {-0.17, 0},
		  sound =
		  {
			{
			  filename = "__KrastorioPorted__/sound/dolphin-gun.ogg",
			  volume = 1
			}
		  }
		},
		stack_size = 1
		},
		
		{
		type = "projectile",
		name = "rocketfish-projectile",
		--flags = {"not-on-map"},
		reveal_map = true,
		map_color = {r=0.3, g=0.4, b=1},
		acceleration = 0.001,
		action =
		{
		  type = "direct",
		  action_delivery =
		  {
			type = "instant",
			target_effects =
			{
				{
					type = "create-trivial-smoke",
					smoke_name = "artillery-smoke",
					initial_height = 0,
					speed_from_center = 0.05,
					speed_from_center_deviation = 0.005,
					offset_deviation = {{-4, -4}, {4, 4}},
					max_radius = 12,
					repeat_count = 4 * 4 * 15
			   },
			   {
					type = "create-entity",
					entity_name = "small-scorchmark",
					check_buildability = true
			   },
			   {
					repeat_count = 100,
					type = "create-trivial-smoke",
					smoke_name = "nuclear-smoke",
					offset_deviation = {{-1, -1}, {1, 1}},
					starting_frame = 3,
					starting_frame_deviation = 5,
					starting_frame_speed = 0,
					starting_frame_speed_deviation = 5,
					speed_from_center = 0.75
			  },
			  {
					type = "create-entity",
					entity_name = "big-explosion"
			  },
			  {
					type = "create-entity",
					entity_name = "big-artillery-explosion"
			  },
			  {
					type = "show-explosion-on-chart",
					scale = 1
			  },
			  {
					type = "nested-result",
					action =
				{
					type = "area",
					target_entities = false,
					trigger_from_target = true,
					repeat_count = 50,
					radius = 12,
					action_delivery =
				  {
					type = "projectile",
					projectile = "atomic-bomb-wave",
					starting_speed = 0.35
				  }
				}
			  }
			}
		  }
		},
		animation =
		{
		  filename = "__KrastorioPorted__/graphics/entity/princessorio/rocketfish.png",
		  frame_count = 4,
		  line_length = 4,
		  width = 18,
		  height = 40,
		  shift = {0, 0},
		  priority = "high"
		},
		shadow =
		{
		  filename = "__KrastorioPorted__/graphics/entity/princessorio/fish-shadow.png",
		  frame_count = 1,
		  width = 20,
		  height = 32,
		  priority = "high",
		  shift = {0, 0}
		},
		smoke =
		{
		  {
			name = "smoke-fast",
			deviation = {0.15, 0.15},
			frequency = 1,
			position = {0, 1},
			slow_down_factor = 1,
			starting_frame = 3,
			starting_frame_deviation = 5,
			starting_frame_speed = 0,
			starting_frame_speed_deviation = 5
		  }
		}
		},
		
		{
		type = "ammo",
		name = "rocketfish",
		icon = "__KrastorioPorted__/graphics/icons/rocketfish.png",
		icon_size = 32,
		ammo_type =
		{
		  target_type = "position",
		  category = "rocketfish",
		  action =
		  {
			type = "direct",
			action_delivery =
			{
			  type = "projectile",
			  projectile = "rocketfish-projectile",
			  starting_speed = 0.25,
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
		order = "d[rocket-launcher]-z[rocketfish]",
		stack_size = 100
		},
		
		{
		type = "recipe",
		name = "rocketfish",
		category = "smelting",
		icon_size = 32,
		energy_required = 5,
		enabled = true,
		hidden = true,
		ingredients =
		{
		  {"raw-fish", 1}
		},
		result = "rocketfish"
		},
		
		{
		type = "recipe",
		name = "dolphin-gun",
		category = "smelting",
		energy_required = 5,
		enabled = true,
		hidden = true,
		ingredients =
		{
		  {"iron-stick", 1}
		},
		result = "dolphin-gun"
		},
	  
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	})
	
end
