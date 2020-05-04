-- -- -- Recycle Recipes

-- Recycle set
local krastorio_recyclable_objects = 
{
	["container"] =
	{
		-- medium storehouse
		"k-medium-g",
		-- big warehouse	
		"k-big-g"
	},
	["logistic-container"] =
	{
		-- logistic medium storehouses
		"k-medium-b",
		"k-medium-pp",
		"k-medium-s",
		"k-medium-r",
		-- logistic big warehouses
		"k-big-b",
		"k-big-pp",
		"k-big-s",
		"k-big-r"
	},
	["assembling-machine"] =
	{
		"advanced-assembler",
		-- Laboratory
		"k-quantum-computer",
		"k-research-server-mk1",
		"k-research-server-mk2",
		-- Matter
		"matter-assembler",
		"matter-converter",	
		"stabilizer-charging-station",
		"k-advanced-chemical-plant",
--		"k-multifunctional-furnace", (NOT USED)
		"k-advanced-furnace",			
		"k-electrolysis-plant",
		"k-filtration-plant",				
		"kr-air-filter"
	},
	["furnace"] =
	{
		"k-flare-stack",
		"k-air-purifier",
		"k-deep-mining-drill",
		"k-liquid-evaporator",
		"k-air-purifier",
		"matter-factory"
	},		
	["transport-belt"] =
	{
		"k-transport-belt",
		"k-splitter",
		"k-underground-belt"
	},
	["lab"] =
	{
		"k-lab" -- Krastorio laboratory
	},
	["roboport"] =
	{
		"drone-charging-station",
		"drone-hub"
	},		
	["beacon"] =
	{
		"singularity-beacon"
	},
	["generator"] =
	{
		"antimatter-reactor-prototype",
		"antimatter-reactor"
	},
	["storage-tank"] =
	{
		"fs-50",
		"fs-200"
	},
	["solar-panel"] =
	{
		"imersite-solar-panel"
	}
}

require("__IndustrialRevolution__/code/functions/functions-disassembly")
for category_name, category_objects in pairs(krastorio_recyclable_objects) do
	for	i, name in pairs(category_objects) do 
		recipe_disassemble(name)
		-- aswil.technologies.addEffect(aswil.technologies.getTechnologyThatUnlockRecipe(name), {type="unlock-recipe", recipe="disassemble-" .. name})
	end
end
