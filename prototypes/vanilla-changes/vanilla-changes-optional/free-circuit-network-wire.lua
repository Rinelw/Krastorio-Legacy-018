-- Change red and green wire to no cost

if settings.startup["free-circuit-network-wire"] and settings.startup["free-circuit-network-wire"].value then

	data.raw["recipe"]["red-wire"].ingredients = {}
	data.raw["recipe"]["green-wire"].ingredients = {}
	
end