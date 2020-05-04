if mods["pycoalprocessing"] then
	-- Recipes fixes
	aswil.recipes.removeIngredient("big-electric-pole", "copper-cable")
	
	-- Re-apply Krastorio science icons
	data.raw.tool["automation-science-pack"].icon = "__Krastorio__/graphics/icons/vanilla-science/automation-science-pack.png"
	data.raw.tool["automation-science-pack"].icon_size = 64

	data.raw.tool["logistic-science-pack"].icon = "__Krastorio__/graphics/icons/vanilla-science/logistic-science-pack.png"
	data.raw.tool["logistic-science-pack"].icon_size = 64

	data.raw.tool["chemical-science-pack"].icon = "__Krastorio__/graphics/icons/vanilla-science/chemical-science-pack.png"
	data.raw.tool["chemical-science-pack"].icon_size = 64
end