-- -- -- Recipes fixes

local matter = require("lib.matter-util")

-- Migrate to deadlock steel
---[[
-- And modules limitation
aswil.modules.removeProductivityLimitation("steel-billet")
aswil.modules.removeProductivityLimitation("k-steel")
aswil.modules.removeProductivityLimitation("k-steel-2")
aswil.modules.removeProductivityLimitation("k-steel-3")
-- delete recipes
data.raw.recipe["steel-billet"] = nil
data.raw.recipe["k-steel"]      = nil
data.raw.recipe["k-steel-2"]    = nil
data.raw.recipe["k-steel-3"]    = nil
--]]

aswil.recipes.convertIngredientFromAllRecipes("k-steel", "steel-plate")	
aswil.recipes.convertProductFromAllRecipes("k-steel", "steel-plate")	

aswil.recipes.overrideIngredients("steel-pipe", {{"steel-tube", 1},{"steel-rivet", 1}})
aswil.recipes.overrideIngredients("steel-pipe-to-ground", {{"steel-pipe", 10}})

aswil.recipes.overrideIngredients("fs-50", aswil.recipes.getIngredients("storage-tank"))
aswil.recipes.convertIngredient("fs-50", "pipe", "steel-pipe")
aswil.recipes.convertIngredient("fs-50", "iron-plate-heavy", "steel-plate-heavy")
aswil.recipes.convertIngredient("fs-50", "iron-stick", "steel-rod")
aswil.recipes.convertIngredient("fs-50", "iron-rivet", "steel-rivet")
aswil.recipes.overrideIngredients("fs-200", aswil.recipes.getIngredients("storage-tank"))
aswil.recipes.multiplyRecipeStat("fs-200", 2)
aswil.recipes.convertIngredient("fs-200", "pipe", "steel-pipe")
aswil.recipes.convertIngredient("fs-200", "iron-plate-heavy", "steel-plate-heavy")
aswil.recipes.convertIngredient("fs-200", "iron-stick", "steel-rod")
aswil.recipes.convertIngredient("fs-200", "iron-rivet", "steel-rivet")
aswil.recipes.replaceProduct("fs-200", "fs-200", {"fs-200", 1})

---------------------------------------------------------------
-- Migrate to deadlock gold

---[[
-- And module limitation
aswil.modules.removeProductivityLimitation("k-gold-foil")
-- removing k gold foil
data.raw.item["k-gold-foil"] = nil
data.raw.recipe["k-gold-foil"] = nil 
--]]

-- convert k-gold-foil to dir gold foil
aswil.recipes.convertIngredientFromAllRecipes("k-gold-foil", "gold-foil")

-- adpat gold place recipe to DIR
aswil.recipes.replaceIngredient("gold-plate", "gold-ore", {"gold-ingot", 1})
aswil.recipes.setRecipeEnergyCost("gold-plate", 1)
---------------------------------------------------------------
-- Migrate to deadlock titanium

aswil.recipes.multiplyRecipeStat("k-titanium-plate", 12)
aswil.recipes.convertProduct("k-titanium-plate", "k-titanium-plate", "titanium-ingot")
aswil.recipes.setRecipeEnergyCost("k-titanium-plate", 76.8)
aswil.recipes.multiplyRecipeStat("k-titanium-plate-2", 12)
aswil.recipes.convertProduct("k-titanium-plate-2", "k-titanium-plate", "titanium-ingot")
aswil.recipes.setRecipeEnergyCost("k-titanium-plate-2", 76.8)

aswil.recipes.convertIngredientFromAllRecipes("k-titanium-plate", "titanium-plate")

-- adding titanium piston for turbines NOT USED
--[[
data:extend(
{	
	-- Item
	{
		type = "item",
		name = "titanium-tube",
		icon = "__IndustrialRevolution__/graphics/icons/64/titanium-tube.png",
		icon_size = 64,    
		subgroup = "tube",
		order = "aardvark-j-n-z2[titanium-tube]",
		stack_size = 100
	},
	-- Recipe of plate
	{
		type = "recipe",
		name = "titanium-tube",
		localised_description={"recipe-description.titanium-plate"},
		icon = "__IndustrialRevolution__/graphics/icons/64/titanium-tube.png",
		icon_size = 64,  
		energy_required = 1,
		enabled = false,
		order = "aardvark-j-n-z2[titanium-tube]",
		subgroup = "tube",
		ingredients =
		{
			{ type="item", name="titanium-plate", amount=2 }
		},
		results= 
		{ 
			{ type="item", name="titanium-tube", amount=1 } 
		}
	}
	
	-- Item
	{
		type = "item",
		name = "titanium-piston",
		icon = "__IndustrialRevolution__/graphics/icons/64/titanium-piston.png",
		icon_size = 64,    
		subgroup = "chassis",
		order = "aardvark-aab-n-j2[titanium-piston]",
		stack_size = 100
	},
	-- Recipe of plate
	{
		type = "recipe",
		name = "titanium-piston",
		localised_description={"recipe-description.titanium-plate"},
		icon = "__IndustrialRevolution__/graphics/icons/64/titanium-piston.png",
		icon_size = 64,  
		energy_required = 1,
		enabled = false,
		order = "aardvark-aab-n-j2[titanium-piston]",
		subgroup = "chassis",
		ingredients =
		{
			{ type="item", name="titanium-plate", amount=2 },
			{ type="item", name="titanium-rod", amount=1 },
			{ type="item", name="titanium-tube", amount=1 },
			{ type="item", name="titanium-rivet", amount=1 }
		},
		results= 
		{ 
			{ type="item", name="titanium-piston", amount=1 } 
		}
	}
})	
--]]
---------------------------------------------------------------
-- Migrate to deadlock tantalum

