-- Fixing category after science packs replacing

if mods["IndustrialRevolution"] then

	-- -- Fixing automation science pack recipe deadlocks
	-- automation-science-pack
	aswil.recipes.convertIngredient("automation-science-pack", "electronic-circuit", "copper-plate")
	aswil.recipes.convertIngredient("automation-science-pack", "iron-gear-wheel", "tin-gear-wheel")
	data.raw.recipe["automation-science-pack"].category = "crafting"
	
	-- "logistic-science-pack"
	aswil.recipes.convertIngredient("logistic-science-pack", "inserter", "burner-inserter")
	data.raw.recipe["logistic-science-pack"].category = "crafting"
	
	-- "military-science-pack"
	if not aswil.recipes.hasIngredient("military-science-pack", "copper-cartridge") then
		aswil.recipes.addOrReplaceIngredient("military-science-pack", "piercing-rounds-magazine", {"copper-magazine", 2})	
	end
	aswil.recipes.replaceIngredient("military-science-pack", "grenade", {"iron-magazine", 2})
	data.raw.recipe["military-science-pack"].category = "crafting"
	
	-- "chemical-science-pack"
	aswil.recipes.convertIngredient("chemical-science-pack", "advanced-circuit", "controller-mk1")
	data.raw.recipe["chemical-science-pack"].category = "crafting"

	-- "production-science-pack"
	aswil.recipes.convertIngredient("production-science-pack", "productivity-module", "computer-mk1")
	aswil.recipes.convertIngredient("production-science-pack", "electric-furnace", "iron-furnace")
	data.raw.recipe["production-science-pack"].category = "crafting"
	
	-- "utility-science-pack"
	aswil.recipes.convertIngredient("utility-science-pack", "repair-pack", "titanium-repair-tool")
	aswil.recipes.convertIngredient("utility-science-pack", "speed-module", "computer-mk2")
	if #aswil.recipes.getIngredients("utility-science-pack") < 3 then
		aswil.recipes.addIngredient("utility-science-pack", {"advanced-battery", 1})
	end
	data.raw.recipe["utility-science-pack"].category = "crafting" 

end
