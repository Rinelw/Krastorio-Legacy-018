-- -- Clean concrete chaining
if settings.startup["reb-decorative-removal"] and settings.startup["reb-decorative-removal"].value then

	data.raw.tile['stone-path'].decorative_removal_probability = 0.95 
	data.raw.tile['concrete'].decorative_removal_probability = 0.95 
	data.raw.tile['hazard-concrete-right'].decorative_removal_probability = 0.95 
	data.raw.tile['hazard-concrete-left'].decorative_removal_probability = 0.95 
	data.raw.tile['refined-concrete'].decorative_removal_probability = 0.95 
	data.raw.tile['refined-hazard-concrete-right'].decorative_removal_probability = 0.95 
	data.raw.tile['refined-hazard-concrete-left'].decorative_removal_probability = 0.95 
	
end