-- create ingot and dir plate recipe
data:extend(
{
	-- Item
	{
		type = "item",
		name = "tantalum-ingot",
		icon = "__Krastorio__/graphics/compatibility/IndustrialRevolution/tantalum-ingot.png",
		icon_size = 64,    
		subgroup = "ingot",
		order = "aardvark-e3-o-e[tantalum-ingot]",
		stack_size = 100
	},
	-- Recipe of plate
	{
		type = "recipe",
		name = "dir-tantalum-plate",
		localised_description={"recipe-description.duranium-plate"},
		icon = "__Krastorio__/graphics/compatibility/IndustrialRevolution/tantalum-plate.png",
		icon_size = 64,  
		energy_required = 1,
		enabled = false,
		order = "aardvark-f-o-e4[tantalum-ingot]",
		subgroup = "plate",
		ingredients =
		{
			{ type="item", name="tantalum-ingot", amount=1 }
		},
		results= 
		{ 
			{ type="item", name="k-tantalum-plate", amount=1 } 
		}
	},
	-- IR tantalum scraps
	{
		type = "item",
		name = "tantalum-scrap",
		icon = "__Krastorio__/graphics/compatibility/IndustrialRevolution/tantalum-scrap.png",
		icon_size = 64,
		subgroup = "scrap",
		order = "aardvark-db-z",
		pictures = 
		{
			{
				filename = "__Krastorio__/graphics/compatibility/IndustrialRevolution/tantalum-scrap.png",
				scale = 0.25,
				size = 64
			},
			{
				filename = "__Krastorio__/graphics/compatibility/IndustrialRevolution/tantalum-scrap-2.png",
				scale = 0.25,
				size = 64
			},
			{
				filename = "__Krastorio__/graphics/compatibility/IndustrialRevolution/tantalum-scrap-3.png",
				scale = 0.25,
				size = 64
			},
			{
				filename = "__Krastorio__/graphics/compatibility/IndustrialRevolution/tantalum-scrap-4.png",
				scale = 0.25,
				size = 64
			}
		},
		stack_size = 50
	}
})

aswil.recipes.multiplyRecipeStat("k-tantalum-plate", 12)
aswil.recipes.convertProduct("k-tantalum-plate", "k-tantalum-plate", "tantalum-ingot")
aswil.recipes.setRecipeEnergyCost("k-tantalum-plate", 76.8)
aswil.recipes.multiplyRecipeStat("k-tantalum-plate-2", 12)
aswil.recipes.convertProduct("k-tantalum-plate-2", "k-tantalum-plate", "tantalum-ingot")
aswil.recipes.setRecipeEnergyCost("k-tantalum-plate-2", 76.8)		

if aswil.general.isVersionGreaterThan(mods["IndustrialRevolution"], "0.99.3")  then
	local k_tantalum_scrap = aswil_utils.tables.fullCopy(data.raw.recipe["k-tantalum-plate"])
	k_tantalum_scrap.name = "tantalum-scrap"
	data:extend({k_tantalum_scrap})
	aswil.recipes.overrideIngredients("tantalum-scrap", {{"tantalum-scrap", 4}})
	aswil.technologies.addUnlockRecipe("k-minerals-extraction", "tantalum-scrap")
end

---------------------------------------------------------------
-- Migrate to deadlock glass

aswil.recipes.convertIngredientFromAllRecipes("glass", "glass-plate")	
aswil.recipes.convertProductFromAllRecipes("glass", "glass-plate")

aswil.recipes.replaceIngredient("small-lamp", "glass-plate", {"glass-plate", 1})
aswil.recipes.replaceIngredient("solar-panel", "glass-plate", {"glass-plate", 9})
---------------------------------------------------------------
-- Migrate Krastorio enriched products

aswil.recipes.setRecipeEnergyCost("copper-plate-2", 38.4)
aswil.recipes.replaceIngredient("copper-plate-2", "enriched-copper", {"enriched-copper", 4})
aswil.recipes.replaceProduct("copper-plate-2", "copper-plate", {"copper-ingot", 12})

aswil.recipes.setRecipeEnergyCost("iron-plate-2", 38.4)
aswil.recipes.replaceIngredient("iron-plate-2", "enriched-iron", {"enriched-iron", 4})
aswil.recipes.replaceProduct("iron-plate-2", "iron-plate", {"iron-ingot", 12})

---------------------------------------------------------------
-- Migrate Krastorio dirty water

aswil.recipes.convertIngredientFromAllRecipes("k-dirty-water", "dirty-water")
aswil.recipes.convertProductFromAllRecipes("k-dirty-water", "dirty-water")

local liquid_evaporator = require("lib.liquid-evaporator-util")
liquid_evaporator.removeEvaporateFluidsRecipe("k-dirty-water")	

data.raw.recipe["empty-k-dirty-water-barrel"] = nil
data.raw.recipe["fill-k-dirty-water-barrel"] = nil
---------------------------------------------------------------
-- Migrate Krastorio matter to ingot

