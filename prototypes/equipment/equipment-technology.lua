-- -- -- IN VERSION 1.2.0

-- -- VEHICLE EQUIPMENT
-- Add to vanilla technologies
table.insert(data.raw.technology["electric-engine"].effects, {type="unlock-recipe", recipe="additional-engine"})
table.insert(data.raw.technology["construction-robotics"].effects, {type="unlock-recipe", recipe="vehicle-roboport"})

-- -- CHARACTER EQUIPMENTS TECNOLOGIES
-- Add to vanilla technologies
table.insert(data.raw.technology["solar-panel-equipment"].effects, {type="unlock-recipe", recipe="big-solar-panel-equipment"})

table.insert(data.raw.technology["battery-equipment"].effects, {type="unlock-recipe", recipe="small-portable-generator"})
table.insert(data.raw.technology["battery-equipment"].effects, {type="unlock-recipe", recipe="big-battery-equipment"})
table.insert(data.raw.technology["battery-mk2-equipment"].effects, {type="unlock-recipe", recipe="big-battery-mk2-equipment"})

table.insert(data.raw.technology["nuclear-power"].effects, {type="unlock-recipe", recipe="portable-nuclear-core"})

-- New technologies
data:extend(
{
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	{
		type = "technology",
		name = "advanced-additional-engine",
		icon_size = 128,
		icon = kr_technologies_icons_path .. "advanced-additional-engine.png",
		upgrade = false,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "advanced-additional-engine"
			}
		},
		prerequisites = {"electric-engine", "chemical-science-pack"},
		unit = 		
		{
			count = 150,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack",	1},
			},
			time = 30
		}
	},
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-- -- CHARACTER EQUIPMENTS TECNOLOGIES
	-- ARMORS
	-- power armor mk3
	{
		type = "technology",
		name = "power-armor-mk3",
		icon_size = 128,
		icon = kr_technologies_icons_path .. "power-armor-mk3.png",
		upgrade = false,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "power-armor-mk3"
			}
		},
		prerequisites = {"power-armor-mk2"},
		unit = 		
		{
			count = 1000,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		}
	},
-----------------------------------------------------------------------------------------------------------------
	-- power armor mk4
	{
		type = "technology",
		name = "power-armor-mk4",
		icon_size = 128,
		icon = kr_technologies_icons_path .. "power-armor-mk4.png",
		upgrade = false,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "power-armor-mk4"
			}
		},
		prerequisites = {"power-armor-mk3", "space-science-pack"},
		unit = 		
		{
			count = 1500,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1},
				{"optimization-research-data", 1}
			},
			time = 90
		}		
	},
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	-- EXOSKELETORN
	--titanium-exoskeleton-equipment
	{
		type = "technology",
		name = "titanium-exoskeleton-equipment",
		icon_size = 128,
		icon = kr_technologies_icons_path .. "titanium-exoskeleton-equipment.png",
		upgrade = false,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "titanium-exoskeleton-equipment"
			}
		},
		prerequisites = {"exoskeleton-equipment", "low-density-structure", "speed-module-2"},
		unit = 		
		{
			count = 250,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		}		
	},
-----------------------------------------------------------------------------------------------------------------	
	--advanced-exoskeleton-equipment
	{
		type = "technology",
		name = "advanced-exoskeleton-equipment",
		icon_size = 128,
		icon = kr_technologies_icons_path .. "advanced-exoskeleton-equipment.png",
		upgrade = false,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "advanced-exoskeleton-equipment"
			}
		},
		prerequisites = {"titanium-exoskeleton-equipment", "menarite-processor", "space-science-pack"},
		unit = 		
		{
			count = 500,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1},
				{"scientific-research-data", 1},
				{"optimization-research-data", 1}
			},
			time = 90
		}		
	},
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	-- NIGHT VISION
	--imersite-night-vision-equipment
	{
		type = "technology",
		name = "imersite-night-vision-equipment",
		icon_size = 128,
		icon = kr_technologies_icons_path .. "imersite-night-vision-equipment.png",
		upgrade = false,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "imersite-night-vision-equipment"
			}
		},
		prerequisites = {"night-vision-equipment", "imersite-energy"},
		unit = 		
		{
			count = 250,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1},
				{"chemical-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		}		
	},
