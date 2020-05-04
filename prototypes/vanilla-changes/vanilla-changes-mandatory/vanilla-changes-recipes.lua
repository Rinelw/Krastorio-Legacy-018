-- -- -- Vanilla recipes modifications

-- -- -- Buildings

-- Beacon
aswil.recipes.setRecipeEnergyCost("beacon", 30)
aswil.recipes.addIngredient("beacon", {"electronic-circuit", 10})
aswil.recipes.addIngredient("beacon", {"advanced-circuit", 10})
aswil.recipes.addIngredient("beacon", {"k-steel", 20})
aswil.recipes.addIngredient("beacon", {"substation", 1})
aswil.recipes.removeIngredient("beacon", "steel-plate")

-- Roboport
aswil.recipes.setRecipeEnergyCost("roboport", 60)
aswil.recipes.addIngredient("roboport", {"k-steel", 50})
aswil.recipes.replaceIngredient("roboport", "iron-gear-wheel",  {"iron-gear-wheel", 20})
aswil.recipes.replaceIngredient("roboport", "advanced-circuit", {"advanced-circuit", 20})

-- Radar
aswil.recipes.setRecipeEnergyCost("radar", 30)
aswil.recipes.addIngredient("radar", {"electronic-circuit", 5})
aswil.recipes.addIngredient("radar", {"iron-gear-wheel", 5})
aswil.recipes.addIngredient("radar", {"iron-plate", 20})

-- Rocket silo
aswil.recipes.setRecipeEnergyCost("rocket-silo", 3000)
aswil.recipes.addIngredient("rocket-silo", {"k-steel", 1000})
aswil.recipes.addIngredient("rocket-silo", {"k-titanium-plate", 500})
aswil.recipes.addIngredient("rocket-silo", {"processing-unit", 800})
aswil.recipes.addIngredient("rocket-silo", {"menarite-processor", 100})
aswil.recipes.addIngredient("rocket-silo", {"concrete", 1000})
aswil.recipes.removeIngredient("rocket-silo", "pipe")
aswil.recipes.removeIngredient("rocket-silo", "steel-plate")

-- Solar panel
-- Adding glass to glass based entities in game
aswil.recipes.addIngredient("solar-panel", {"glass", 10})
aswil.recipes.addIngredient("solar-panel", {"k-silicon-wafer", 10})
aswil.recipes.addIngredient("solar-panel", {"k-gold-foil", 10})
aswil.recipes.addOrReplaceIngredient("solar-panel", "electronic-circuit", {"electronic-circuit", 5})

-- -- Chemicals
------------------------------

-- Chemical plant 
-- Adding glass to glass based entities in game
aswil.recipes.setRecipeEnergyCost("chemical-plant", 30)
aswil.recipes.addIngredient("chemical-plant", {"iron-gear-wheel", 5})
aswil.recipes.addIngredient("chemical-plant", {"electronic-circuit", 5})
aswil.recipes.addIngredient("chemical-plant", {"pipe", 5})
aswil.recipes.addIngredient("chemical-plant", {"k-steel", 15})
aswil.recipes.addOrReplaceIngredient("chemical-plant", "glass", {"glass", 5})

-- Oil Refinery
aswil.recipes.setRecipeEnergyCost("oil-refinery", 30)
aswil.recipes.addIngredient("oil-refinery", {"k-steel", 30})
aswil.recipes.addIngredient("oil-refinery", {"iron-gear-wheel", 10})
aswil.recipes.addIngredient("oil-refinery", {"stone-brick", 10})
aswil.recipes.addIngredient("oil-refinery", {"pipe", 10})
aswil.recipes.removeIngredient("oil-refinery", "steel-plate")
  
------------------------------

-- Laser turret
aswil.recipes.addOrReplaceIngredient("laser-turret", "k-quartz", {"k-quartz", 3})

-- -- Assemblers
--------------------------------

-- Assembler machine 1
aswil.recipes.setRecipeEnergyCost("assembling-machine-1", 5)

-- Assembler machine 2
aswil.recipes.setRecipeEnergyCost("assembling-machine-2", 10)

-- Assembler machine 3
aswil.recipes.setRecipeEnergyCost("assembling-machine-3", 20)
aswil.recipes.addIngredient("assembling-machine-3", {"k-steel", 15})

