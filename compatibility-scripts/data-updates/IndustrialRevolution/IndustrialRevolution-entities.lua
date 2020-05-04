-- -- -- Entities Fixes

-- -- -- KRASTORIO AND VANILLA

-- vanilla order

data.raw.recipe["pumpjack"].order = "d"

data.raw.recipe["storage-tank"].order = "b[fluid]-a[storage-tank]"

-- -- Inserters

-- Fast replecable group next upgrades

data.raw.inserter["long-handed-burner-inserter"].fast_replaceable_group = "long-handed-inserter"
data.raw.inserter["long-handed-burner-inserter"].next_upgrade           = "long-handed-inserter"

data.raw.inserter["long-handed-inserter"].fast_replaceable_group        = "long-handed-inserter"
data.raw.inserter["long-handed-inserter"].next_upgrade                  = "superior-long-inserter"

data.raw.inserter["superior-long-inserter"].fast_replaceable_group      = "long-handed-inserter"
data.raw.inserter["superior-filter-inserter"].fast_replaceable_group    = "filter-inserter"

-- -- Furnaces

-- order and crafting category

data.raw.item["k-advanced-furnace"].subgroup = "deadlock-machines-processing"
data.raw.recipe["k-advanced-furnace"].order = "machines-11[k-advanced-furnace]"

table.insert(data.raw["assembling-machine"]["steel-age-furnace"].crafting_categories, "coke-smelting")
table.insert(data.raw["assembling-machine"]["steel-age-furnace"].crafting_categories, "k-smelting")

data.raw["assembling-machine"]["k-advanced-furnace"].crafting_categories = data.raw["assembling-machine"]["steel-age-furnace"].crafting_categories
data.raw["assembling-machine"]["iron-furnace"].crafting_categories = data.raw["assembling-machine"]["steel-age-furnace"].crafting_categories

-- remove multifuncional furnace
--data.raw.item["k-multifunctional-furnace"].subgroup = "deadlock-machines-processing" (NOT USED)
--data.raw.recipe["k-multifunctional-furnace"].order = "machines-10[k-multifunctional-furnace]" (NOT USED)
--data.raw["assembling-machine"]["k-multifunctional-furnace"].crafting_categories = data.raw["assembling-machine"]["steel-age-furnace"].crafting_categories (NOT USED)
data.raw.item["k-multifunctional-furnace"] = nil
data.raw.recipe["k-multifunctional-furnace"] = nil
data.raw["assembling-machine"]["k-multifunctional-furnace"] = nil
data.raw.technology["k-multifunctional-furnace"] = nil

-- -- Drills
	
-- Rebalance mining drill speed

data.raw.recipe["electric-mining-drill-mk2"].subgroup = "deadlock-machines-resources"
data.raw.recipe["electric-mining-drill-mk2"].order    = "b2[items]-b2[electric-mining-drill-mk2]"
data.raw.recipe["electric-mining-drill-mk3"].subgroup = "deadlock-machines-resources"
data.raw.recipe["electric-mining-drill-mk3"].order    = "b3[items]-b3[electric-mining-drill-mk3]"

-- Place vanilla superior electric-mining-drill addeb by Krastorio after chrome-drill
aswil.technologies.removePrerequisite("electric-mining-drill-mk2", "carbon-steel-processing")
aswil.technologies.addPrerequisite("electric-mining-drill-mk2", "deadlock-mining-1")
aswil.technologies.addPrerequisite("electric-mining-drill-mk2", "deadlock-steel-age")

aswil.technologies.addPrerequisite("electric-mining-drill-mk3", "deadlock-electronics-2")
aswil.technologies.addPrerequisite("electric-mining-drill-mk3", "deadlock-furnaces-3")

data.raw["mining-drill"]["electric-mining-drill"].energy_usage = "250kW"
data.raw["mining-drill"]["electric-mining-drill"].module_specification.module_slots = 2

data.raw["mining-drill"]["electric-mining-drill-mk2"].mining_speed = 1.0
data.raw["mining-drill"]["electric-mining-drill-mk2"].resource_searching_radius = 2.51
data.raw["mining-drill"]["electric-mining-drill-mk2"].energy_usage = "300kW"
data.raw["mining-drill"]["electric-mining-drill-mk2"].module_specification.module_slots = 3

data.raw["mining-drill"]["electric-mining-drill-mk3"].mining_speed = 1.25
data.raw["mining-drill"]["electric-mining-drill-mk3"].resource_searching_radius = 3.51
data.raw["mining-drill"]["electric-mining-drill-mk3"].energy_usage = "350kW"
data.raw["mining-drill"]["electric-mining-drill-mk3"].module_specification.module_slots = 4
	
-- drills order
data.raw.recipe["k-big-drill"].subgroup = "deadlock-machines-resources"
data.raw.recipe["k-big-drill"].order    = "c[k-big-drill]"

