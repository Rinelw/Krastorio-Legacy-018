-- Technologies fixes

-- -- Special

-- finalize in technologies k-steel removal

aswil.technologies.removeUnlockRecipe("k-multifunctional-furnace", "k-steel-2")
aswil.technologies.removeUnlockRecipe("k-multifunctional-furnace", "k-steel-3")
aswil.technologies.removeUnlockRecipe("k-multifunctional-furnace", "k-iron-beam-2")

aswil.technologies.addUnlockRecipe("deadlock-steel-age", "steel-pipe")
aswil.technologies.addUnlockRecipe("deadlock-steel-age", "steel-pipe-to-ground")

-- finalize in technologies k gold foil removal and gold adaptation

data.raw.technology["k-gold-processing"] = nil
aswil.technologies.removePrerequisite("advanced-electronics-2", "k-gold-processing")

-- finalize in technologies k glass removal

aswil.technologies.removeEffect("optics", {type = "unlock-recipe", recipe = "glass-from-sand"})

-- finalize k dirty water removal

aswil.technologies.removeEffect("deadlock-barrelling", {type = "unlock-recipe", recipe = "empty-k-dirty-water-barrel"})
aswil.technologies.removeEffect("deadlock-barrelling", {type = "unlock-recipe", recipe = "fill-k-dirty-water-barrel"})

-- finalize matter recipe removal

aswil.technologies.removeEffect("matter-assembler-plus", {type = "unlock-recipe", recipe = "matter-to-iron-beam"})

-- finalize titanium NOT USED
--aswil.technologies.addEffect("deadlock-furnaces-3", {type = "unlock-recipe", recipe = "titanium-piston"})

-- finalize tantalum integration
aswil.technologies.addEffect("k-minerals-extraction", {type = "unlock-recipe", recipe = "dir-tantalum-plate"})

-- -- Effects

-- Add unlocking recipes

aswil.technologies.addEffect("deadlock-furnaces-2", {type = "unlock-recipe", recipe = "k-coke"})

aswil.technologies.addEffect("k-military", {type = "unlock-recipe", recipe = "imersite-cartridge"})

aswil.technologies.addEffect("deadlock-inserters-1", {type = "unlock-recipe", recipe = "loader-kr"})

aswil.technologies.addEffects
(	
	"deadlock-electronics-2", 
	{
		{type = "unlock-recipe", recipe = "k-silicon-wafer"},
		{type = "unlock-recipe", recipe = "k-circuit-board"}
	}
)
aswil.technologies.addPrerequisite("deadlock-electronics-2", "k-silicon-processing")

aswil.technologies.addEffects
(	
	"deadlock-electronics-3", 
	{
		{type = "unlock-recipe", recipe = "k-processor"},
		{type = "unlock-recipe", recipe = "k-ram"},
		{type = "unlock-recipe", recipe = "k-research-server-mk1"},
		{type = "unlock-recipe", recipe = "k-lab"},
		{type = "unlock-recipe", recipe = "k-empty-memory-card"},
		{type = "unlock-recipe", recipe = "automation-research-data"},
		{type = "unlock-recipe", recipe = "logistic-research-data"},
		{type = "unlock-recipe", recipe = "military-research-data"},
		{type = "unlock-recipe", recipe = "chemical-research-data"},
		{type = "unlock-recipe", recipe = data.raw.recipe["computer-mk1"].name .. "-2"},
		{type = "unlock-recipe", recipe = data.raw.recipe["computer-mk2"].name .. "-2"},
		{type = "unlock-recipe", recipe = data.raw.recipe["computer-mk3"].name .. "-2"}
	}
)	

-- Intermediate technology unused

data.raw.technology["carbon-steel-processing"] = nil

-- -- Prerequisites