aswil.recipes.convertProduct("matter-to-copper-plate", "copper-plate", "copper-ingot")
aswil.recipes.convertProduct("matter-to-iron-plate", "iron-plate", "iron-ingot")
aswil.recipes.convertProduct("matter-to-steel", "steel-plate", "steel-ingot")
aswil.recipes.convertProduct("matter-to-gold-plate", "gold-plate", "gold-ingot")
aswil.recipes.convertProduct("matter-to-tantalum-plate", "k-tantalum-plate", "tantalum-ingot")
aswil.recipes.convertProduct("matter-to-titanium-plate", "k-titanium-plate", "titanium-ingot")
aswil.recipes.convertProduct("matter-to-glass", "glass-plate", "glass-ingot")

---------------------------------------------------------------

-- Rebalance simple recipes

aswil.recipes.setRecipeEnergyCost("sand-from-stone", 3.2)
aswil.recipes.replaceIngredient("sand-from-stone", "stone", {"stone", 1})

aswil.recipes.replaceIngredient("k-ram", "gold-foil", {"gold-foil", 1})
aswil.recipes.replaceIngredient("k-processor", "gold-foil", {"gold-foil", 1})
aswil.recipes.replaceIngredient("menarite-processor", "gold-foil", {"gold-foil", 1})

aswil.recipes.removeIngredient("artillery-shell", "k-tantalum-plate")

aswil.recipes.removeIngredient("low-density-structure", "copper-plate")

aswil.recipes.convertIngredientFromAllRecipes("integrated-circuit", "advanced-circuit")	

aswil.recipes.convertIngredientFromAllRecipes("repair-pack", "iron-repair-tool")	
aswil.recipes.convertIngredientFromAllRecipes("flying-robot-frame", "steel-chassis-small")	

-- Buildings recipe rebalancement

-- steel tier

-- steel pump

aswil.recipes.convertIngredient("steel-pump", "engine-unit", "electric-engine-unit")	

-- flares
aswil.recipes.replaceIngredient("k-flare-stack", "steel-plate", {"iron-plate", 20})
aswil.recipes.replaceIngredient("k-liquid-evaporator", "steel-plate", {"iron-plate", 20})

-- accumulator

aswil.recipes.removeIngredient("accumulator", "battery")
aswil.recipes.removeIngredient("accumulator", "steel-plate")

-- beacon
aswil.recipes.removeIngredient("beacon", "electronic-circuit")
aswil.recipes.removeIngredient("beacon", "advanced-circuit")
aswil.recipes.removeIngredient("beacon", "steel-plate")
aswil.recipes.removeIngredient("beacon", "substation")

aswil.recipes.replaceIngredient("k-electrolysis-plant", "steel-plate", {"iron-chassis-large", 1})

-- roboport
aswil.recipes.replaceIngredient("roboport", "steel-plate", {"steel-plate", 20})

-- rocket silo
aswil.recipes.replaceIngredient("rocket-silo", "menarite-processor", {"menarite-processor", 50})
aswil.recipes.replaceIngredient("rocket-silo", "computer-mk3", {"computer-mk3", 16})
aswil.recipes.removeIngredient("rocket-silo", "steel-plate")
aswil.recipes.removeIngredient("rocket-silo", "concrete")
aswil.recipes.removeIngredient("rocket-silo", "titanium-plate")
aswil.recipes.removeIngredient("rocket-silo", "processing-unit")

-- assembling machine-3
aswil.recipes.removeIngredient("assembling-machine-3", "gold-plate")
aswil.recipes.removeIngredient("assembling-machine-3", "steel-plate")

-- solar panel
aswil.recipes.removeIngredient("solar-panel", "gold-foil")
aswil.recipes.removeIngredient("solar-panel", "k-silicon-wafer")
aswil.recipes.convertIngredient("solar-panel", "advanced-circuit", "electronic-circuit")

-- oil refinery
aswil.recipes.removeIngredient("oil-refinery", "steel-plate")

-- kr-air-filter
aswil.recipes.replaceIngredient("kr-air-filter", "steel-plate", {"steel-chassis-large", 1})
aswil.recipes.addIngredient("kr-air-filter", {"iron-motor", 4})

-- laser turret
aswil.recipes.removeIngredient("laser-turret", "k-quartz")

-- steam turbine
aswil.recipes.removeIngredient("steam-turbine", "steel-plate")
aswil.recipes.removeIngredient("steam-turbine", "steel-chassis-large")
aswil.recipes.replaceIngredient("steam-turbine", "chromium-piston", {"steel-piston", 8})
aswil.recipes.replaceIngredient("steam-turbine", "chromium-gear-wheel", {"steel-gear-wheel", 8})
aswil.recipes.convertIngredient("steam-turbine", "chromium-plate-heavy", "steel-plate-heavy")
aswil.recipes.convertIngredient("steam-turbine", "controller-mk3", "controller-mk2")

-- big turbine
aswil.recipes.removeIngredient("big-turbine", "electric-engine-unit")
aswil.recipes.removeIngredient("big-turbine", "copper-plate")
aswil.recipes.removeIngredient("big-turbine", "steel-pipe")
aswil.recipes.removeIngredient("big-turbine", "steel-gear-wheel")
aswil.recipes.replaceIngredient("big-turbine", "steel-plate", {"chromium-plate-heavy", 20})
aswil.recipes.addIngredient("big-turbine", {"controller-mk3", 1})
aswil.recipes.addIngredient("big-turbine", {"chromium-piston", 8})
aswil.recipes.addIngredient("big-turbine", {"chromium-gear-wheel", 16})

