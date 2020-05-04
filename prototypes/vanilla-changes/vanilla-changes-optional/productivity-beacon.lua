-- -- Enable productivity in beacons
if settings.startup["productivity-beacon"] and settings.startup["productivity-beacon"].value then
	
	data.raw["beacon"]["beacon"].allowed_effects             = {"consumption", "speed", "pollution","productivity"}
	data.raw["beacon"]["singularity-beacon"].allowed_effects = {"consumption", "speed", "pollution","productivity"}
	
end