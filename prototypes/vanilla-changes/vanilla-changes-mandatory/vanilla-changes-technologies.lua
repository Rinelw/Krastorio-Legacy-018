-- -- -- Vanilla technologies modification
-- -- Stats modification  

-- Increase sulfur-processing science pack consume
aswil.technologies.setResearchUnitCount("sulfur-processing", 200)
 
-- Changing steel-axe like a bonus
data.raw.technology["steel-axe"].icon = "__Krastorio__/graphics/technology/pickaxe-1.png"
data.raw.technology["steel-axe"].icon_size = 128
data.raw.technology["steel-axe"].effects = {{type = "character-mining-speed",  modifier = 0.5}}
data.raw.technology["solar-energy"].unit.ingredients =
{
	{"automation-science-pack", 1},
	{"logistic-science-pack", 1},
	{"chemical-science-pack", 1}
}   

-- -- Prerequisites and unlocking

-- Sand util recipe
aswil.technologies.addEffect("optics", {type = "unlock-recipe", recipe = "glass-from-sand"})

-- Military 3
aswil.technologies.removePrerequisite("military-3", "laser-turrets")

-- Combat drones
aswil.technologies.addPrerequisite("combat-robotics-2", "laser-turrets")

-- Personal lasers
aswil.technologies.addPrerequisite("personal-laser-defense-equipment", "laser-turrets")

-- Military 4
aswil.technologies.removePrerequisites("military-4", {"utility-science-pack", "explosives"})
aswil.technologies.addPrerequisite("military-4", "advanced-electronics-2")

-- Logistic system
aswil.technologies.removePrerequisite("logistic-system", "utility-science-pack")
aswil.technologies.addPrerequisite("logistic-system", "advanced-electronics-2")

-- Production science pack
aswil.technologies.removePrerequisite("production-science-pack", "advanced-material-processing-2")
aswil.technologies.addPrerequisite("production-science-pack", "k-multifunctional-furnace")

-- Nuclear power
aswil.technologies.addPrerequisite("nuclear-power", "advanced-electronics-2")

-- Advanced material processing 2
aswil.technologies.addPrerequisite("advanced-material-processing-2", "carbon-steel-processing")
aswil.technologies.addEffect("advanced-material-processing-2", {type = "unlock-recipe", recipe = "k-coke"})

-- Space science pack
aswil.technologies.addEffect("space-science-pack", {type = "unlock-recipe", recipe = "optimization-research-data"})

-- Combat robotics 3
aswil.technologies.addPrerequisite("combat-robotics-3", "k-minerals-extraction")

-- Railway
aswil.technologies.addPrerequisite("railway", "carbon-steel-processing")

-- Fusion reactor equipment
aswil.technologies.addPrerequisite("fusion-reactor-equipment", "nuclear-fuel-reprocessing")

-- Oil processing
aswil.technologies.addPrerequisite("oil-processing", "carbon-steel-processing")

-- Solar energy
aswil.technologies.addPrerequisites("solar-energy", {"k-silicon-processing", "k-gold-processing"})

-- Laser turrets
aswil.technologies.addPrerequisite("laser-turrets", "k-silicon-processing")

-- Advanced electronics
aswil.technologies.addPrerequisite("advanced-electronics", "k-silicon-processing")
aswil.technologies.addEffects
(	
	"advanced-electronics", 
	{
		{type = "unlock-recipe", recipe = "k-silicon-wafer"},
		{type = "unlock-recipe", recipe = "k-circuit-board"},
		{type = "unlock-recipe", recipe = "integrated-circuit"}
	}
)

-- Advanced electronics 2
aswil.technologies.addPrerequisites("advanced-electronics-2", {"k-gold-processing"})
aswil.technologies.addEffects
(	
	"advanced-electronics-2", 
	{
		{type = "unlock-recipe", recipe = "k-processor"},
		{type = "unlock-recipe", recipe = "k-ram"},
		{type = "unlock-recipe", recipe = "k-research-server-mk1"},
		{type = "unlock-recipe", recipe = "k-lab"},
		{type = "unlock-recipe", recipe = "k-empty-memory-card"},
		{type = "unlock-recipe", recipe = "automation-research-data"},
		{type = "unlock-recipe", recipe = "logistic-research-data"},
		{type = "unlock-recipe", recipe = "military-research-data"},
		{type = "unlock-recipe", recipe = "chemical-research-data"}
	}
)

-- Rocket fuel
aswil.technologies.addPrerequisite("rocket-fuel", "k-electrolysis-plant")
aswil.technologies.addEffect("rocket-fuel", {type = "unlock-recipe", recipe = "k-rocket-fuel"})

-- Rocket silo
aswil.technologies.setResearchUnitCount("rocket-silo", 35000)
aswil.technologies.addPrerequisite("rocket-silo", "menarite-processor")

-- Science pack unit
aswil.technologies.setResearchUnitCount("space-science-pack", 10000)

-- Low density structure
aswil.technologies.addPrerequisite("low-density-structure", "k-minerals-extraction")

-- Ammo recipes for nuclear rocket for Krastorio rocker turret
aswil.technologies.addUnlockRecipe("atomic-bomb", "nuclear-rocket-for-turret")
