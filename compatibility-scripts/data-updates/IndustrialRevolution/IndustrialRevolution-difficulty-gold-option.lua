-- -- -- Difficulty gold option fixes
if settings.startup["difficult-gold"] and settings.startup["difficult-gold"].value then

	-- first main item for gold "k-electrolysis-plant"
	
	-- technology
	aswil.technologies.addPrerequisite("deadlock-mining-1", "oil-processing")
		
	-- recipe
	aswil.recipes.replaceIngredient("k-electrolysis-plant", "advanced-circuit", {"controller-mk2", 2})

	data:extend({
		{
			type = "recipe",
			name = "early-k-chlorine",
			category = "chemistry",
			subgroup = "fluid-recipes",
			icons=
			{
				{
					icon = "__IndustrialRevolution__/graphics/icons/64/cracking-background.png",
					icon_size = 64					
				},
				{
					icon = kr_recipes_icon_path .. "salt-water-electrolysis.png",
					icon_size = 32,
					scale = 0.72
				}
			},			
			energy_required = 10,
			enabled = false,
			ingredients = 
			{
				{type="fluid", name="water", amount=100},
			},
			results=
			{
				{type="fluid", name="k-hydrogen", amount=10},
				{type="fluid", name="k-chlorine", amount=10}				
			},
			order = "y01[air-separation]"
		}
	})
	aswil.technologies.addUnlockRecipe("oil-processing", "early-k-chlorine")
	
	data.raw.recipe["salt-water-electrolysis"].icons     =
	{
		{
			icon = "__IndustrialRevolution__/graphics/icons/64/advanced-cracking-background.png",
			icon_size = 64					
		},
		{
			icon = kr_recipes_icon_path .. "salt-water-electrolysis.png",
			icon_size = 32,
			scale = 0.72
		}
	}		
	data.raw.recipe["salt-water-electrolysis"].icon      = nil
	data.raw.recipe["salt-water-electrolysis"].icon_size = nil
	
end
