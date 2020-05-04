-- -- -- UPDATED IN VERSION 1.3.14
-- -- VANILLA EQUIPMENTS MODIFICATION

-- -- Utils(Function)

-- -- update all graphics with a given dictionary,
-- -- formatted with: { categories{ items-->[path,icon_size,sprite.width,sprite.height]... }... }
-- @_objects_to_modify, list of graphics to modify with the format over described
-- @icons_path, path where is the new icons of this objects
-- @sprites_path, path where is the new sprites of this objects
function updateVanillaEquipmentGraphics(_objects_to_modify, icons_path, sprites_path)
	for category_name, items in pairs(_objects_to_modify) do
		for item_name, item in pairs(items) do		
			data.raw.item[item_name].icon                      = icons_path .. item[1]
			data.raw.item[item_name].icon_size                 = item[2]
			data.raw[category_name][item_name].sprite.filename = sprites_path .. item[1]
			data.raw[category_name][item_name].sprite.width    = item[3]
			data.raw[category_name][item_name].sprite.height   = item[4]
		end
	end
end

------------------------------------------------

-- -- Update vanilla equipments category

-- Armors:
table.insert(data.raw["equipment-grid"]["small-equipment-grid"] .equipment_categories, "universal-equipment")
table.insert(data.raw["equipment-grid"]["medium-equipment-grid"].equipment_categories, "universal-equipment")
table.insert(data.raw["equipment-grid"]["large-equipment-grid"] .equipment_categories, "universal-equipment")

-- Items:
-- Batteries
table.insert(data.raw["battery-equipment"]["battery-equipment"].categories, "universal-equipment")
table.insert(data.raw["battery-equipment"]["battery-mk2-equipment"].categories, "universal-equipment")
-- Discharge defense
table.insert(data.raw["active-defense-equipment"]["discharge-defense-equipment"].categories, "universal-equipment")
-- Fusion reactor
table.insert(data.raw["generator-equipment"]["fusion-reactor-equipment"].categories, "universal-equipment")
-- Personal laser
table.insert(data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].categories, "universal-equipment")
-- Roboports
table.insert(data.raw["roboport-equipment"]["personal-roboport-equipment"].categories, "universal-equipment")
table.insert(data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].categories, "universal-equipment")
-- Shields
table.insert(data.raw["energy-shield-equipment"]["energy-shield-equipment"].categories, "universal-equipment")
table.insert(data.raw["energy-shield-equipment"]["energy-shield-mk2-equipment"].categories, "universal-equipment")
-- Solar pannel
table.insert(data.raw["solar-panel-equipment"]["solar-panel-equipment"].categories, "universal-equipment")
-- Belt Immunity
table.insert(data.raw["belt-immunity-equipment"]["belt-immunity-equipment"].categories, "universal-equipment")

------------------------------------------------

-- -- Vanilla items visual(icon, sprites) modifcation
local objects_to_modify =
{
	["battery-equipment"] =
	{
		["battery-equipment"]     = {"battery-mk1-equipment.png", 32, 32, 64},
		["battery-mk2-equipment"] = {"battery-mk2-equipment.png", 32, 32, 64}
	},
	["active-defense-equipment"] = 
	{
		["personal-laser-defense-equipment"] = {"personal-laser-defense-mk1-equipment.png", 32, 64, 64}
	}
}

-- iterating...
updateVanillaEquipmentGraphics(objects_to_modify, kr_universal_equipment_icons_path, kr_universal_equipment_sprites_path)

objects_to_modify =
{
	["night-vision-equipment"] =
	{
		["night-vision-equipment"] = {"night-vision-equipment.png", 32, 64, 64}
	},
	["movement-bonus-equipment"] = 
	{
		["exoskeleton-equipment"] = {"exoskeleton-equipment.png", 32, 64, 128}
	}
}

-- iterating...
updateVanillaEquipmentGraphics(objects_to_modify, kr_character_equipment_icons_path, kr_character_equipment_sprites_path)

------------------------------------------------