-- General prerequisites conversion
aswil.technologies.convertPrerequisiteFromAllTechnologies("steel-processing", "deadlock-steel-age")
aswil.technologies.convertPrerequisiteFromAllTechnologies("carbon-steel-processing", "deadlock-steel-age")
aswil.technologies.convertPrerequisiteFromAllTechnologies("advanced-material-processing", "deadlock-furnaces-1")
aswil.technologies.convertPrerequisiteFromAllTechnologies("advanced-material-processing-2", "deadlock-furnaces-2")
aswil.technologies.convertPrerequisiteFromAllTechnologies("electronics", "deadlock-electronics-1")
aswil.technologies.convertPrerequisiteFromAllTechnologies("advanced-electronics", "deadlock-electronics-2")
aswil.technologies.convertPrerequisiteFromAllTechnologies("advanced-electronics-2", "deadlock-electronics-3")
aswil.technologies.convertPrerequisiteFromAllTechnologies("concrete", "deadlock-concrete")
aswil.technologies.convertPrerequisiteFromAllTechnologies("fast-inserter", "deadlock-inserters-2")
aswil.technologies.convertPrerequisiteFromAllTechnologies("stack-inserter", "deadlock-inserters-3")
aswil.technologies.convertPrerequisiteFromAllTechnologies("laser-turrets", "turrets-3")
aswil.technologies.convertPrerequisiteFromAllTechnologies("uranium-ammo", "military-4")
aswil.technologies.convertPrerequisiteFromAllTechnologies("solar-energy", "deadlock-solar-energy-1")
aswil.technologies.convertPrerequisiteFromAllTechnologies("effectivity-module", "deadlock-modules-1")
aswil.technologies.convertPrerequisiteFromAllTechnologies("speed-module", "deadlock-modules-1")
aswil.technologies.convertPrerequisiteFromAllTechnologies("productivity-module", "deadlock-modules-1")
aswil.technologies.convertPrerequisiteFromAllTechnologies("effectivity-module-2", "deadlock-modules-2")
aswil.technologies.convertPrerequisiteFromAllTechnologies("speed-module-2", "deadlock-modules-2")
aswil.technologies.convertPrerequisiteFromAllTechnologies("productivity-module-2", "deadlock-modules-2")
aswil.technologies.convertPrerequisiteFromAllTechnologies("effectivity-module-3", "deadlock-modules-3")
aswil.technologies.convertPrerequisiteFromAllTechnologies("speed-module-3", "deadlock-modules-3")
aswil.technologies.convertPrerequisiteFromAllTechnologies("productivity-module-3", "deadlock-modules-3")

-- Fix of cycle prerequisites
aswil.technologies.removePrerequisite("oil-processing", "deadlock-steel-age")
aswil.technologies.removePrerequisite("production-science-pack", "k-multifunctional-furnace")
aswil.technologies.convertPrerequisiteFromAllTechnologies("k-multifunctional-furnace", "deadlock-electronics-3")
-- Move multifunctional furnace in the right position (NOT USED)
-- data.raw.technology["k-multifunctional-furnace"].prerequisites = {"deadlock-chrome-age", "deadlock-electronics-3"}

-- -- Others technologies fixes

aswil.technologies.addPrerequisite("antimatter-reactor-prototype", "deadlock-future-age")
data.raw.technology["reinforced-plate"].prerequisites = {"deadlock-steel-age"}

-- equipment
aswil.technologies.addPrerequisite("battery-equipment", "plastics")
aswil.technologies.removePrerequisite("battery-mk2-equipment", "utility-science-pack")
aswil.technologies.addPrerequisite("battery-mk2-equipment", "low-density-structure")
aswil.technologies.addPrerequisite("battery-mk2-equipment", "deadlock-electronics-2")
aswil.technologies.addPrerequisite("modular-armor", "plastics")

aswil.technologies.addPrerequisite("power-armor-mk4", "deadlock-future-age")
aswil.technologies.addPrerequisite("energy-shield-mk4-equipment", "deadlock-future-age")

-- logistic prerequisite and effect
aswil.technologies.removeEffect("logistics", {type = "unlock-recipe", recipe = "loader-kr"})
aswil.technologies.addPrerequisite("logistics-2", "deadlock-inserters-1")

-- rails

aswil.technologies.removePrerequisite("railway", "deadlock-steel-age")

-- others

aswil.technologies.removePrerequisite("low-density-structure", "k-minerals-extraction")

data.raw.technology["advanced-robotics"].prerequisites = {"robotics", "electric-engine", "deadlock-electronics-3"}

