-- -- Remove infinite oil chaining
if settings.startup["reb-oil"] and settings.startup["reb-oil"].value then

	data.raw["resource"]["crude-oil"].infinite = false
	data.raw["resource"]["crude-oil"].minimum = 10000
	data.raw["resource"]["crude-oil"].normal = 50000
	data.raw["resource"]["crude-oil"].minable.mining_time = 0.5
	data.raw["resource"]["crude-oil"].minable.results =
	{
		{
			type = "fluid",
			name = "crude-oil",
			amount_min = 25,
			amount_max = 25,
			probability = 1
		}
	}
	data.raw["resource"]["crude-oil"].autoplace = resource_autoplace.resource_autoplace_settings
	{
		name = "crude-oil",
		order = "c", -- Other resources are "b"; oil won't get placed if something else is already there.
		base_density = 8.2,
		base_spots_per_km2 = 1.8,
		random_probability = 1/48,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 1, -- don't randomize spot size
		additional_richness = 90000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
		has_starting_area_placement = false,
		regular_rq_factor_multiplier = 1
	}
	
end