-- krastorio filtration plant
aswil.recipes.replaceIngredient("k-filtration-plant", "electronic-circuit", {"controller-mk2", 2})
aswil.recipes.replaceIngredient("k-filtration-plant", "steel-plate", {"steel-plate-heavy", 40})
aswil.recipes.replaceIngredient("k-filtration-plant", "plastic-bar", {"steel-chassis-large", 1})

-- POLES

-- small electric-pole
aswil.recipes.removeIngredient("small-electric-pole", "iron-plate")

-- medium electric-pole
aswil.recipes.removeIngredient("medium-electric-pole", "iron-stick")

-- big electric pole
aswil.recipes.removeIngredient("big-electric-pole", "iron-stick")
aswil.recipes.removeIngredient("big-electric-pole", "steel-plate")

-- substation
aswil.recipes.removeIngredient("substation", "copper-plate")
aswil.recipes.removeIngredient("substation", "copper-cable")
aswil.recipes.removeIngredient("substation", "steel-cable")

aswil.recipes.removeIngredient("chemical-plant", "steel-plate")
aswil.recipes.removeIngredient("chemical-plant", "electronic-circuit")
aswil.recipes.replaceIngredient("chemical-plant", "pipe", {"pipe", 5})

aswil.recipes.replaceIngredient("radar", "iron-plate", {"iron-plate", 15})

aswil.recipes.removeIngredient("laser-turret", "quartz")

aswil.recipes.replaceIngredient("electric-mining-drill-mk2", "steel-plate", {"steel-plate", 5})

aswil.recipes.replaceIngredient("electric-mining-drill-mk3", "titanium-plate", {"titanium-plate", 5})
aswil.recipes.removeIngredient("electric-mining-drill-mk3", "processor")
aswil.recipes.convertIngredient("electric-mining-drill-mk3", "electronic-circuit", "advanced-circuit")

aswil.recipes.replaceIngredient("antimatter-reactor", "electric-engine-unit", {"advanced-engine-unit", 25})
aswil.recipes.replaceIngredient("antimatter-reactor", "k-tantalum-plate", {"duranium-plate", 100})
aswil.recipes.replaceIngredient("antimatter-reactor", "steel-plate", {"chromium-plate", 200})

-- Imersite round

aswil.recipes.replaceIngredient("imersite-rounds-magazine", "piercing-rounds-magazine", {"titanium-magazine", 1})

-- new cartridge
require("__IndustrialRevolution__/code/functions/functions-ammo")
imersite_cartridge_projectile = create_projectile(27, 0.75, 1)

imersite_cartridge = aswil_utils.tables.fullCopy(data.raw.ammo["titanium-cartridge"])

imersite_cartridge.name = "imersite-cartridge"
imersite_cartridge.localised_name={"item-name.imersite-cartridge"}
imersite_cartridge.localised_description=""
imersite_cartridge.icon = "__Krastorio__/graphics/compatibility/IndustrialRevolution/imersite-cartridge.png"
imersite_cartridge.order = imersite_cartridge.order .. "[imersite-cartridge]"

--imersite_cartridge.ammo_type.action[2].action_delivery.projectile = "bullet-750-100-27"
imersite_cartridge.ammo_type = get_cartridge_ammo_type(27, 20, 0.75, 1)

data:extend({imersite_cartridge})

imersite_cartridge_recipe = aswil_utils.tables.fullCopy(data.raw.recipe["titanium-cartridge"])

imersite_cartridge_recipe.name = "imersite-cartridge"
imersite_cartridge_recipe.localised_name={"recipe-name.imersite-cartridge"}
imersite_cartridge_recipe.localised_description=""
imersite_cartridge_recipe.icon = "__Krastorio__/graphics/compatibility/IndustrialRevolution/imersite-cartridge.png"
imersite_cartridge_recipe.order = imersite_cartridge_recipe.order .. "[imersite-cartridge]" 

data:extend({imersite_cartridge_recipe})

aswil.recipes.replaceIngredient(imersite_cartridge_recipe.name, "titanium-plate", {"titanium-cartridge", 1})
aswil.recipes.replaceIngredient(imersite_cartridge_recipe.name, "titanium-ball", {"imersite", 2})

aswil.recipes.replaceProduct(imersite_cartridge_recipe.name, "titanium-cartridge", {"imersite-cartridge", 1})

-- equipment

aswil.recipes.replaceIngredient("big-solar-panel-equipment", "steel-plate", {"copper-cable", 10})
aswil.recipes.replaceIngredient("big-imersite-solar-panel-equipment", "gold-plate", {"gold-cable", 10})
aswil.recipes.convertIngredient("solar-panel-equipment", "advanced-circuit", "electronic-circuit")

-- armor

aswil.recipes.removeIngredient("light-armor", "iron-plate")

aswil.recipes.removeIngredient("heavy-armor", "steel-plate")

aswil.recipes.removeIngredient("modular-armor", "advanced-circuit")
aswil.recipes.removeIngredient("modular-armor", "steel-plate")
aswil.recipes.removeIngredient("modular-armor", "integrated-circuit")
aswil.recipes.removeIngredient("modular-armor", "rubber-natural")

aswil.recipes.removeIngredient("power-armor", "k-processor")
aswil.recipes.removeIngredient("power-armor", "titanium-plate")
aswil.recipes.removeIngredient("power-armor", "electric-engine-unit")