aswil.technologies.addPrerequisite("electric-energy-distribution-3", "deadlock-electronics-2")
aswil.technologies.addPrerequisite("deadlock-solar-energy-2", "deadlock-electronics-2")

aswil.technologies.addPrerequisite("advanced-fluid-handling", "deadlock-steel-age")
aswil.technologies.addPrerequisite("advanced-fluid-handling", "electric-engine")

aswil.technologies.addResearchUnitIngredient("singularity-beacon", "utility-science-pack")

-- don't exist in DIR
aswil.technologies.removePrerequisite("solar-energy", "k-gold-processing")

-- -- Others, infinite technologies fixes

local normal_infinite_ingredients = 
{
	{"automation-research-data", 1},
	{"logistic-research-data", 1},
	{"chemical-research-data", 1},
	{"scientific-research-data", 1},
	{"optimization-research-data", 1}
}

local military_infinite_ingredients = 
{
	{"automation-research-data", 1},
	{"logistic-research-data", 1},
	{"military-research-data", 1},
	{"chemical-research-data", 1},
	{"scientific-research-data", 1},
	{"optimization-research-data", 1}
}

if data.raw.technology["stronger-explosives-7"].unit.count and data.raw.technology["stronger-explosives-7"].unit.count_formula then
	data.raw.technology["stronger-explosives-7"].unit.count = nil
end
data.raw.technology["stronger-explosives-7"].unit.ingredients = military_infinite_ingredients

if data.raw.technology["refined-flammables-7"].unit.count and data.raw.technology["refined-flammables-7"].unit.count_formula then
	data.raw.technology["refined-flammables-7"].unit.count = nil
end
data.raw.technology["refined-flammables-7"].unit.ingredients = normal_infinite_ingredients

if data.raw.technology["artillery-shell-range-1"].unit.count and data.raw.technology["artillery-shell-range-1"].unit.count_formula then
	data.raw.technology["artillery-shell-range-1"].unit.count = nil
end
data.raw.technology["artillery-shell-range-1"].unit.ingredients = military_infinite_ingredients

if data.raw.technology["artillery-shell-speed-1"].unit.count and data.raw.technology["artillery-shell-speed-1"].unit.count_formula then
	data.raw.technology["artillery-shell-speed-1"].unit.count = nil
end
data.raw.technology["artillery-shell-speed-1"].unit.ingredients = military_infinite_ingredients

if data.raw.technology["follower-robot-count-7"].unit.count and data.raw.technology["follower-robot-count-7"].unit.count_formula then
	data.raw.technology["follower-robot-count-7"].unit.count = nil
end
data.raw.technology["follower-robot-count-7"].unit.ingredients = normal_infinite_ingredients

if data.raw.technology["worker-robots-speed-6"].unit.count and data.raw.technology["worker-robots-speed-6"].unit.count_formula then
	data.raw.technology["worker-robots-speed-6"].unit.count = nil
end
data.raw.technology["worker-robots-speed-6"].unit.ingredients = normal_infinite_ingredients

if data.raw.technology["mining-productivity-4"].unit.count and data.raw.technology["mining-productivity-4"].unit.count_formula then
	data.raw.technology["mining-productivity-4"].unit.count = nil
end
data.raw.technology["mining-productivity-4"].unit.ingredients = normal_infinite_ingredients
-- k-research-speed-7
data.raw.technology["k-research-speed-7"].unit.ingredients = normal_infinite_ingredients

data.raw.technology["deadlock-photon-turret-damage-4"].unit.ingredients = military_infinite_ingredients
if aswil.general.isVersionLesserThan(mods["IndustrialRevolution"], "1.0.7")  then
	data.raw.technology["deadlock-physical-turret-damage-7"].unit.ingredients = military_infinite_ingredients
end
data.raw.technology["physical-projectile-damage-7"].unit.ingredients = military_infinite_ingredients

data.raw.technology["energy-weapons-damage-7"].unit.ingredients = military_infinite_ingredients

-- -- Pickaxes

data.raw.technology["steel-axe"].enabled = true
data.raw.technology["steel-axe"].hidden = false
data.raw.technology["steel-axe"].prerequisites = {"deadlock-iron-age"}