-----------------------------------------------------------------------------------------------------------------
	-- -- UNIVERSAL EQUIPMENTS
	--BATTERIES
	{
        type = "technology",
        name = "battery-mk3-equipment",
        icon_size = 128,
        icon = kr_technologies_icons_path .. "battery-mk3-equipment.png",
        upgrade = false,
        effects = 
        {
        {
            type = "unlock-recipe",
            recipe = "battery-mk3-equipment"
        },
        {
            type = "unlock-recipe",
            recipe = "big-battery-mk3-equipment"
        }
        },
        prerequisites = {"imersite-energy", "battery-mk2-equipment", "utility-science-pack"},
        unit =
        {
            count = 500,
            ingredients = 
            {
                {"automation-research-data", 1},
                {"logistic-research-data", 1},
                {"chemical-research-data", 1},
                {"scientific-research-data", 1}
            },
            time = 60
        }
    },
	--GENERATORS
	{
		type = "technology",
		name = "portable-generator",
		icon_size = 128,
		icon = kr_technologies_icons_path .. "portable-generator.png",
		upgrade = false,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "portable-generator"
			}
		},
		prerequisites = {"battery-equipment", "chemical-science-pack"},
		unit = 		
		{
			count = 120,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack",	1},
			},
			time = 60
		}
	},
	-- PERSONAL LASERS
	-- personal-laser-defense-mk2-equipment
	{
		type = "technology",
		name = "personal-laser-defense-mk2-equipment",
		icon_size = 128,
		icon = kr_technologies_icons_path .. "personal-laser-defense-mk2-equipment.png",
		upgrade = false,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "personal-laser-defense-mk2-equipment"
			}
		},
		prerequisites = 
		{
			"menarite-processor",
			"k-military",
			"personal-laser-defense-equipment"
		},
		unit = 		
		{
			count = 500,
			ingredients = 
			{
				{"military-research-data", 1},
				{"chemical-research-data", 1},
				{"scientific-research-data", 1},
			},
			time = 60
		}		
	},
-----------------------------------------------------------------------------------------------------------------	
	{
		type = "technology",
		name = "personal-submachine-laser-defense-mk1-equipment",
		icon = kr_technologies_icons_path .. "personal-submachine-laser-defense-mk1-equipment.png",
		icon_size = 128,
		effects = 
		{
			{
				recipe = "personal-submachine-laser-defense-mk1-equipment",
				type = "unlock-recipe"
			}
		},		
		order = "g-m",
		prerequisites = 
		{
			"laser-turrets",
			"military-3",
			"low-density-structure",
			"power-armor"
		},		
		unit = 
		{
			count = 300,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"military-research-data", 1},
				{"chemical-research-data", 1},
			},
			time = 45
		}
    },
-----------------------------------------------------------------------------------------------------------------	
	{
		type = "technology",
		name = "personal-submachine-laser-defense-mk2-equipment",
		icon = kr_technologies_icons_path .. "personal-submachine-laser-defense-mk2-equipment.png",
		icon_size = 128,
		effects = 
		{
			{
				recipe = "personal-submachine-laser-defense-mk2-equipment",
				type = "unlock-recipe"
			}
		},		
		order = "g-m",
		prerequisites = 
		{
			"personal-submachine-laser-defense-mk1-equipment"
		},		
		unit = 
		{
			count = 500,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"military-research-data", 1},
				{"chemical-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		}
    },	
-----------------------------------------------------------------------------------------------------------------	
	{
		type = "technology",
		name = "personal-submachine-laser-defense-mk3-equipment",
		icon = kr_technologies_icons_path .. "personal-submachine-laser-defense-mk3-equipment.png",
		icon_size = 128,
		effects = 
		{
			{
				recipe = "personal-submachine-laser-defense-mk3-equipment",
				type = "unlock-recipe"
			}
		},		
		order = "g-m",
		prerequisites = 
		{
			"advanced-electronics",
			"k-military",
			"personal-submachine-laser-defense-mk2-equipment"
		},		
		unit = 
		{
			count = 750,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"military-research-data", 1},
				{"chemical-research-data", 1},
				{"scientific-research-data", 1}			
			},
			time = 75
		}
    },	
