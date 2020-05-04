-- Chaing modules limitation/adaption modules limitation to new items
local recipes_that_allow_prod_modules =
{
	"k-steel",
	"k-steel-2",
	"k-steel-3",
	"steel-gear-wheel",
	"k-iron-beam-2",
	"gold-plate",
	"steel-billet",
	"k-gold-foil",
	"sand-to-quartz",
	"k-silicon",
	"k-silicon-wafer",
	"menarite-wafer",
	"k-circuit-board",
	"integrated-circuit",
	"k-ram",
	"k-processor",
	"menarite-processor",
	"glass-from-sand",
	"enriched-iron",
	"enriched-copper",
	"k-coke",
	"k-ammonia",
	"k-nitric-acid",
	"menarite",
	"imersite",
	"iron-plate-2",
	"copper-plate-2",
	"k-titanium-plate",
	"k-titanium-plate-2",
	"k-tantalum-plate",
	"k-tantalum-plate-2",
	"k-air-separation",
	"salt-water-electrolysis",
	"pure-water-electrolysis",
	"k-deuterium-oxide",
	"raw-menarite-processing-1",
	"raw-menarite-processing-2",
	"raw-imersite-processing-1",
	"raw-imersite-processing-2",
	"k-dt-fuel",
	"k-module-case",
	"empty-matter-stabilizer",
	"stabilizer-charging",
	"stabilizer-charging-station",		
	"matter-research-data",
	"imersite-battery",
	"imersite-glass",
	"sand-from-stone",
	"k-s-drill-head",	
	"k-t-drill-head",
	"k-m-drill-head",
	"k-i-drill-head",
	"s-deep-mining",
	"t-deep-mining",
	"m-deep-mining",
	"i-deep-mining",
	"k-empty-memory-card",
	"automation-research-data",
	"logistic-research-data",		
	"military-research-data",
	"chemical-research-data",
	"scientific-research-data",
	"matter-research-data",		
	"optimization-research-data"		
}

for _, recipe_name in pairs(recipes_that_allow_prod_modules) do
	aswil.modules.addProductivityLimitation(recipe_name)
end

-- -- Adding Selected options 

-----------------------------------------------------------------------------------------------------------------
-- -- Long hands
if settings.startup["long-hands"] and settings.startup["long-hands"].value then
   data.raw["character"]["character"].build_distance = 60
   data.raw["character"]["character"].reach_distance = 60
   data.raw["character"]["character"].reach_resource_distance = 8
end
-----------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------
-- -- Bonus inventory
if settings.startup["bonus-inventory"] and settings.startup["bonus-inventory"].value then
   data.raw["character"]["character"].inventory_size = 120
end
-----------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------
-- -- More waste option
if settings.startup["k_more_waste"] and settings.startup["k_more_waste"].value then 
	table.insert(data.raw.recipe["enriched-iron"].results, 1, {name = "stone", amount = 1})
	table.insert(data.raw.recipe["enriched-copper"].results, 1, {name = "stone", amount = 1})
end
-----------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------
-- -- Scale info icons option
if settings.startup["k_scale_info_icons"] and settings.startup["k_scale_info_icons"].value then
	data.raw["container"]["k-medium-g"].scale_info_icons = true
	data.raw["logistic-container"]["k-medium-s"].scale_info_icons = true
	data.raw["logistic-container"]["k-medium-b"].scale_info_icons = true
	data.raw["logistic-container"]["k-medium-r"].scale_info_icons = true
	data.raw["logistic-container"]["k-medium-pp"].scale_info_icons = true
	data.raw["container"]["k-big-g"].scale_info_icons = true
	data.raw["logistic-container"]["k-big-s"].scale_info_icons = true
	data.raw["logistic-container"]["k-big-b"].scale_info_icons = true
	data.raw["logistic-container"]["k-big-r"].scale_info_icons = true
	data.raw["logistic-container"]["k-big-pp"].scale_info_icons = true
end
-----------------------------------------------------------------------------------------------------------------

-- -- Vanilla changing
----------------------------------------------------------
require("prototypes.vanilla-changes.vanilla-changes-mandatory")
require("prototypes.vanilla-changes.vanilla-changes-optional")
-- Redo equipments
require("prototypes.equipment.new-equipment-load-script")
----------------------------------------------------------

-- -- Adding matter recipes
----------------------------------------------------------
local matter = require("lib.matter-util")
matter.createStandardKrastorioMatterRecipes()
-- -- Adding burn evaporate recipes (flare stack and liquid evaporator)
----------------------------------------------------------
local flare_stack = require("lib.flare-stack-util")
flare_stack.generateBurnFluidsRecipes()
local liquid_evaporator = require("lib.liquid-evaporator-util")
liquid_evaporator.generateEvaporateFluidsRecipes()
----------------------------------------------------------

-- -- Apply compatibility scripts (data-updates-phase)
----------------------------------------------------------
local scripts_path = "compatibility-scripts.data-updates."
require(scripts_path .. "assembler_pipe_passthrough")
require(scripts_path .. "bobenemies")
require(scripts_path .. "bullet-trails")
require(scripts_path .. "Load-Furn")
-- Deadlocks
require(scripts_path .. "IndustrialRevolution")
-- Pyanodons
require(scripts_path .. "Pyanodon")
----------------------------------------------------------