--------------------------------

-- -- Furnaces
----------------------------

-- Stone furnace
aswil.recipes.setRecipeEnergyCost("stone-furnace", 2)

-- Steel furnace
aswil.recipes.setRecipeEnergyCost("steel-furnace", 10)
aswil.recipes.addOrReplaceIngredient("steel-furnace", "iron-plate", {"iron-plate", 10})
aswil.recipes.addOrReplaceIngredient("steel-furnace", "steel-plate", {"steel-plate", 5})
aswil.recipes.addOrReplaceIngredient("steel-furnace", "stone-furnace", {"stone-furnace", 1})
aswil.recipes.removeIngredient("steel-furnace", "stone-brick")

-- Electric furnace
aswil.recipes.setRecipeEnergyCost("electric-furnace", 20)
aswil.recipes.addIngredient("electric-furnace", {"k-steel", 15})
aswil.recipes.removeIngredient("electric-furnace", "steel-plate")

----------------------------

-- -- Turbines
----------------------------

-- Steam engine
aswil.recipes.setRecipeEnergyCost("steam-engine", 5)

-- Steam turbine
aswil.recipes.setRecipeEnergyCost("steam-turbine", 10)
aswil.recipes.addIngredient("steam-turbine", {"steam-engine", 2})
aswil.recipes.replaceIngredient("steam-turbine", "iron-gear-wheel", {"iron-gear-wheel", 14})
aswil.recipes.replaceIngredient("steam-turbine", "pipe", {"pipe", 10})
----------------------------

-- -- Poles
----------------------

-- Small electric pole
aswil.recipes.addIngredient("small-electric-pole", {"wood", 1})
aswil.recipes.addIngredient("small-electric-pole", {"iron-plate", 1})
aswil.recipes.addIngredient("small-electric-pole", {"copper-cable", 2})

-- Medium electric pole
aswil.recipes.setRecipeEnergyCost("medium-electric-pole", 1)
aswil.recipes.addIngredient("medium-electric-pole", {"iron-stick", 1})
aswil.recipes.addIngredient("medium-electric-pole", {"steel-plate", 3})
aswil.recipes.addOrReplaceIngredient("medium-electric-pole", "copper-cable", {"copper-cable", 5})
aswil.recipes.removeIngredient("medium-electric-pole", "copper-plate")

-- Big electric pole
aswil.recipes.setRecipeEnergyCost("big-electric-pole", 2)
aswil.recipes.addIngredient("big-electric-pole", {"iron-stick", 4})
aswil.recipes.addIngredient("big-electric-pole", {"steel-plate", 1})
aswil.recipes.addOrReplaceIngredient("big-electric-pole", "copper-cable", {"copper-cable", 12})
aswil.recipes.removeIngredient("big-electric-pole", "copper-plate")

-- Substation
aswil.recipes.setRecipeEnergyCost("substation", 3)
aswil.recipes.addOrReplaceIngredient("substation", "advanced-circuit", {"advanced-circuit", 2})
aswil.recipes.addOrReplaceIngredient("substation", "copper-plate", {"copper-plate", 2})
aswil.recipes.addOrReplaceIngredient("substation", "copper-cable", {"copper-cable", 8})
aswil.recipes.addIngredient("substation", {"k-steel", 10})
----------------------

-- Accumulator
aswil.recipes.addIngredient("accumulator", {"k-steel", 5})
aswil.recipes.addOrReplaceIngredient("accumulator", "battery", {"battery", 8})
aswil.recipes.convertIngredient("accumulator", "iron-plate", "copper-plate")

-- Inserter
aswil.recipes.addIngredient("inserter", {"iron-plate", 1})

-- -- -- Only recipe cost modifications

-- Laboratory
aswil.recipes.setRecipeEnergyCost("lab", 15)

-- -- Pumps
----------------------
-- Pump
aswil.recipes.setRecipeEnergyCost("pump", 10)

-- Offshore pump
aswil.recipes.setRecipeEnergyCost("offshore-pump", 5)
----------------------

-- Storage tank
aswil.recipes.setRecipeEnergyCost("storage-tank", 5)

-- Boiler
aswil.recipes.setRecipeEnergyCost("boiler", 5)

