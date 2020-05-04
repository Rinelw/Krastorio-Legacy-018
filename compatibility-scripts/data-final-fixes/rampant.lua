if mods["Rampant"] then	
	-- Undo laser-turret nerf
	data.raw["electric-turret"]["laser-turret"].max_health = 250
	data.raw["electric-turret"]["laser-turret"].call_for_help_radius = 35
	data.raw["electric-turret"]["laser-turret"].energy_source =
	{
		buffer_capacity = "800kJ",
		drain = "50kW",
		input_flow_limit = "9600kW",
		type = "electric",
		usage_priority = "primary-input"
	}	
	
	data.raw["electric-turret"]["laser-turret"].attack_parameters = 
	{
		ammo_type = 
		{	
			action = 
			{
				action_delivery = 
				{
					beam = "laser-beam",
					duration = 10,
					max_length = 35,
					source_offset = 
					{
						0,
						-1.3143899999999999
					},
					type = "beam"
				},
				type = "direct"
			},
			category = "laser-turret",
			energy_consumption = "600kJ"
		},
		cooldown = 20,
		damage_modifier = 4,
		range = 30,
		source_direction_count = 64,
		source_offset = 
		{
			0,
			-0.85587225
		},
		type = "beam",
		sound =
		{
			filename = "__base__/sound/fight/pulse.ogg",
			volume = 0.75
		}
	}
end