aswil.recipes.removeIngredient("power-armor-mk2", "menarite-processor")
aswil.recipes.removeIngredient("power-armor-mk2", "effectivity-module-2")
aswil.recipes.removeIngredient("power-armor-mk2", "speed-module-2")
aswil.recipes.removeIngredient("power-armor-mk2", "low-density-structure")

aswil.recipes.addIngredient("power-armor-mk3", {"menarite-processor", 10})
aswil.recipes.convertIngredient("power-armor-mk3", "effectivity-module-3", "effectivity-module-2")
aswil.recipes.convertIngredient("power-armor-mk3", "speed-module-3", "speed-module-2")

aswil.recipes.replaceIngredient("power-armor-mk4", "k-tantalum-plate", {"duranium-plate-heavy", 10})

-- lasers

aswil.recipes.addIngredient("personal-submachine-laser-defense-mk1-equipment", {"sensor", 2})
aswil.recipes.addIngredient("personal-submachine-laser-defense-mk1-equipment", {"laser", 4})
aswil.recipes.convertIngredient("personal-submachine-laser-defense-mk1-equipment", "steel-plate", "iron-plate-heavy")
aswil.recipes.removeIngredient("personal-submachine-laser-defense-mk1-equipment", "laser-turret")	

-- shield

aswil.recipes.replaceIngredient("energy-shield-mk4-equipment", "k-tantalum-plate", {"duranium-plate-heavy", 10})

-- motor

aswil.recipes.convertIngredient("additional-engine", "steel-plate", "iron-plate-heavy")

-- generator

aswil.recipes.convertIngredient("small-portable-generator", "steel-plate", "iron-plate-heavy")

aswil.recipes.addIngredient("portable-antimaterial-core", {"computer-mk3", 5})
aswil.recipes.replaceIngredient("portable-antimaterial-core", "k-tantalum-plate", {"duranium-plate-heavy", 10})
aswil.recipes.removeIngredient("portable-antimaterial-core", "menarite-processor")
aswil.recipes.removeIngredient("portable-antimaterial-core", "productivity-module-3")
aswil.recipes.removeIngredient("portable-antimaterial-core", "speed-module-3")

aswil.recipes.convertIngredient("battery-equipment", "advanced-circuit", "electronic-circuit")
aswil.recipes.convertIngredient("battery-mk2-equipment", "processing-unit", "advanced-circuit")
aswil.recipes.convertIngredient("battery-mk2-equipment", "battery-equipment", "advanced-battery")

aswil.recipes.convertIngredient("personal-roboport-mk2-equipment", "steel-chassis-small", "personal-roboport-equipment")
aswil.recipes.replaceIngredient("personal-roboport-mk2-equipment", "chromium-tube", {"chromium-tube", 10})

-- nightvisor

aswil.recipes.convertIngredient("night-visor-equipment", "advanced-circuit", "electronic-circuit")

-- robots

-- Logistic robot
aswil.recipes.removeIngredient("logistic-robot", "steel-plate")
aswil.recipes.removeIngredient("logistic-robot", "plastic-bar")

-- Construction robot
aswil.recipes.removeIngredient("construction-robot", "steel-plate")
aswil.recipes.removeIngredient("construction-robot", "plastic-bar")

-- Defender capsule
aswil.recipes.removeIngredient("defender-capsule", "plastic-bar")
aswil.recipes.replaceIngredient("defender-capsule", "flying-robot-frame", {"steel-chassis-small", 1})

-- Distractor capsule
aswil.recipes.removeIngredient("distractor-capsule", "steel-chassis-small")
aswil.recipes.removeIngredient("distractor-capsule", "integrated-circuit")
aswil.recipes.removeIngredient("distractor-capsule", "gold-plate")
aswil.recipes.addOrReplaceIngredient("distractor-capsule", "flying-robot-frame", {"defender-capsule", 1})

-- Destroyer capsule
aswil.recipes.removeIngredient("destroyer-capsule", "steel-chassis-small")
aswil.recipes.removeIngredient("destroyer-capsule", "plastic-bar")
aswil.recipes.removeIngredient("destroyer-capsule", "processing-unit")
aswil.recipes.removeIngredient("destroyer-capsule", "k-ram")
aswil.recipes.addOrReplaceIngredient("destroyer-capsule", "flying-robot-frame", {"distractor-capsule", 1})

-- Satelite
aswil.recipes.removeIngredient("satellite", "accumulator")
aswil.recipes.removeIngredient("satellite", "solar-panel")
aswil.recipes.removeIngredient("satellite", "processing-unit")

-- Locomotive

aswil.recipes.removeIngredient("locomotive", "steel-plate")
aswil.recipes.addIngredient("locomotive", {"iron-plate", 18})

-- -- New recipes

-- computers

local computer_mk1_recipe = aswil_utils.tables.fullCopy(data.raw.recipe["computer-mk1"])
local computer_mk2_recipe = aswil_utils.tables.fullCopy(data.raw.recipe["computer-mk2"])
local computer_mk3_recipe = aswil_utils.tables.fullCopy(data.raw.recipe["computer-mk3"])

computer_mk1_recipe.name = computer_mk1_recipe.name .. "-2"
computer_mk2_recipe.name = computer_mk2_recipe.name .. "-2"
computer_mk3_recipe.name = computer_mk3_recipe.name .. "-2"

data:extend({computer_mk1_recipe, computer_mk2_recipe, computer_mk3_recipe})