-- -- Statistic Modification
-- Batteries
data.raw["battery-equipment"]["battery-equipment"].energy_source =
{
	type = "electric",
	buffer_capacity = "10MJ",
	input_flow_limit = "0.25MW",
	output_flow_limit = "0.5MW",
	usage_priority = "tertiary"
}

data.raw["battery-equipment"]["battery-mk2-equipment"].energy_source =
{
	type = "electric",
	buffer_capacity = "25MJ",
	input_flow_limit = "0.5MW",
	output_flow_limit = "1MW",
	usage_priority = "tertiary"
}   
aswil.recipes.overrideIngredients
(
	"battery-equipment",
	{
		{"battery", 2},
		{"plastic-bar", 2},
		{"advanced-circuit", 1}
	}
)
aswil.recipes.overrideIngredients
(
	"battery-mk2-equipment",
	{
		{"battery-equipment", 2},
		{"low-density-structure", 2},
		{"processing-unit", 1}
	}
)

-- Discharge defense equipment
aswil.recipes.addIngredient("discharge-defense-equipment", {"k-steel", 5})
aswil.recipes.replaceIngredient("discharge-defense-equipment", "processing-unit", {"processing-unit", 5})
aswil.recipes.replaceIngredient("discharge-defense-equipment", "laser-turret", {"laser-turret", 1})
aswil.recipes.removeIngredient("discharge-defense-equipment", "steel-plate")

-- Belt immunity equipment
aswil.recipes.replaceIngredient("belt-immunity-equipment", "advanced-circuit", {"advanced-circuit", 2})
aswil.recipes.addIngredient("belt-immunity-equipment", {"iron-plate", 1})
aswil.recipes.removeIngredient("belt-immunity-equipment", "steel-plate")

-- Solar Panels
data.raw["solar-panel-equipment"]["solar-panel-equipment"].power = solar_panel_equipment_power
data.raw.item["solar-panel-equipment"].order = "a[energy-source]-a1[solar-panel]"
data.raw.item["solar-panel-equipment"].subgroup = "equipment"
aswil.recipes.overrideIngredients
(
	"solar-panel-equipment",
	{
		{name = "k-silicon-wafer", amount = 5},
		{name = "k-gold-foil", amount = 5},
		{name = "glass", amount = 5},
		{name = "advanced-circuit", amount = 5}
	}
)

-- Night visors

data.raw["night-vision-equipment"]["night-vision-equipment"].tint = {r = 0.1, g = 0.255, b = 1, a = 0.255}
data.raw["night-vision-equipment"]["night-vision-equipment"].desaturation_params =
    {
      smoothstep_min = 0.1,
      smoothstep_max = 0.7,
      minimum = 0.35,
      maximum = 0.9
    }
data.raw["night-vision-equipment"]["night-vision-equipment"].light_params =
    {
      smoothstep_min = 0.1,
      smoothstep_max = 0.7,
      minimum = 0.35,
      maximum = 0.8
    }
data.raw["night-vision-equipment"]["night-vision-equipment"].darkness_to_turn_on = 0.5


aswil.recipes.overrideIngredients
(
	"night-vision-equipment", 
	{
		{"advanced-circuit", 2},
		{"iron-plate", 1}, 
		{"plastic-bar", 1}, 
		{"glass", 1}
	}
)

-- Portable fusion reactor
data.raw["generator-equipment"]["fusion-reactor-equipment"].burner =
{
	fuel_category = "k-fusion-power",
	effectivity = 2,
	fuel_inventory_size = 3,
	burnt_inventory_size = 1
}
data.raw["generator-equipment"]["fusion-reactor-equipment"].power = portable_fusion_reactor_power
data.raw.item["fusion-reactor-equipment"].order = "a2[energy-source]-a5[portable-nuclear-core]"
data.raw.item["fusion-reactor-equipment"].subgroup = "equipment"

-- Personal roboports
data.raw["roboport-equipment"]["personal-roboport-equipment"].robot_limit = 20
data.raw["roboport-equipment"]["personal-roboport-equipment"].construction_radius = 15