-- Electric mining drill
aswil.recipes.setRecipeEnergyCost("electric-mining-drill", 10)

-- -- -- Items

-- -- Nuclear recipes modification, for adding k-tritium to the game
aswil.recipes.addProduct("uranium-processing", {name = "k-tritium", probability = 0.008, amount = 1})
aswil.recipes.addProduct("nuclear-fuel-reprocessing", {"k-tritium", 1})

-- -- Robots
------------------------

-- Logistic robot
aswil.recipes.setRecipeEnergyCost("logistic-robot", 10)
aswil.recipes.addIngredient("logistic-robot", {"k-steel", 1})
aswil.recipes.addIngredient("logistic-robot", {"plastic-bar", 5})
aswil.recipes.replaceIngredient("logistic-robot", "advanced-circuit", {"advanced-circuit", 2})

-- Construction robot
aswil.recipes.setRecipeEnergyCost("construction-robot", 10)
aswil.recipes.addIngredient("construction-robot", {"k-steel", 1})
aswil.recipes.addIngredient("construction-robot", {"plastic-bar", 5})
aswil.recipes.replaceIngredient("construction-robot", "electronic-circuit", {"advanced-circuit", 2})

-- Defender capsule
aswil.recipes.setRecipeEnergyCost("defender-capsule", 10)
aswil.recipes.addIngredient("defender-capsule", {"flying-robot-frame", 1})
aswil.recipes.addIngredient("defender-capsule", {"k-steel", 1})
aswil.recipes.replaceIngredient("defender-capsule", "piercing-rounds-magazine", {"piercing-rounds-magazine", 2})
aswil.recipes.replaceIngredient("defender-capsule", "electronic-circuit", {"advanced-circuit", 1})
aswil.recipes.removeIngredient("defender-capsule", "iron-gear-wheel")

-- Distractor capsule
aswil.recipes.setRecipeEnergyCost("distractor-capsule", 20)
aswil.recipes.addIngredient("distractor-capsule", {"integrated-circuit", 3})
aswil.recipes.addIngredient("distractor-capsule", {"gold-plate", 3})
aswil.recipes.replaceIngredient("distractor-capsule", "defender-capsule", {"defender-capsule", 3})

-- Destroyer capsule
aswil.recipes.setRecipeEnergyCost("destroyer-capsule", 30)
aswil.recipes.addIngredient("destroyer-capsule", {"processing-unit", 5})
aswil.recipes.addIngredient("destroyer-capsule", {"k-ram", 5})
aswil.recipes.addIngredient("destroyer-capsule", {"k-titanium-plate", 5})
aswil.recipes.replaceIngredient("destroyer-capsule", "distractor-capsule", {"distractor-capsule", 2})
aswil.recipes.removeIngredient("destroyer-capsule", "speed-module")

------------------------

-- Small lamp
-- Adding glass to glass based entities in game
aswil.recipes.addIngredient("small-lamp", {name = "glass", amount = 1})
	
-- Sulfuric acid
aswil.recipes.replaceIngredient("sulfuric-acid", "sulfur", {type="item", name="sulfur", amount=3})

-- Empty barrel
aswil.recipes.addIngredient("empty-barrel", {type="item", name="iron-plate", amount=2})
aswil.recipes.removeIngredient("empty-barrel", "steel-plate")

-- Weapons
--------------------

-- Pistol
aswil.recipes.setRecipeEnergyCost("pistol", 3)

aswil.recipes.addIngredient("pistol", {name = "iron-gear-wheel", amount = 1})
aswil.recipes.replaceIngredient("pistol", "iron-plate", {name = "iron-plate", amount = 1})
aswil.recipes.replaceIngredient("pistol", "copper-plate", {name = "copper-plate", amount = 1})

-- Submachine gun
aswil.recipes.setRecipeEnergyCost("submachine-gun", 5)

aswil.recipes.replaceIngredient("submachine-gun", "iron-plate", {name = "iron-plate", amount = 2})
aswil.recipes.replaceIngredient("submachine-gun", "copper-plate", {name = "copper-plate", amount = 1})
aswil.recipes.replaceIngredient("submachine-gun", "iron-gear-wheel", {name = "iron-gear-wheel", amount = 1})

