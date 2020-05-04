-- -- -- Apply the choosen science pack recipes

-- Base
require("lib.science-pack-recipe")
-- Variations
require("compatibility-scripts.settings-updates.IndustrialRevolution")
require("compatibility-scripts.settings-updates.aai-industry")

-- Change Recipes
data.raw.recipe["automation-science-pack"] = science_pack_recipes[settings.startup["k-automation-science-pack-recipe"].value]["automation-science-pack"]
data.raw.recipe["logistic-science-pack"]   = science_pack_recipes[settings.startup["k-logistic-science-pack-recipe"].value]["logistic-science-pack"]
data.raw.recipe["military-science-pack"]   = science_pack_recipes[settings.startup["k-military-science-pack-recipe"].value]["military-science-pack"]
data.raw.recipe["chemical-science-pack"]   = science_pack_recipes[settings.startup["k-chemical-science-pack-recipe"].value]["chemical-science-pack"]
data.raw.recipe["production-science-pack"] = science_pack_recipes[settings.startup["k-production-science-pack-recipe"].value]["production-science-pack"]
data.raw.recipe["utility-science-pack"]    = science_pack_recipes[settings.startup["k-utility-science-pack-recipe"].value]["utility-science-pack"] 

-- Check impossible ingredients
local unlockable_items = aswil.recipes.findNotUnlockableRecipes()

aswil.recipes.removeIngredients("automation-science-pack", unlockable_items)
aswil.recipes.removeIngredients("logistic-science-pack", unlockable_items)
aswil.recipes.removeIngredients("military-science-pack", unlockable_items)
aswil.recipes.removeIngredients("production-science-pack", unlockable_items)
aswil.recipes.removeIngredients("utility-science-pack", unlockable_items)