-- Exoskeleton equipment
aswil.recipes.addIngredient("exoskeleton-equipment", {"k-steel", 5})
aswil.recipes.replaceIngredient("exoskeleton-equipment", "processing-unit", {"processing-unit", 5})
aswil.recipes.replaceIngredient("exoskeleton-equipment", "electric-engine-unit", {"electric-engine-unit", 10})
aswil.recipes.removeIngredient("exoskeleton-equipment", "steel-plate")

-- Personal roboport equipment
aswil.recipes.addIngredient("personal-roboport-equipment", {"k-steel", 10})
aswil.recipes.replaceIngredient("personal-roboport-equipment", "battery", {"battery", 45})
aswil.recipes.replaceIngredient("personal-roboport-equipment", "advanced-circuit", {"advanced-circuit", 5})
aswil.recipes.replaceIngredient("personal-roboport-equipment", "iron-gear-wheel", {"iron-gear-wheel", 20})
aswil.recipes.removeIngredient("personal-roboport-equipment", "steel-plate")

-- Personal roboport mk2 equipment
aswil.recipes.replaceIngredient("personal-roboport-mk2-equipment", "processing-unit", {"processing-unit", 20})

-- Personal lasers
data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].energy_source.buffer_capacity = "18MJ"
data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].energy_source.input_flow_limit = "2MW"
data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].attack_parameters =
{
	type = "beam",
	cooldown = 80,
	damage_modifier = 10,
	projectile_center = {0, 0},
	range = 30,
	ammo_type =
	{
		category = "laser-turret",
		energy_consumption = "3MJ",
		action =
		{
			type = "direct",
			action_delivery =
			{
				{
					type = "instant",
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-hit"
						}
					}
				},
				{
					type = "beam",
					beam = "laser-beam",
					max_length = 35,
					duration = 40,
					source_offset = {0, -1.31439}
				}
			}
		}
	}
}

data.raw.item["personal-laser-defense-equipment"].localised_name = {"item-name.personal-sniper-laser-defense-mk1-equipment"}
data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].localised_name = {"equipment-name.personal-sniper-laser-defense-mk1-equipment"}
data.raw.item["personal-laser-defense-equipment"].localised_description = {"item-description.personal-sniper-laser-defense-mk1-equipment"}
data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].localised_description = {"equipment-description.personal-sniper-laser-defense-mk1-equipment"}

-- Armor grids rebalance
data.raw["equipment-grid"]["small-equipment-grid"].width   = 4
data.raw["equipment-grid"]["small-equipment-grid"].height  = 4

data.raw["equipment-grid"]["medium-equipment-grid"].width  = 6
data.raw["equipment-grid"]["medium-equipment-grid"].height = 6

data.raw["equipment-grid"]["large-equipment-grid"].width   = 8
data.raw["equipment-grid"]["large-equipment-grid"].height  = 8

-- -- Tecnologies Modification

aswil.technologies.addPrerequisite("power-armor", "k-minerals-extraction")
aswil.technologies.addPrerequisite("power-armor-mk2", "menarite-processor")
	
------------------------------------------------

-- -- Tecnologies
-- Armors
data.raw.technology["power-armor"].unit.count = 300
data.raw.technology["power-armor"].unit.ingredients =
{
	{"automation-research-data", 1},
	{"logistic-research-data", 1},
	{"military-research-data", 1}
}	
data.raw.technology["power-armor-mk2"].unit.count = 500
data.raw.technology["power-armor-mk2"].unit.ingredients =
{
	{"automation-research-data", 1},
	{"logistic-research-data", 1},
	{"military-research-data", 1},
	{"scientific-research-data", 1}
}

-- Exoskeleton	
data.raw.technology["exoskeleton-equipment"].unit.ingredients =
{{"automation-research-data", 1},{"logistic-research-data", 1}}
data.raw.technology["exoskeleton-equipment"].unit.count = 100

-- Fusion reactor
data.raw.technology["fusion-reactor-equipment"].unit.count = 750
aswil.technologies.addPrerequisite("fusion-reactor-equipment", "k-fusion")
data.raw.technology["fusion-reactor-equipment"].unit.ingredients =
{
	{"automation-research-data", 1},
	{"logistic-research-data", 1},
	{"chemical-research-data", 1},
	{"military-research-data", 1}
}