-- Shotgun
aswil.recipes.replaceIngredient("shotgun", "iron-plate", {name = "iron-plate", amount = 2})
aswil.recipes.replaceIngredient("shotgun", "iron-gear-wheel", {name = "iron-gear-wheel", amount = 1})
aswil.recipes.replaceIngredient("shotgun", "wood", {name = "wood", amount = 1})
aswil.recipes.removeIngredient("shotgun", "copper-plate")

-- Combat shotgun
aswil.recipes.replaceIngredient("combat-shotgun", "iron-plate", {name = "iron-plate", amount = 3})
aswil.recipes.replaceIngredient("combat-shotgun", "copper-plate", {name = "copper-plate", amount = 2})
aswil.recipes.replaceIngredient("combat-shotgun", "iron-gear-wheel", {name = "iron-gear-wheel", amount = 1})
aswil.recipes.replaceIngredient("combat-shotgun", "wood", {name = "wood", amount = 1})

-- Rocket launcher
aswil.recipes.addIngredient("rocket-launcher", {name = "copper-plate", amount = 1})
aswil.recipes.replaceIngredient("rocket-launcher", "iron-plate", {name = "iron-plate", amount = 3})
aswil.recipes.replaceIngredient("rocket-launcher", "copper-plate", {name = "electronic-circuit", amount = 1})
aswil.recipes.removeIngredient("rocket-launcher", "iron-gear-wheel")

-- Flamethrower
aswil.recipes.addIngredient("flamethrower", {name = "iron-plate", amount = 3})
aswil.recipes.addIngredient("flamethrower", {name = "copper-plate", amount = 1})
aswil.recipes.replaceIngredient("flamethrower", "iron-gear-wheel", {name = "iron-gear-wheel", amount = 1})
aswil.recipes.removeIngredient("flamethrower", "steel-plate")
--------------------

-- Ammo
--------------

-- Artillery shell
aswil.recipes.addIngredient("artillery-shell", {"advanced-circuit", 4})
aswil.recipes.addIngredient("artillery-shell", {"k-steel", 4})
aswil.recipes.addIngredient("artillery-shell", {"k-tantalum-plate", 2})
aswil.recipes.removeIngredient("artillery-shell", "radar")
aswil.recipes.removeIngredient("artillery-shell", "explosive-cannon-shell")
--------------

------------------------------

-- Rocket Fuel (Vanilla)
aswil.recipes.setRecipeEnergyCost("rocket-fuel", 20)

aswil.recipes.replaceIngredient("rocket-fuel", "light-oil", {type="fluid", name="k-chlorine", amount=50})
aswil.recipes.replaceIngredient("rocket-fuel", "solid-fuel", {"solid-fuel", 10})

-- Iron gear
aswil.recipes.replaceIngredient("iron-gear-wheel", "iron-plate", {"iron-plate", 1})
if not aswil.recipes.hasNoExpensiveIngredients("iron-gear-wheel") then
	data.raw.recipe["iron-gear-wheel"].expensive.ingredients = {{"iron-plate", 2}}
end

-- Low-density-structure
aswil.recipes.addIngredient("low-density-structure", {"k-titanium-plate", 5})
aswil.recipes.replaceIngredient("low-density-structure", "copper-plate", {"copper-plate", 5})
aswil.recipes.removeIngredient("low-density-structure", "steel-plate")

-- -- Only energy cost

-- Repair pack
aswil.recipes.setRecipeEnergyCost("repair-pack", 2)

-- Satellite
aswil.recipes.setRecipeEnergyCost("satellite", 120)
aswil.recipes.addOrReplaceIngredient("satellite", "accumulator", {"accumulator", 25})
aswil.recipes.addOrReplaceIngredient("satellite", "solar-panel", {"solar-panel", 75})
aswil.recipes.addOrReplaceIngredient("satellite", "processing-unit", {"processing-unit", 25})

-- "rocket-part"
aswil.recipes.setRecipeEnergyCost("rocket-part", 10)
--aswil.recipes.addOrReplaceIngredient("rocket-part", "rocket-control-unit", {"rocket-control-unit", 5})


-- -- Only result count

-- Copper cable
aswil.recipes.setRecipeResultCount("copper-cable", 3)