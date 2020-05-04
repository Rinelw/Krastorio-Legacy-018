-- -- Multipy ore recipes stat for overmodule fixing
if settings.startup["multy-ore"] and settings.startup["multy-ore"].value then

	-- -- -- Plates
	------------------------------
	-- Increase cost product and time of base plate x4 for reduce module errors

	-- Iron plate
	aswil.recipes.multiplyRecipeStat("iron-plate", 4)
	aswil.recipes.multiplyRecipeStat("iron-plate-2", 4)

	-- Copper plate
	aswil.recipes.multiplyRecipeStat("copper-plate", 4)
	aswil.recipes.multiplyRecipeStat("copper-plate-2", 4)
	
	-- Steel plate
	aswil.recipes.multiplyRecipeStat("steel-plate", 2)
	
	aswil.recipes.multiplyRecipeStat("k-steel-3", 2)
	
	-- Steel plate
	aswil.recipes.multiplyRecipeStat("gold-plate", 4)
	
	-- Glass
	aswil.recipes.multiplyRecipeStat("glass-from-sand", 4)
	
	-- coke
	aswil.recipes.multiplyRecipeStat("k-coke", 3)
	
	-- silicon
	aswil.recipes.multiplyRecipeStat("k-silicon", 3)
		
end