-- Roboports	
data.raw.technology["personal-roboport-mk2-equipment"].unit.count = 350
data.raw.technology["personal-roboport-mk2-equipment"].unit.ingredients =
{
	{"automation-research-data", 1},
	{"logistic-research-data", 1}
}

-- Batteries	
data.raw.technology["battery-mk2-equipment"].unit.count = 350
data.raw.technology["battery-mk2-equipment"].unit.ingredients =
{
	{"automation-research-data", 1},
	{"chemical-research-data", 1},
	{"military-research-data", 1}
}	

-- -- Shields

-- Energy shield mk2
data.raw.technology["energy-shield-mk2-equipment"].prerequisites = {"power-armor", "menarite-processor"}	
data.raw.technology["energy-shield-mk2-equipment"].prerequisites = {"energy-shield-equipment", "military-3", "low-density-structure", "power-armor", "menarite-processor"}
data.raw.technology["energy-shield-mk2-equipment"].unit.count = 350
data.raw.technology["energy-shield-mk2-equipment"].unit.ingredients =
{
	{"automation-research-data", 1},
	{"logistic-research-data", 1},
	{"military-research-data", 1},
	{"scientific-research-data", 1}
}	

-- Personal lasers
table.insert(data.raw.technology["energy-shield-mk2-equipment"].prerequisites, "advanced-electronics")
data.raw.technology["personal-laser-defense-equipment"].unit.count = 350
data.raw.technology["personal-laser-defense-equipment"].unit.ingredients =
{
	{"automation-research-data", 1},
	{"military-research-data", 1}
}

-- graphics update
objects_to_modify =
{
	["energy-shield-equipment"] = 
	{
		["energy-shield-equipment"]     = {"energy-shield-mk1-equipment.png", 32, 64, 64},
		["energy-shield-mk2-equipment"] = {"energy-shield-mk2-equipment.png", 32, 64, 64}
	},		
	["generator-equipment"] =
	{
		["fusion-reactor-equipment"] = {"fusion-reactor-equipment.png", 32, 128, 128}
	}
}
-- iterating...
updateVanillaEquipmentGraphics(objects_to_modify, kr_universal_equipment_icons_path, kr_universal_equipment_sprites_path)

------------------------------------------------
-- -- Recipes
-- Portable reactor
data.raw.recipe["fusion-reactor-equipment"].energy_required = 60
data.raw.recipe["fusion-reactor-equipment"].ingredients =
{
	{"k-processor", 20},
	{"menarite-processor", 10},
	{"portable-nuclear-core", 1},
	{"low-density-structure", 10},
	{"speed-module-2", 10},
	{"k-tantalum-plate", 10}
}	
-- Shields

-- MK1
aswil.recipes.overrideIngredients
(
	"energy-shield-equipment", 
	{
		{"advanced-circuit", 2},
		{"k-steel", 2}, 
		{"plastic-bar", 1}, 
		{"battery", 1}
	}
)

-- MK2
aswil.recipes.setRecipeEnergyCost("energy-shield-mk2-equipment", 20)
aswil.recipes.overrideIngredients
(	
	"energy-shield-mk2-equipment", 
	{
		{"energy-shield-equipment", 5},
		{"menarite-processor", 5},
		{"low-density-structure", 5}
	}	
)	
	
-- -- Vanilla armors recipes changing
-- Light armor
aswil.recipes.addOrReplaceIngredient("light-armor", "iron-plate", {"iron-plate", 20})
aswil.recipes.addOrReplaceIngredient("light-armor", "wood", {"wood", 10})

-- Heavy armor
aswil.recipes.removeIngredient("heavy-armor", "copper-plate")
aswil.recipes.addOrReplaceIngredient("heavy-armor", "light-armor", {"light-armor", 1})
aswil.recipes.addOrReplaceIngredient("heavy-armor", "steel-plate", {"steel-plate", 20})

-- Modular armor
aswil.recipes.addIngredient("modular-armor", {"integrated-circuit", 20})
aswil.recipes.removeIngredient("modular-armor", "advanced-circuit")
aswil.recipes.removeIngredient("modular-armor", "steel-plate")
aswil.recipes.addOrReplaceIngredient("modular-armor", "heavy-armor", {"heavy-armor", 1})
aswil.recipes.addOrReplaceIngredient("modular-armor", "k-steel", {"k-steel", 20})
aswil.recipes.addOrReplaceIngredient("modular-armor", "plastic-bar", {"plastic-bar", 10})

