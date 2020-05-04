-- -- -- Vanilla modules changes	
------------------------------------------------
-- -- All modules
data.raw.technology["modules"].effects = {{type = "unlock-recipe", recipe = "k-module-case"}}

------------------------------------------------
-- Speed modules

-- Speed module 1
data.raw.recipe["speed-module"].energy_required = 15
aswil.recipes.overrideIngredients
(	
	"speed-module", 
	{
		{"k-module-case", 1},
		{"integrated-circuit", 6},
		{"advanced-circuit", 3}
	}
)

-- Speed module 2
data.raw.technology["speed-module-2"].unit.count = 100

data.raw.recipe["speed-module-2"].energy_required = 15
aswil.recipes.overrideIngredients
(	
	"speed-module-2", 
	{
		{"speed-module", 1},
		{"k-processor", 2},
		{"k-ram", 2},
		{"processing-unit", 2}
	}
)

-- Speed module 3
data.raw.technology["speed-module-3"].unit.count = 500
data.raw.technology["speed-module-3"].prerequisites = {"speed-module-2", "menarite-processor"}

data.raw.recipe["speed-module-3"].energy_required = 15
aswil.recipes.overrideIngredients
(	
	"speed-module-3", 
	{
		{"speed-module-2", 1},
		{"k-processor", 2},
		{"k-ram", 4},
		{"menarite-processor", 2}
	}
)

------------------------------------------------
-- -- Productivity modules

-- Productivity module 1	
data.raw.recipe["productivity-module"].energy_required = 15	
aswil.recipes.overrideIngredients
(	
	"productivity-module", 
	{
		{"k-module-case", 1},
		{"integrated-circuit", 6},
		{"advanced-circuit", 3}
	}
)

-- Productivity module 2	
data.raw.technology["productivity-module-2"].unit.count = 100

data.raw.recipe["productivity-module-2"].energy_required = 15
aswil.recipes.overrideIngredients
(	
	"productivity-module-2", 
	{
		{"productivity-module", 1},
		{"k-processor", 2},
		{"k-ram", 2},
		{"processing-unit", 2}
	}
)	
	
-- Productivity module 3	
data.raw.technology["productivity-module-3"].prerequisites = {"productivity-module-2", "menarite-processor"}
data.raw.technology["productivity-module-3"].unit.count = 500

data.raw.recipe["productivity-module-3"].energy_required = 15
aswil.recipes.overrideIngredients
(	
	"productivity-module-3", 
	{
		{"productivity-module-2", 1},
		{"k-processor", 2},
		{"k-ram", 4},
		{"menarite-processor", 2}
	}
)
	
------------------------------------------------
-- -- Effectivity modules

-- Effectivity module 1
data.raw.recipe["effectivity-module"].energy_required = 15
aswil.recipes.overrideIngredients
(	
	"effectivity-module", 
	{
		{"k-module-case", 1},
		{"integrated-circuit", 6},
		{"advanced-circuit", 3}
	}
)
	
-- Effectivity module 2
data.raw.technology["effectivity-module-2"].unit.count = 100

data.raw.recipe["effectivity-module-2"].energy_required = 15
aswil.recipes.overrideIngredients
(	
	"effectivity-module-2", 
	{
		{"effectivity-module", 1},
		{"k-processor", 2},
		{"k-ram", 2},
		{"processing-unit", 2}
	}
)

-- Effectivity module 3
data.raw.technology["effectivity-module-3"].prerequisites = {"effectivity-module-2", "menarite-processor"}
data.raw.technology["effectivity-module-3"].unit.count = 500
	
data.raw.recipe["effectivity-module-3"].energy_required = 15
aswil.recipes.overrideIngredients
(	
	"effectivity-module-3", 
	{
		{"effectivity-module-2", 1},
		{"k-processor", 2},
		{"k-ram", 4},
		{"menarite-processor", 2}
	}
)