data.raw.recipe["k-advanced-big-drill"].subgroup = "deadlock-machines-resources"
data.raw.recipe["k-advanced-big-drill"].order    = "c[k-advanced-big-drill]"

data.raw.recipe["k-deep-mining-drill"].subgroup = "deadlock-machines-resources"
data.raw.recipe["k-deep-mining-drill"].order    = "c[k-deep-mining-drill]"
	
-- Fix krastorio mining drill vanilla next upgrate (because have diffirent format)
data.raw["mining-drill"]["electric-mining-drill"].next_upgrade = nil
data.raw["mining-drill"]["electric-mining-drill-mk2"].fast_replaceable_group = "old-mining-drill"
data.raw["mining-drill"]["electric-mining-drill-mk3"].fast_replaceable_group = "old-mining-drill"

for _, drills in pairs(data.raw["mining-drill"]) do
	drills.allowed_effects = 
	{
		"consumption",
		"speed",
		"productivity",
		"pollution"
	}
end

-- -- Assemblers

-- Assembler speed

data.raw["assembling-machine"]["assembling-machine-1"].crafting_speed = 0.5
data.raw["assembling-machine"]["assembling-machine-2"].crafting_speed = 1
data.raw["assembling-machine"]["assembling-machine-3"].crafting_speed = 2

data.raw.item["advanced-assembler"].subgroup = "deadlock-machines-misc"
data.raw.recipe["advanced-assembler"].order = "a1[advanced-assembler]"

-- Solar panels rebalance

data.raw["solar-panel"]["solar-panel"].production = "75kW"
data.raw["solar-panel"]["imersite-solar-panel"].production = "225kW"

-- Solar panels order
data.raw.item["imersite-solar-panel"].order = "d[solar-panel]-c[imersite-solar-panel]"
data.raw.recipe["imersite-solar-panel"].order = "d[solar-panel]-c[imersite-solar-panel]"

-- Filtration plant rebalance
aswil.technologies.addPrerequisite("k-filtration-plant", "deadlock-washing-1")
aswil.technologies.addResearchUnitIngredient("k-filtration-plant", "chemical-science-pack", 1)
table.insert(data.raw["assembling-machine"]["k-filtration-plant"].crafting_categories, "cleaning")
data.raw["assembling-machine"]["k-filtration-plant"].crafting_speed = 2
data.raw["assembling-machine"]["k-filtration-plant"].module_specification.module_slots = 4

data.raw.item["k-filtration-plant"].order      = "machines-16[k-filtration-plant]"
data.raw.recipe["k-filtration-plant"].subgroup = "deadlock-machines-processing"
data.raw.recipe["k-filtration-plant"].order    = "machines-16[k-filtration-plant]"

-- -- Storage big chest warehouse and DIR Storage

data.raw.item["bronze-storage-depot"].order = "a[items]-d1[bronze-storage-depot]"
data.raw.recipe["bronze-storage-depot"].order = "a[items]-d1[bronze-storage-depot]"
data.raw.item["steel-storage-depot"].order = "a[items]-d2[steel-storage-depot]"
data.raw.recipe["steel-storage-depot"].order = "a[items]-d2[steel-storage-depot]"

data:extend(
{	
	{
		type = "item-subgroup",
		name = "k-logistics2-b",
		group = "logistics",
		order = "a2-b"
	}
})

data.raw.recipe["logistics-depot-active"].subgroup = "k-logistics2-b"
data.raw.recipe["logistics-depot-passive"].subgroup = "k-logistics2-b"
data.raw.recipe["logistics-depot-storage"].subgroup = "k-logistics2-b"
data.raw.recipe["logistics-depot-buffer"].subgroup = "k-logistics2-b"
data.raw.recipe["logistics-depot-requester"].subgroup = "k-logistics2-b"

-- This is the formula for balacing all added chest
-- we start from the fact that a tier 1 is 80 from a steel chest, tier 2 container will be doulbe
-- so tier 2 will be 160, and we will double all superior tier, the result is:
chest_tier_2_inventory_size = 160 -- 2x2
chest_tier_3_inventory_size = 320 -- 3x3
chest_tier_4_inventory_size = 640 -- 6x6

-- Tier 2

-- Krastorio medium storehouse
data.raw["container"]["k-medium-g"].inventory_size = chest_tier_2_inventory_size

-- Krastorio logistic medium storehouses
data.raw["logistic-container"]["k-medium-b"].inventory_size = chest_tier_2_inventory_size
data.raw["logistic-container"]["k-medium-pp"].inventory_size = chest_tier_2_inventory_size
data.raw["logistic-container"]["k-medium-s"].inventory_size = chest_tier_2_inventory_size
data.raw["logistic-container"]["k-medium-r"].inventory_size = chest_tier_2_inventory_size

-- Tier 3