data.raw.recipe[computer_mk1_recipe.name].localised_name = {"other.krastorio-recipe-variation", {"item-name."..data.raw.recipe["computer-mk1"].name}}
data.raw.recipe[computer_mk1_recipe.name].icons = 
aswil.icons.createOverlappedIcon
(
	1, 
	"__IndustrialRevolution__/graphics/icons/64/computer-mk1.png", 
	64, 
	"__Krastorio__/graphics/k.png", 
	64
)

data.raw.recipe[computer_mk2_recipe.name].localised_name = {"other.krastorio-recipe-variation", {"item-name."..data.raw.recipe["computer-mk2"].name}}
data.raw.recipe[computer_mk2_recipe.name].icons = 
aswil.icons.createOverlappedIcon
(
	1, 
	"__IndustrialRevolution__/graphics/icons/64/computer-mk2.png", 
	64, 
	"__Krastorio__/graphics/k.png", 
	64
)

data.raw.recipe[computer_mk3_recipe.name].localised_name = {"other.krastorio-recipe-variation", {"item-name."..data.raw.recipe["computer-mk3"].name}}
data.raw.recipe[computer_mk3_recipe.name].icons = 
aswil.icons.createOverlappedIcon
(
	1, 
	"__IndustrialRevolution__/graphics/icons/64/computer-mk3.png", 
	64, 
	"__Krastorio__/graphics/k.png", 
	64
)

data.raw.recipe[computer_mk1_recipe.name].icon = nil
data.raw.recipe[computer_mk1_recipe.name].icon_size = nil

aswil.recipes.addOrReplaceIngredient(computer_mk1_recipe.name, "electronic-circuit", {"k-ram", 8})
aswil.recipes.addOrReplaceIngredient(computer_mk1_recipe.name, "controller-mk1", {"k-processor", 4})

aswil.recipes.addOrReplaceIngredient(computer_mk2_recipe.name, "electronic-circuit", {"k-ram", 16})
aswil.recipes.addOrReplaceIngredient(computer_mk2_recipe.name, "controller-mk2", {"k-processor", 8})

aswil.recipes.addOrReplaceIngredient(computer_mk3_recipe.name, "electronic-circuit", {"k-ram", 32})
aswil.recipes.addOrReplaceIngredient(computer_mk3_recipe.name, "controller-mk3", {"k-processor", 12})

-- steel with coke

dir_steel_recipe = nil

if aswil.general.isVersionLesserThan(mods["IndustrialRevolution"], "0.99.4") then
	dir_steel_recipe = aswil_utils.tables.fullCopy(data.raw.recipe["steel-ingot"])
else
	dir_steel_recipe = aswil_utils.tables.fullCopy(data.raw.recipe["steel-ingot-from-ingot"])
end

dir_steel_recipe.name = dir_steel_recipe.name .. "-2"

data:extend({dir_steel_recipe})

aswil.recipes.replaceIngredient(dir_steel_recipe.name, "carbon-powder", {"k-coke", 1})

-- rebalance cost

-- Beacon
aswil.recipes.setRecipeEnergyCost("beacon", 1)
-- Roboport
aswil.recipes.setRecipeEnergyCost("roboport", 2)
-- Radar
aswil.recipes.setRecipeEnergyCost("radar", 1)
-- Rocket silo
aswil.recipes.setRecipeEnergyCost("rocket-silo", 3000)
-- Chemical plant 
aswil.recipes.setRecipeEnergyCost("chemical-plant", 2)
-- Oil Refinery
aswil.recipes.setRecipeEnergyCost("oil-refinery", 2)
-- Assembler machine 1
aswil.recipes.setRecipeEnergyCost("assembling-machine-1", 1)
-- Assembler machine 2
aswil.recipes.setRecipeEnergyCost("assembling-machine-2", 2)
-- Assembler machine 3
aswil.recipes.setRecipeEnergyCost("assembling-machine-3", 3)
-- Stone furnace
aswil.recipes.setRecipeEnergyCost("stone-furnace", 1)
-- Steel furnace
aswil.recipes.setRecipeEnergyCost("steel-furnace", 2)
-- Electric furnace
aswil.recipes.setRecipeEnergyCost("electric-furnace", 3)
-- Laboratory
aswil.recipes.setRecipeEnergyCost("lab", 1)
-- Pump
aswil.recipes.setRecipeEnergyCost("pump", 1)
-- Offshore pump
aswil.recipes.setRecipeEnergyCost("offshore-pump", 1)
-- Storage tank
aswil.recipes.setRecipeEnergyCost("storage-tank", 1)
-- Boiler
aswil.recipes.setRecipeEnergyCost("boiler", 1)
-- Steam engine
aswil.recipes.setRecipeEnergyCost("steam-engine", 15)
-- Steam turbine
aswil.recipes.setRecipeEnergyCost("steam-turbine", 30)
-- big turbine
aswil.recipes.setRecipeEnergyCost("big-turbine", 60)
-- Electric mining drill
aswil.recipes.setRecipeEnergyCost("electric-mining-drill", 2)
-- Logistic robot
aswil.recipes.setRecipeEnergyCost("logistic-robot", 2)
-- Construction robot
aswil.recipes.setRecipeEnergyCost("construction-robot", 2)
-- Defender capsule
aswil.recipes.setRecipeEnergyCost("defender-capsule", 1)
-- Distractor capsule
aswil.recipes.setRecipeEnergyCost("distractor-capsule", 2)
-- Destroyer capsule
aswil.recipes.setRecipeEnergyCost("destroyer-capsule", 3)

