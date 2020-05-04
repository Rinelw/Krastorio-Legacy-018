if settings.startup["reb-damage"] and settings.startup["reb-damage"].value then

	data.raw["ammo-turret"]["gun-turret"].attack_parameters.range = 18
	data.raw["ammo-turret"]["gun-turret"].attack_parameters.call_for_help_radius = 18
	
end