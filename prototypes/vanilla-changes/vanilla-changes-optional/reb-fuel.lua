-- Slightly improve vanilla fuel
if settings.startup["reb-fuel"] and settings.startup["reb-fuel"].value then

	data.raw.item["coal"].fuel_value = "5MJ" -- vanilla is 4
	data.raw.item["coal"].fuel_emissions_multiplier = 1.5

	data.raw.item["solid-fuel"].fuel_acceleration_multiplier = 1.1
	data.raw.item["solid-fuel"].fuel_top_speed_multiplier = 1.1
	data.raw.item["solid-fuel"].fuel_value = "15MJ" -- vanilla is 12
	data.raw.item["solid-fuel"].fuel_emissions_multiplier = 1.25

	data.raw.item["rocket-fuel"].fuel_acceleration_multiplier = 1.25
	data.raw.item["rocket-fuel"].fuel_top_speed_multiplier = 1.25
	data.raw.item["rocket-fuel"].fuel_value = "150MJ"  -- vanilla is 100
	data.raw.item["rocket-fuel"].fuel_emissions_multiplier = 1.25

	data.raw.item["nuclear-fuel"].fuel_acceleration_multiplier = 1.5
	data.raw.item["nuclear-fuel"].fuel_top_speed_multiplier = 1.5
	data.raw.item["nuclear-fuel"].fuel_value = "0.5GJ"  -- vanilla is 1.21
	data.raw.item["nuclear-fuel"].fuel_emissions_multiplier = 1.5
	
	data.raw.item["k-antimatter-capsule"].fuel_acceleration_multiplier = 2.0
	data.raw.item["k-antimatter-capsule"].fuel_top_speed_multiplier = 2.0	

end