-- -- -- Matter recipes adaptation

-- -- Ores

local gravel_bonus = 1.2 -- 20%
local pure_bonus   = 1.4 -- 40%
local powder_bonus = 1.6 -- 60%

-- -- IRONS
local iron_gravel =
{
	item_name = "iron-gravel",
	minimum_conversion_quantity = 10, 
	matter_value = 5*gravel_bonus,
	energy_required = 1,
	only_conversion = true
}
matter_func.createMatterRecipe(iron_gravel) 
local iron_pure =
{
	item_name = "iron-pure",
	minimum_conversion_quantity = 10, 
	matter_value = 5*pure_bonus,
	energy_required = 1,
	only_conversion = true
}
matter_func.createMatterRecipe(iron_pure) 
local iron_powder =
{
	item_name = "iron-powder",
	minimum_conversion_quantity = 10, 
	matter_value = 5*powder_bonus,
	energy_required = 1
}
matter_func.createMatterRecipe(iron_powder) 

-- -- COPPERS
local copper_gravel =
{
	item_name = "copper-gravel",
	minimum_conversion_quantity = 10, 
	matter_value = 5*gravel_bonus,
	energy_required = 1,
	only_conversion = true
}
matter_func.createMatterRecipe(copper_gravel) 
local copper_pure =
{
	item_name = "copper-pure",
	minimum_conversion_quantity = 10, 
	matter_value = 5*pure_bonus,
	energy_required = 1,
	only_conversion = true
}
matter_func.createMatterRecipe(copper_pure) 
local copper_powder =
{
	item_name = "copper-powder",
	minimum_conversion_quantity = 10, 
	matter_value = 5*powder_bonus,
	energy_required = 1
}
matter_func.createMatterRecipe(copper_powder) 

-- -- GOLDS
local gold_gravel =
{
	item_name = "gold-gravel",
	minimum_conversion_quantity = 10, 
	matter_value = 6.5*gravel_bonus,
	energy_required = 1,
	only_conversion = true
}
matter_func.createMatterRecipe(gold_gravel) 
local gold_pure =
{
	item_name = "gold-pure",
	minimum_conversion_quantity = 10, 
	matter_value = 6.5*pure_bonus,
	energy_required = 1,
	only_conversion = true
}
matter_func.createMatterRecipe(gold_pure) 
local gold_powder =
{
	item_name = "gold-powder",
	minimum_conversion_quantity = 10, 
	matter_value = 6.5*powder_bonus,
	energy_required = 1
}
matter_func.createMatterRecipe(gold_powder) 

-- -- TINS
local tin_ore = -- new ore
{
	item_name = "tin-ore",
	minimum_conversion_quantity = 10, 
	matter_value = 4,
	energy_required = 1
}
matter_func.createMatterRecipe(tin_ore)
local tin_gravel =
{
	item_name = "tin-gravel",
	minimum_conversion_quantity = 10, 
	matter_value = 4*gravel_bonus,
	energy_required = 1,
	only_conversion = true
}
matter_func.createMatterRecipe(tin_gravel) 
local tin_pure =
{
	item_name = "tin-pure",
	minimum_conversion_quantity = 10, 
	matter_value = 4*pure_bonus,
	energy_required = 1,
	only_conversion = true
}
matter_func.createMatterRecipe(tin_pure) 
local tin_powder =
{
	item_name = "tin-powder",
	minimum_conversion_quantity = 10, 
	matter_value = 4*powder_bonus,
	energy_required = 1
}
matter_func.createMatterRecipe(tin_powder) 

-- -- Items

-- glass
matter.removeMatterRecipe("glass")
local glass_ingot =
{
	item_name = "glass-ingot",
	minimum_conversion_quantity = 10, 
	matter_value = 10,
	unlocked_by_technology = "matter-assembler-plus", 
	energy_required = 2,
	only_deconversion = true,
	need_stabilizer = true,
	allow_productivity = true
}
matter_func.createMatterRecipe(glass_ingot)

-- new tin ingot for dir
local tin_ingot =
{
	item_name = "tin-ingot",
	minimum_conversion_quantity = 10, 
	matter_value = 10,
	unlocked_by_technology = "matter-assembler-plus", 
	energy_required = 2,
	only_deconversion = true,
	need_stabilizer = true,
	allow_productivity = true
}
matter_func.createMatterRecipe(tin_ingot)

-- copper_plate
matter.removeMatterRecipe("copper-plate")
local copper_ingot =
{
	item_name = "copper-ingot",
	minimum_conversion_quantity = 10, 
	matter_value = 10,
	unlocked_by_technology = "matter-assembler-plus", 
	energy_required = 2,
	only_deconversion = true,
	need_stabilizer = true,
	allow_productivity = true
}
matter_func.createMatterRecipe(copper_ingot)

-- iron_plate
matter.removeMatterRecipe("iron-plate")
local iron_ingot =
{
	item_name = "iron-ingot",
	minimum_conversion_quantity = 10, 
	matter_value = 10,
	unlocked_by_technology = "matter-assembler-plus", 
	energy_required = 2,
	only_deconversion = true,
	need_stabilizer = true,
	allow_productivity = true
}
matter_func.createMatterRecipe(iron_ingot)

-- new bronze ingot for dir
local bronze_ingot =
{
	item_name = "bronze-ingot",
	minimum_conversion_quantity = 10, 
	matter_value = 15,
	unlocked_by_technology = "matter-assembler-plus", 
	energy_required = 2,
	only_deconversion = true,
	need_stabilizer = true,
	allow_productivity = true
}
matter_func.createMatterRecipe(bronze_ingot)

