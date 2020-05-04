-- -- Doubles the beacon module slot
if settings.startup["reb-beacon"] and settings.startup["reb-beacon"].value then

	data.raw["beacon"]["beacon"].energy_usage             = "750kW"
	data.raw["beacon"]["beacon"].module_specification     =
	{
		module_slots = 4,
		module_info_icon_shift = {0, 0.5},
		module_info_multi_row_initial_height_modifier = -0.3
	}
	
end