-- Unlock cheaty drill

if settings.startup["unlock-deep-drill"] and not settings.startup["unlock-deep-drill"].value then

	aswil.recipes.disable("k-deep-mining-drill")
	aswil.technologies.disable("k-deep-mining", true)
	
end