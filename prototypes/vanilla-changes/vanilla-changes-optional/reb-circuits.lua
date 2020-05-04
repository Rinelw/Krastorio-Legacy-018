-- -- Circuits rebalance changes
if settings.startup["reb-circuits"] and settings.startup["reb-circuits"].value then

	aswil.recipes.setRecipeEnergyCost("electronic-circuit", 1)
	aswil.recipes.setRecipeEnergyCost("advanced-circuit", 3)
	aswil.recipes.setRecipeEnergyCost("processing-unit", 6)
	
	aswil.recipes.overrideIngredients("advanced-circuit", 	
	{
		{"electronic-circuit", 2},
		{"copper-cable", 2},
		{"k-circuit-board", 1},
		{"integrated-circuit", 3},
	})
	
	data.raw.recipe["processing-unit"].category = "crafting"
	aswil.recipes.overrideIngredients("processing-unit", 
	{
		{"advanced-circuit", 2},
		{"copper-cable", 2},
		{"k-circuit-board", 1},
		{"k-processor", 1},
		{"integrated-circuit", 6},
		{"k-ram", 1}
	})
	
end