-- steel
matter.removeMatterRecipe("steel-plate")
matter.removeMatterRecipe("k-steel")
local steel_ingot =
{
	item_name = "steel-ingot",
	minimum_conversion_quantity = 10, 
	matter_value = 19,
	unlocked_by_technology = "matter-assembler-plus", 
	energy_required = 2,
	only_deconversion = true,
	need_stabilizer = true,
	allow_productivity = true
}
matter.createMatterRecipe(steel_ingot)

-- plastic-bar
matter.removeMatterRecipe("plastic-bar")
local plastic_bar =
{
	item_name = "plastic-bar",
	minimum_conversion_quantity = 10, 
	matter_value = 14,
	unlocked_by_technology = "matter-assembler-plus", 
	energy_required = 2,
	only_deconversion = true,
	need_stabilizer = true,
	allow_productivity = true
}
matter_func.createMatterRecipe(plastic_bar)

-- gold-plate
matter.removeMatterRecipe("gold-plate")
local gold_ingot =
{
	item_name = "gold-ingot",
	minimum_conversion_quantity = 10, 
	matter_value = 20,
	unlocked_by_technology = "matter-assembler-plus", 
	energy_required = 2,
	only_deconversion = true,
	need_stabilizer = true,
	allow_productivity = true
}
matter_func.createMatterRecipe(gold_ingot)

-- titanium_plate
matter.removeMatterRecipe("k-titanium-plate")
local titanium_ingot =
{
	item_name = "titanium-ingot",
	minimum_conversion_quantity = 10, 
	matter_value = 40,
	unlocked_by_technology = "matter-assembler-plus", 
	energy_required = 2,
	only_deconversion = true,
	need_stabilizer = true,
	allow_productivity = true
}
matter_func.createMatterRecipe(titanium_ingot)

-- tantalum_plate
matter.removeMatterRecipe("k-tantalum-plate")
local tantalum_ingot =
{
	item_name = "tantalum-ingot",
	minimum_conversion_quantity = 10, 
	matter_value = 40,
	unlocked_by_technology = "matter-assembler-plus", 
	energy_required = 2,
	only_deconversion = true,
	need_stabilizer = true,
	allow_productivity = true
}
matter_func.createMatterRecipe(tantalum_ingot)

-- lead-ingot
local lead_ingot =
{
	item_name = "lead-ingot",
	minimum_conversion_quantity = 10, 
	matter_value = 25,
	unlocked_by_technology = "matter-assembler-plus", 
	energy_required = 2,
	only_deconversion = true,
	need_stabilizer = true,
	allow_productivity = true
}
matter_func.createMatterRecipe(lead_ingot)

-- duranium-ingot
local duranium_ingot =
{
	item_name = "duranium-ingot",
	minimum_conversion_quantity = 10, 
	matter_value = 35,
	unlocked_by_technology = "matter-assembler-plus", 
	energy_required = 3,
	only_deconversion = true,
	need_stabilizer = true,
	allow_productivity = true
}
matter_func.createMatterRecipe(duranium_ingot)

-- -- -- Flare stack burn recipe adaptation

local flare_stack = require("lib.flare-stack-util")
flare_stack_func.addBurnFluidProduct("plastic-fluid", {"carbon-powder", 10})
flare_stack.generateBurnFluidsRecipe("plastic-fluid")

-- Imersite battery adaptation

data:extend
({
	-- item
	{
		type = "item",
		name = "charged-imersite-battery",
		subgroup = "intermediate-product",
		burnt_result = "imersite-battery",
		fuel_acceleration_multiplier = 1.3,
		fuel_category = "battery",
		fuel_emissions_multiplier = 0.05,
		fuel_glow_color = 
		{
			0.75,
			0.75,
			1,
			1
		},
		fuel_value = "80MJ",
		icon = "__Krastorio__/graphics/compatibility/IndustrialRevolution/charged-imersite-battery.png",
		icon_size = 64,		
		order = "h[e]",
		stack_size = 50		
    },
	-- recipe
	{	    
		type = "recipe",
		name = "charged-imersite-battery",
		allow_as_intermediate = false,
		allow_decomposition = false,
		allow_intermediates = false,
		always_show_made_in = true,
		always_show_products = true,
		show_amount_in_title = false,
		category = "charging",
		enabled = false,
		energy_required = 40,
		hide_from_stats = true,
		ingredients = 
		{
			{"imersite-battery", 1}
		},
		order = "h[z-imersite-battery]",
		overload_multiplier = 50,
		results = 
		{
			{type = "item", name = "charged-imersite-battery", amount = 1,	probability = 0.99}
		}
	}
})
aswil.technologies.addUnlockRecipe("imersite-energy", "charged-imersite-battery")

-- -- -- Removing useless recipes

aswil.modules.removeProductivityLimitation("matter-to-iron-beam")
data.raw.recipe["matter-to-iron-beam"] = nil

aswil.modules.removeProductivityLimitation("fill-k-matter-barrel")
aswil.technologies.removeUnlockRecipeFromAllTechnologies("fill-k-matter-barrel")

aswil.modules.removeProductivityLimitation("empty-k-matter-barrel")
aswil.technologies.removeUnlockRecipeFromAllTechnologies("empty-k-matter-barrel")