-- Power armor (MK1)
aswil.recipes.addIngredient("power-armor", {"k-processor", 20})
aswil.recipes.addIngredient("power-armor", {"k-titanium-plate", 20})
aswil.recipes.removeIngredient("power-armor", "processing-unit")
aswil.recipes.removeIngredient("power-armor", "steel-plate")
aswil.recipes.addOrReplaceIngredient("power-armor", "modular-armor", {"modular-armor", 1})
aswil.recipes.addOrReplaceIngredient("power-armor", "electric-engine-unit", {"electric-engine-unit", 20})

-- Power armor MK2
aswil.recipes.addIngredient("power-armor-mk2", {"menarite-processor", 10})
aswil.recipes.removeIngredient("power-armor-mk2", "processing-unit")
aswil.recipes.removeIngredient("power-armor-mk2", "electric-engine-unit")
aswil.recipes.addOrReplaceIngredient("power-armor-mk2", "power-armor", {"power-armor", 1})
aswil.recipes.addOrReplaceIngredient("power-armor-mk2", "effectivity-module-2", {"effectivity-module-2", 10})
aswil.recipes.addOrReplaceIngredient("power-armor-mk2", "speed-module-2", {"speed-module-2", 10})
aswil.recipes.addOrReplaceIngredient("power-armor-mk2", "low-density-structure", {"low-density-structure", 20})
	
-- other
---[[
data.raw["night-vision-equipment"]["night-vision-equipment"].shape =    
{
	width = 1,
	height = 1,
	type = "full"
}

-- subgroup 
data.raw.item["battery-equipment"].order = "b1[battery]-b1[battery-equipment]"
data.raw.item["battery-equipment"].subgroup = "equipment"
data.raw.item["battery-mk2-equipment"].order = "b2[battery]-b3[battery-equipment]"
data.raw.item["battery-mk2-equipment"].subgroup = "equipment"

-- subgroup character-equipment
data.raw.item["night-vision-equipment"].subgroup  = "character-equipment"
data.raw.item["night-vision-equipment"].order     = "f[night-vision]-a1[night-vision-equipment]"
data.raw.item["exoskeleton-equipment"].subgroup   = "character-equipment"
data.raw.item["exoskeleton-equipment"].order      = "e[exoskeleton]-a1[exoskeleton-equipment]"

-- Change portable battery requirements that don't have necessary requirement of solar energy to make energy
aswil.technologies.addPrerequisite("battery-equipment", "modular-armor")
aswil.technologies.removePrerequisite("battery-equipment", "solar-panel-equipment")
-- And other similar
aswil.technologies.addPrerequisite("night-vision-equipment", "modular-armor")
aswil.technologies.removePrerequisite("night-vision-equipment", "solar-panel-equipment")

aswil.technologies.addPrerequisite("energy-shield-equipment", "modular-armor")
aswil.technologies.removePrerequisite("energy-shield-equipment", "solar-panel-equipment")

aswil.technologies.addPrerequisite("exoskeleton-equipment", "modular-armor")
aswil.technologies.removePrerequisite("exoskeleton-equipment", "solar-panel-equipment")
--]]

--[[
data.raw.item["solar-panel-equipment"].order = "a[energy-source]-a1[solar-panel]"
data.raw.item["fusion-reactor-equipment"].order = "a[energy-source]-a5[fusion-reactor-equipment]"

data.raw.item["exoskeleton-equipment"].order = "e[exoskeleton]-a1[exoskeleton-equipment]"

data.raw.item["battery-equipment"].order = "b[battery]-b1[battery-equipment]"
data.raw.item["battery-mk2-equipment"].order = "b[battery]-b2[battery-mk2-equipment]"

data.raw.item["battery-equipment"].order = "b1[battery-equipment]"
data.raw.item["battery-mk2-equipment"].order = "b2[battery-equipment-mk2]"
--]]