-----------------------------------------------------------------------------------------------------------------	
	{
		type = "technology",
		name = "personal-submachine-laser-defense-mk4-equipment",
		icon = kr_technologies_icons_path .. "personal-submachine-laser-defense-mk4-equipment.png",
		icon_size = 128,
		effects = 
		{
			{
				recipe = "personal-submachine-laser-defense-mk4-equipment",
				type = "unlock-recipe"
			}
		},		
		order = "g-m",
		prerequisites = 
		{
			"menarite-processor",
			"k-military",
			"personal-submachine-laser-defense-mk3-equipment",
			"space-science-pack"
		},		
		unit = 
		{
			count = 500,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"military-research-data", 1},
				{"chemical-research-data", 1},
				{"scientific-research-data", 1},
				{"optimization-research-data", 1}
			},
			time = 90
		}
    },	
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------	
	-- SHIELDS
	-- energy-shield-mk3-equipment
	{
		type = "technology",
		name = "energy-shield-mk3-equipment",
		icon_size = 128,
		icon = kr_technologies_icons_path .. "energy-shield-mk3-equipment.png",
		upgrade = false,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "energy-shield-mk3-equipment"
			}
		},
		prerequisites = {"energy-shield-mk2-equipment"},
		unit = 
		{			
			count = 500,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"military-research-data", 1},
				{"chemical-research-data", 1},
				{"scientific-research-data", 1},
			},
			time = 60		
		}
	},
-----------------------------------------------------------------------------------------------------------------
	-- energy-shield-mk4-equipment
	{
		type = "technology",
		name = "energy-shield-mk4-equipment",
		icon_size = 128,
		icon = kr_technologies_icons_path .. "energy-shield-mk4-equipment.png",
		upgrade = false,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "energy-shield-mk4-equipment"
			}
		},
		prerequisites = {"energy-shield-mk3-equipment", "space-science-pack"},
		unit = 
		{			
			count = 750,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"military-research-data", 1},
				{"chemical-research-data", 1},
				{"scientific-research-data", 1},
				{"optimization-research-data", 1}
			},
			time = 90			
		}
	}
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------		
})

-- -- Update old vanilla technologies graphics
data.raw.technology["energy-shield-mk2-equipment"].icon      = kr_technologies_icons_path .. "energy-shield-mk2-equipment.png"
data.raw.technology["energy-shield-mk2-equipment"].icon_size = 128

--[[
table.insert(data.raw.technology["solar-panel-equipment"].effects, {type="unlock-recipe", recipe="k-v-solar-panel"})
table.insert(data.raw.technology["automobilism"].effects, {type="unlock-recipe", recipe="k-v-generator"})
table.insert(data.raw.technology["fusion-reactor-equipment"].effects, {type="unlock-recipe", recipe="k-v-fusion-reactor"})
table.insert(data.raw.technology["nuclear-power"].effects, {type="unlock-recipe", recipe="k-v-nuclear-core"})

table.insert(data.raw.technology["battery"].effects, {type="unlock-recipe", recipe="k-v-battery-mk1"})
table.insert(data.raw.technology["advanced-electronics-2"].effects, {type="unlock-recipe", recipe="k-v-battery-mk2"})

table.insert(data.raw.technology["construction-robotics"].effects, {type="unlock-recipe", recipe="k-v-roboport"})

table.insert(data.raw.technology["laser-turrets"].effects, {type="unlock-recipe", recipe="k-v-laser-defense-mk1"})
table.insert(data.raw.technology["military-3"].effects, {type="unlock-recipe", recipe="k-v-laser-defense-mk2"})
table.insert(data.raw.technology["personal-laser-defense-equipment"].effects, {type="unlock-recipe", recipe="k-v-laser-defense-mk3"})
table.insert(data.raw.technology["military-4"].effects, {type="unlock-recipe", recipe="k-v-laser-defense-mk3"})
--]]