-- DIR depot	
data.raw["container"]["bronze-storage-depot"].inventory_size = chest_tier_2_inventory_size -- Special case, need a nerf compared with steel tier but without become useless
data.raw["container"]["steel-storage-depot"].inventory_size = chest_tier_3_inventory_size

-- DIR logistics depot	
data.raw["logistic-container"]["logistics-depot-active"].inventory_size = chest_tier_3_inventory_size
data.raw["logistic-container"]["logistics-depot-passive"].inventory_size = chest_tier_3_inventory_size
data.raw["logistic-container"]["logistics-depot-storage"].inventory_size = chest_tier_3_inventory_size
data.raw["logistic-container"]["logistics-depot-buffer"].inventory_size = chest_tier_3_inventory_size
data.raw["logistic-container"]["logistics-depot-requester"].inventory_size = chest_tier_3_inventory_size

-- Tier 4

-- Krastorio big warehouse	
data.raw["container"]["k-big-g"].inventory_size = chest_tier_4_inventory_size

-- Krastorio logistic big warehouses
data.raw["logistic-container"]["k-big-b"].inventory_size = chest_tier_4_inventory_size
data.raw["logistic-container"]["k-big-pp"].inventory_size = chest_tier_4_inventory_size
data.raw["logistic-container"]["k-big-s"].inventory_size = chest_tier_4_inventory_size
data.raw["logistic-container"]["k-big-r"].inventory_size = chest_tier_4_inventory_size

-- Storage technology merge

data.raw.technology["deadlock-storage-2"].icon = "__KrastorioPorted__/graphics/compatibility/IndustrialRevolution/dir-as.png"
aswil.technologies.addEffects
( 
	"deadlock-storage-2",
	{
		{
			type = "unlock-recipe",
			recipe = "k-medium-g"
		},
		{
			type = "unlock-recipe",
			recipe = "k-big-g"
		}
	}
)
-- remove Krastorio one
data.raw.technology["advanced-storage"] = nil

data.raw.technology["deadlock-storage-3"].icons = nil
data.raw.technology["deadlock-storage-3"].icon  = "__KrastorioPorted__/graphics/compatibility/IndustrialRevolution/dir-als.png"
data.raw.technology["deadlock-storage-3"].icon_size = 128
aswil.technologies.addEffects
(	
	"deadlock-storage-3",
	{
		{
			type = "unlock-recipe",
			recipe = "k-medium-s"
		},
		{
			type = "unlock-recipe",
			recipe = "k-medium-pp"
		},
		{
			type = "unlock-recipe",
			recipe = "k-big-s"
		},
		{
			type = "unlock-recipe",
			recipe = "k-big-pp"
		}
	}
)

data.raw.technology["deadlock-storage-4"].icons = nil
data.raw.technology["deadlock-storage-4"].icon  = "__KrastorioPorted__/graphics/compatibility/IndustrialRevolution/dir-als.png"
data.raw.technology["deadlock-storage-4"].icon_size = 128
aswil.technologies.addEffects
(	
	"deadlock-storage-4",
	{
		{
			type = "unlock-recipe",
			recipe = "k-medium-b"
		},
		{
			type = "unlock-recipe",
			recipe = "k-medium-r"
		},
		{
			type = "unlock-recipe",
			recipe = "k-medium-ap"
		},
		{
			type = "unlock-recipe",
			recipe = "k-big-b"
		},
		{
			type = "unlock-recipe",
			recipe = "k-big-r"
		},
		{
			type = "unlock-recipe",
			recipe = "k-big-ap"
		} 
	}
)
-- remove Krastorio one
data.raw.technology["advanced-logistic-system"] = nil

-- -- -- DIR

-- -- Laboratory

-- order
data.raw.recipe["copper-lab"].order = "b"
data.raw.recipe["k-lab"].subgroup = "deadlock-machines-misc"

-- Upgrade DIR last laboratory

table.insert(data.raw["lab"]["quantum-lab"].inputs, "automation-research-data")
table.insert(data.raw["lab"]["quantum-lab"].inputs, "logistic-research-data")
table.insert(data.raw["lab"]["quantum-lab"].inputs, "military-research-data")
table.insert(data.raw["lab"]["quantum-lab"].inputs, "chemical-research-data")
table.insert(data.raw["lab"]["quantum-lab"].inputs, "scientific-research-data")
table.insert(data.raw["lab"]["quantum-lab"].inputs, "matter-research-data")
table.insert(data.raw["lab"]["quantum-lab"].inputs, "optimization-research-data")

-- Removing redundat items(DIR flare stack)

data.raw.technology["deadlock-duranium-armour"] = nil
data.raw.recipe["deadlock-duranium-armour"]     = nil

-- removing "flare-stack"
if not mods["aai-industry"] then
	aswil.technologies.removeUnlockRecipe("oil-processing", "flare-stack")
	data.raw.recipe["flare-stack"] = nil
end

-- DIR Electric Locomotive
data.raw.locomotive["electric-locomotive"].equipment_grid = "locomotive-grid"
