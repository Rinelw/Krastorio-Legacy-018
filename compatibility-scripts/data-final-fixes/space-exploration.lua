if mods["space-exploration"] then

	local data_util = require("__space-exploration__.data_util")

-----------------------------------------------------------------------------------------------------------------------------
	-- -- -- Entities
	
	-- -- Adding new loader if loader is enabled
	if settings.startup["loaders"] and settings.startup["loaders"].value then
		data:extend(
		{
			kr_loader_item
			{
				name = 'loader-kr-se',
				order = "z-l[loader]-z[loader]",
				subgroup = "space-logistics"
			},
			kr_loader
			{
				name = 'loader-kr-se', 
				speed =	data.raw["transport-belt"]["express-transport-belt"].speed,
				order = "z-l[loader]-z[loader]", 
				belt_animation_set = data.raw["transport-belt"]["express-transport-belt"].belt_animation_set,
				icon = krstr_entities_icon_path .. "loader-kr-se.png"
			},	
			kr_loader_recipe
			{
				name = "loader-kr-se",
				ingredients = 
				{
					{"loader-kr-03", 1},
					{"copper-plate", 10}
				},
				subgroup = "space-logistics"
			}					
		})		
		data.raw["loader-1x1"]["loader-kr-se"].belt_animation_set = data.raw["transport-belt"][data_util.mod_prefix .. "space-transport-belt"].belt_animation_set
		data.raw.recipe["loader-kr-se"].subgroup = "space-logistics"
		aswil.technologies.addEffect(data_util.mod_prefix .. "space-platform-scaffold", {type = "unlock-recipe", recipe = "loader-kr-se"})			
	end
	
	-- -- Adding space collisions
	local krastorio_entities_to_add =
	{	
		["assembling-machine"] =
		{
			"k-advanced-chemical-plant",
			"k-multifunctional-furnace",
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
			"k-air-purifier"
		},		
		["transport-belt"] =
		{
			"k-transport-belt",
			"k-splitter",
			"k-underground-belt"
		}
	}
	
	if settings.startup["loaders"].value then	
		krastorio_entities_to_add.loader =
		{
			"loader-kr",
			"loader-kr-02",
			"loader-kr-03",
			"loader-kr-04"
		}	
	end
	
	for category_name, entities in pairs(krastorio_entities_to_add) do
		for _, entity_name in pairs(entities) do
			aswil.entities.addCollisionMaskOnEntity(category_name, entity_name, space_collision_layer)
		end
	end
	
	-- -- Enable some Krastorio entities in space
	local krastorio_entities_to_remove =
	{
		-- medium storehouse	
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
			"stabilizer-charging-station"
		},	
		["furnace"] =
		{
			"matter-factory"
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
	
	for category_name, entities in pairs(krastorio_entities_to_remove) do
		for _, entity_name in pairs(entities) do
			aswil.entities.removeCollisionMaskOnEntity(category_name, entity_name, space_collision_layer)
		end
	end
		
	--[[ Maybe don't need to remove recipes, because will remain locked
    data.raw.recipe["s-deep-mining"]           = nil
    data.raw.recipe["t-deep-mining"]           = nil
    data.raw.recipe["raw-chunk-sorting"]       = nil
    data.raw.recipe["k-stone-processing"]      = nil
    data.raw.recipe["raw-ores-processing"]     = nil
    data.raw.recipe["raw-minerals-processing"] = nil
	--]]
		
	-- -- Furnaces
	-- Steel furnace
	data_util.conditional_modify(
	{
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
	data_util.conditional_modify(
	{
		type = "recipe",
		name = "electric-furnace",
		normal = {
			ingredients = {
				{"advanced-circuit" , 5},
				{"se-heat-shielding" , 15}
			},
		},
		expensive = {
			ingredients = {
				{"advanced-circuit" , 5},
				{"se-heat-shielding" , 15}
			},
		}
	})

	-- -- Solar panels
	aswil.recipes.replaceIngredient("solar-panel", "glass", {name = "glass", amount = 10})
	
	-- -- -- Technologies of Entities
	
-----------------------------------------------------------------------------------------------------------------------------
	
-----------------------------------------------------------------------------------------------------------------------------
	-- -- -- Equipments
	-- -- Armors
	data.raw.armor["se-thruster-suit"].equipment_grid   = "medium-equipment-grid"
	data.raw.armor["se-thruster-suit-2"].equipment_grid = "large-equipment-grid"
	data.raw.armor["se-thruster-suit-3"].equipment_grid = "mk3-armor-grid"
	data.raw.armor["se-thruster-suit-4"].equipment_grid = "mk4-armor-grid"

	-- -- Shields
	-- Energy shield mk1
	data.raw.technology["energy-shield-equipment"].prerequisites = {"modular-armor", "military-science-pack"}
	data.raw.technology["energy-shield-equipment"].unit.count = 150
	data.raw.technology["energy-shield-equipment"].unit.ingredients =
	{
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"military-science-pack", 1}
	}
	
	aswil.recipes.overrideIngredients("energy-shield-equipment", 
	{
		{"battery" , 2},
		{"advanced-circuit" , 5},
		{"k-steel" , 10}
	})
	
	-- Energy shield mk2
	aswil.technologies.removePrerequisite("energy-shield-mk2-equipment", "se-material-science-pack")
	aswil.recipes.removeIngredientWithPrerequisite("energy-shield-mk2-equipment", "se-subatomic-data")
	aswil.recipes.removeIngredientWithPrerequisite("energy-shield-mk2-equipment", "se-plasma-thermodynamics-data")
	
	-- Energy shield mk3	
	aswil.recipes.removeIngredientWithPrerequisite("energy-shield-mk3-equipment", "se-forcefield-data")
		
	-- Energy shield mk4
	aswil.recipes.removeIngredientWithPrerequisite("energy-shield-mk4-equipment", "se-superconductive-cable")
	
	-- Re-graphics update
	objects_to_modify =
	{
		["energy-shield-equipment"] = 
		{
			["energy-shield-equipment"]     = {"energy-shield-mk1-equipment.png", 32, 64, 64},
			["energy-shield-mk2-equipment"] = {"energy-shield-mk2-equipment.png", 32, 64, 64},
			["energy-shield-mk3-equipment"] = {"energy-shield-mk3-equipment.png", 32, 64, 64},
			["energy-shield-mk4-equipment"] = {"energy-shield-mk4-equipment.png", 32, 64, 64}
		}
	}
	-- Re-update technologies graphics
	--[[
	data.raw.technology["energy-shield-mk2-equipment"].icon      = kr_technologies_icons_path .. "energy-shield-mk2-equipment.png"
	data.raw.technology["energy-shield-mk2-equipment"].icon_size = 128
	data.raw.technology["energy-shield-mk3-equipment"].icon      = kr_technologies_icons_path .. "energy-shield-mk3-equipment.png"
	data.raw.technology["energy-shield-mk3-equipment"].icon_size = 128
	data.raw.technology["energy-shield-mk4-equipment"].icon      = kr_technologies_icons_path .. "energy-shield-mk4-equipment.png"
	data.raw.technology["energy-shield-mk4-equipment"].icon_size = 128
	--]]
	
	-- iterating...
	updateVanillaEquipmentGraphics(objects_to_modify, kr_universal_equipment_icons_path, kr_universal_equipment_sprites_path)
	
	-- Energy shield mk5
	data.raw["energy-shield-equipment"]["energy-shield-mk5-equipment"].categories = {"armor"}
	data.raw.item["energy-shield-mk5-equipment"].subgroup   = "character-equipment"
	data.raw.item["energy-shield-mk5-equipment"].order      = "s[energy-shield]-s5[energy-shield]"
	
	-- Energy shield mk6
	data.raw["energy-shield-equipment"]["energy-shield-mk6-equipment"].categories = {"armor"}
	data.raw.item["energy-shield-mk6-equipment"].subgroup   = "character-equipment"
	data.raw.item["energy-shield-mk6-equipment"].order      = "s[energy-shield]-s6[energy-shield]"
	
	-- Adaptive armors (only order changing)
	data.raw.item["se-adaptive-armour-equipment-1"].subgroup  = "character-equipment"
	data.raw.item["se-adaptive-armour-equipment-1"].order     = "s[energy-shield]-a1[adaptive-armour]"
	data.raw.item["se-adaptive-armour-equipment-2"].subgroup  = "character-equipment"
	data.raw.item["se-adaptive-armour-equipment-2"].order     = "s[energy-shield]-a2[adaptive-armour]"
	data.raw.item["se-adaptive-armour-equipment-3"].subgroup  = "character-equipment"
	data.raw.item["se-adaptive-armour-equipment-3"].order     = "s[energy-shield]-a3[adaptive-armour]"
	data.raw.item["se-adaptive-armour-equipment-4"].subgroup  = "character-equipment"
	data.raw.item["se-adaptive-armour-equipment-4"].order     = "s[energy-shield]-a4[adaptive-armour]"
	data.raw.item["se-adaptive-armour-equipment-5"].subgroup  = "character-equipment"
	data.raw.item["se-adaptive-armour-equipment-5"].order     = "s[energy-shield]-a5[adaptive-armour]"
		
	-- -- Portable fusion core
	-- Portable RTG
	data.raw.item["se-rtg-equipment"].subgroup  = "equipment"
	data.raw.item["se-rtg-equipment"].order     = "a2[energy-source]-a41[portable-nuclear-core]"
	data.raw["generator-equipment"]["se-rtg-equipment"].power = "800kW"
	
	-- Portable RTG 2
	data.raw.item["se-rtg-equipment-2"].subgroup  = "equipment"
	data.raw.item["se-rtg-equipment-2"].order     = "a2[energy-source]-a42[portable-nuclear-core]"	
	data.raw["generator-equipment"]["se-rtg-equipment-2"].power = "1200kW"
	
	-- Portable fusion reactor
	aswil.technologies.removePrerequisite("fusion-reactor-equipment", "se-deep-space-science-pack")
	
	aswil.recipes.replaceIngredient("portable-antimaterial-core", "fusion-reactor-equipment", {"portable-nuclear-core" ,1})
	aswil.recipes.addIngredient("portable-antimaterial-core", {"speed-module-3" , 10})
	aswil.recipes.addIngredient("portable-antimaterial-core", {"k-tantalum-plate" , 10})
	
-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------	
	-- -- -- Modules
	-- -- Return to Krastorio
	
	require("prototypes.vanilla-changes.vanilla-changes-mandatory.vanilla-changes-modules")
	
	-- Speed modules
	aswil.technologies.removeResearchUnitIngredient("speed-module-2", "production-science-pack", 1)
	
	aswil.technologies.removeResearchUnitIngredient("speed-module-3", "space-science-pack")
	aswil.technologies.removeResearchUnitIngredient("speed-module-3", "se-material-science-pack")
	
	-- Productivity modules
	aswil.technologies.removeResearchUnitIngredient("productivity-module-2", "production-science-pack", 1)
	
	aswil.technologies.removeResearchUnitIngredient("productivity-module-3", "space-science-pack")
	aswil.technologies.removeResearchUnitIngredient("productivity-module-3", "se-material-science-pack")
	
	-- Efficiency modules
	aswil.technologies.removeResearchUnitIngredient("effectivity-module-2", "production-science-pack", 1)
	
	aswil.technologies.removeResearchUnitIngredient("effectivity-module-3", "space-science-pack")
	aswil.technologies.removeResearchUnitIngredient("effectivity-module-3", "se-biological-science-pack")
	
-----------------------------------------------------------------------------------------------------------------------------	

-----------------------------------------------------------------------------------------------------------------------------
-- -- -- Recipes

	-- space-science-pack
	local space_science_pack =
	{
		item_name = "space-science-pack",
		minimum_conversion_quantity = 5, 
		matter_value = 500,
		unlocked_by_technology = "matter-is-science", 
		energy_required = 5,
		only_deconversion = true,
		need_stabilizer = true
	}
	matter_func.createMatterRecipe(space_science_pack)

-----------------------------------------------------------------------------------------------------------------------------
	-- -- -- Technologies

	-- -- Adjust prerequisites
	
	aswil.technologies.removeResearchUnitIngredient("battery-mk3-equipment", "space-science-pack")
	
	aswil.technologies.addPrerequisite("rocket-silo", "menarite-processor")
	
	-- -- Return to Krastorio
	-- -- Character logistic slots

	
	-- -- Research speed
	data.raw.technology["research-speed-6"] =
	{
		type = "technology",
		name = "research-speed-6",
		icon_size = 128,
		icon = "__base__/graphics/technology/research-speed.png",
		effects =
		{
			{
				type = "laboratory-speed",
				modifier = 0.5
			}
		},
		prerequisites = {"research-speed-5", "space-science-pack"},
		unit =
		{
			count = 1000,
			ingredients = lr_s,
			time = 30
		},
		upgrade = true,
		order = "c-m-d"
	}
		
-----------------------------------------------------------------------------------------------------------------------------
end