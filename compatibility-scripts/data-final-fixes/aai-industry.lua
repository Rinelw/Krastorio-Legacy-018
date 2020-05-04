if mods["aai-industry"] then

	local util = require("__aai-industry__.data-util")

	-- -- -- Techologies fix
	-- fixing automation science pack recipe deadlock
	aswil.recipes.convertIngredient("automation-science-pack", "electronic-circuit", "copper-plate")

	-- -- -- Recipes
	aswil.recipes.uniteDuplicateItemsOfRecipe("solar-panel")
	data.raw.recipe["sand-from-stone-2"] = nil
	data.raw.recipe["sand-from-stone"].subgroup = "raw-material"
	data.raw.recipe["sand-from-stone"].order = "002[sand]"
	-- aswil.recipes.replaceIngredient("solar-panel", "glass", {name = "glass", amount = 10})
		
	-- -- Furnaces
	-- Steel furnace
	util.conditional_modify({
		type = "recipe",
		name = "steel-furnace",
		normal = {
			ingredients = {
				{"iron-plate" , 10},
				{"steel-plate" , 5},
				{"stone-furnace" , 1}	
			},
		},
		expensive = {
			ingredients = {
				{"iron-plate" , 15},
				{"steel-plate" , 10},
				{"stone-furnace" , 2}	
			},
		}
	})
	
	-- Electric furnace
	util.conditional_modify({
		type = "recipe",
		name = "electric-furnace",
		normal = {
			ingredients = {
				{"advanced-circuit" , 5},
				{"k-steel" , 15}
			},
		},
		expensive = {
			ingredients = {
				{"advanced-circuit" , 5},
				{"k-steel" , 30}
			},
		}
	})
	
	-- Boost Krastorio reinforced wall
	data.raw.wall["k-wall"].max_health = 1200
		
	-- -- Iron small electric pole
	data.raw["electric-pole"]["small-iron-electric-pole"].maximum_wire_distance = 8.5
	data.raw["electric-pole"]["small-iron-electric-pole"].supply_area_distance = 3.5
	
	-- -- 	Inter/Cross compatibility with aai-industry with IndustrialRevolution
	if mods["IndustrialRevolution"] then
		-- again removing "flare-stack"
		aswil.technologies.removeUnlockRecipe("oil-processing", "flare-stack")
		data.raw.recipe["flare-stack"] = nil
		-- -- --Technologies fixes
		-- require("__KrastorioPorted__/compatibility-scripts/data-updates/IndustrialRevolution/IndustrialRevolution-technologies")
		-- table.remove(data.raw.technology["deadlock-grinding-1"].prerequisites, "enriched-ore")
		-- aswil.technologies.removePrerequisite("sulfur-processing", "deadlock-grinding-1")
	end
	
end