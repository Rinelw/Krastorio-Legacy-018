-- -- Rebalance ores making difficult
if settings.startup["reb-ore"] and settings.startup["reb-ore"].value then

	-- -- -- Plates
	------------------------------
	-- Increase base plate cost x3

	-- Iron plate
	aswil.recipes.replaceIngredient("iron-plate", "iron-ore", {"iron-ore", 3})

	-- Copper plate
	aswil.recipes.replaceIngredient("copper-plate", "copper-ore", {"copper-ore", 3})

	-- Steel plate
	aswil.recipes.replaceIngredient("steel-plate", "iron-plate", {"iron-plate", 3})
	if not aswil.recipes.hasNoExpensiveIngredients("steel-plate") then
		data.raw.recipe["steel-plate"].expensive.ingredients = {{"iron-plate", 5}}
	end
	
end