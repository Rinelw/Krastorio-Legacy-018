-- -- -- CONFIGURATION
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------- 
--[[
lg_s                 -- character logistic slot
lr_s                 -- lab research speed
tank_s               -- new tank/new tank unlocking
singularity_beacon_s -- singularity beacon
am_s                 -- am advance assembler
--]]

if not (mods["IndustrialRevolution"] or mods["bobrevamp"]) and settings.startup["reb-technology"].value then
	-- character logistic slot
	lg_s = 
	{
		{"logistic-research-data", 1},
		{"optimization-research-data", 1}
	}
	-- lab research speed	
	lr_s = 
	{
		{"scientific-research-data", 1},
		{"optimization-research-data", 1},
		{"logistic-research-data", 1},
		{"automation-research-data", 1},
		{"chemical-research-data", 1}
	}
	-- new tank
	tank_s = 
	{
		{"automation-research-data", 1},
		{"logistic-research-data", 1},
		{"chemical-research-data", 1},
		{"military-research-data", 1},
		{"scientific-research-data", 1}
	}	
	-- singularity-beacon
	singularity_beacon_s = 
	{
		{"automation-research-data", 1},
		{"logistic-research-data", 1},
		{"scientific-research-data", 1}
	}		
	-- advance assembler
	am_s = 
	{
		{"chemical-research-data", 1},
		{"military-research-data", 1},
		{"scientific-research-data", 1}
	}	
else
	-- character logistic slot
	lg_s = 
	{
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1}
	}
	-- lab research speed
	lr_s = 
	{
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1}
	}
	-- new tank
	tank_s = 
	{
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
		{"military-science-pack", 1},
        {"production-science-pack", 1},
		{"utility-science-pack", 1}
	}
	-- singularity-beacon
	singularity_beacon_s = 
	{
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
	}
	-- advance assembler
	am_s = 
	{
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
		{"military-science-pack", 1},
        {"production-science-pack", 1},
		{"utility-science-pack", 1}
	}
end
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

-- -- -- VANILLA CHAINED TECHNOLOGIES
-- no new technologies for now...	

-- -- -- KRASTORIO TECHNOLOGIES
data:extend(
{	
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

	-----------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------
	-- -- -- TECHNOLOGIES THAT USE VANILLA SCIENCE PACKS

	-- -- RED-GREEN / AUTO LOGISTIC
	
	-- electric-mining-drill-mk2
	{
		type = "technology",
		name = "electric-mining-drill-mk2",
		icon_size = 128,
		icon = "__Krastorio__/graphics/technology/electric-mining-drill-mk2.png",
		upgrade = false,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "electric-mining-drill-mk2"
			}
		},
		prerequisites = {"carbon-steel-processing"},
		unit = 		
		{
			count = 350,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 60
		}		
	},
	
	-----------------------------------------------------------------------------------------------------------------
	
	-- Flare stack and his recipes
	{
		type = "technology",
		name = "k-flare-stack",
		icon = "__Krastorio__/graphics/technology/flare-stack.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-flare-stack"
			}
		},
		prerequisites = {"sulfur-processing"},
		unit =
		{
		  count = 100,
		  ingredients = 
		  {
			  {"automation-science-pack", 1},
			  {"logistic-science-pack", 1}
		  },
		  time = 30
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "reinforced-plate",
		icon = "__Krastorio__/graphics/technology/reinforced-plate.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "reinforced-plate"
			},
			{
				type = "unlock-recipe",
				recipe = "black-reinforced-plate"
			}
		},
		prerequisites = {"carbon-steel-processing", "concrete"},
		order = "a-d-d",
		unit =
		{
			count = 350,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 30
		}
    },
	
	-----------------------------------------------------------------------------------------------------------------
	
	-- Liquid evaporator and his recipes
	{
		type = "technology",
		name = "k-liquid-evaporator",
		icon = "__Krastorio__/graphics/technology/liquid-evaporator.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-liquid-evaporator"
			}
		},
		prerequisites = {"sulfur-processing"},
		unit =
		{
			count = 100,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 30
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------
	
	-- new storage big chest and warehouse, not logistic yet
	{
		type = "technology",
		name = "advanced-storage",
		icon = "__Krastorio__/graphics/technology/as.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-medium-g"
			},
			{
				type = "unlock-recipe",
				recipe = "k-big-g"
			}
		},
		prerequisites = {"logistic-science-pack", "carbon-steel-processing"},
		unit =
		{
			count = 300,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 30
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "k-filtration-plant",
		icon = "__Krastorio__/graphics/technology/filtration-plant.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-filtration-plant"
			},
			{
				type = "unlock-recipe",
				recipe = "dirty-water-filtration-1"
			},
			{
				type = "unlock-recipe",
				recipe = "dirty-water-filtration-2"
			},
			{
				type = "unlock-recipe",
				recipe = "water-filtration"
			},
			{
				type = "unlock-recipe",
				recipe = "sand-filtration"
			},
			{
				type = "unlock-recipe",
				recipe = "salt-water-production"
			}
		},
		prerequisites = {"fluid-handling"},
		unit =
		{
			count = 350,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 60
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	-- Enriched ores, copper and iron
	{
		type = "technology",
		name = "enriched-ore",
		icon = "__Krastorio__/graphics/technology/enriched-ore.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "enriched-iron"
			},
			{
				type = "unlock-recipe",
				recipe = "enriched-copper"
			},
			{
				type = "unlock-recipe",
				recipe = "iron-plate-2"
			},
			{
				type = "unlock-recipe",
				recipe = "copper-plate-2"
			}
		},
		prerequisites = {"sulfur-processing"},
		unit =
		{
			count = 250,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 60
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "k-steel-pickaxe",
		icon_size = 128,
		icon = "__Krastorio__/graphics/technology/pickaxe-2.png",
		effects =
		{
			{
				type = "character-mining-speed",
				modifier = 0.5
			}
		},
		prerequisites = {"steel-axe", "carbon-steel-processing"},
		order = "c-c-a",
		unit =
		{
			count = 100,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 30
		}
	},
	
	-----------------------------------------------------------------------------------------------------------------

    {
        type = "technology",
        name = "k-silicon-processing",
        icon = "__Krastorio__/graphics/technology/silicon-processing.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "k-silicon"
            },
            {
                type = "unlock-recipe",
                recipe = "sand-to-quartz"
            }
        },
        prerequisites = {"automation-2"},
		order = "c-a",
        unit =
        {
            count = 150,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 30
        }
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "carbon-steel-processing",
		icon = "__Krastorio__/graphics/technology/carbon-steel-processing.png",
		icon_size = 128,
		prerequisites = {"k-silicon-processing"},
		order = "c-a",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "steel-billet"
			},
			{
				type = "unlock-recipe",
				recipe = "k-steel"
			},
			{
				type = "unlock-recipe",
				recipe = "steel-gear-wheel"
			},
			{
				type = "unlock-recipe",
				recipe = "steel-pipe"
			},
			{
				type = "unlock-recipe",
				recipe = "steel-pipe-to-ground"
			}
		},
		unit =
		{
			count = 200,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 30
		}
    },
	
	-----------------------------------------------------------------------------------------------------------------

	-- -- GREY / MILITARY
	
	{
		type = "technology",
		name = "reinforced-wall",
		icon = "__Krastorio__/graphics/technology/reinforced-wall.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-wall"
			}
		},
		prerequisites = {"military-science-pack", "stone-walls", "carbon-steel-processing"},
		order = "f-d-d",
		unit =
		{
			count = 250,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1}
			},
			time = 30
		}
    },
	
	{
		type = "technology",
		name = "reinforced-gate",
		icon = "__Krastorio__/graphics/technology/reinforced-gate.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-gate"
			}
		},
		prerequisites = {"military-science-pack", "gates", "carbon-steel-processing", "reinforced-wall"},
		order = "f-d-d",
		unit =
		{
			count = 250,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1}
			},
			time = 30
		}
    },
		
	-----------------------------------------------------------------------------------------------------------------
	
	-- -- BLUE / CHEMICAL
	
	{
		type = "technology",
		name = "k-gold-processing",
		icon = "__Krastorio__/graphics/technology/gold-processing.png",
		icon_size = 128,
		prerequisites = {"sulfur-processing", "k-filtration-plant", "k-electrolysis-plant"},
		order = "c-a",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "gold-plate"
			},
			{
				type = "unlock-recipe",
				recipe = "k-gold-foil"
			}
		},
		unit =
		{
			count = 200,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 30
		}
    },	
	
	-----------------------------------------------------------------------------------------------------------------
			
	-- Air filter
	{
		type = "technology",
		name = "kr-air-filter",
		icon = "__Krastorio__/graphics/technology/air-filter.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "kr-air-filter"
			},
			{
				type = "unlock-recipe",
				recipe = "k-air-separation"
			}
		},
		prerequisites = {"fluid-handling", "chemical-science-pack"},
		unit =
		{
			count = 250,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 30
		},
    },
	
	----------------------------------------------------------------------------------------------------------------- 
		
	{
		type = "technology",
		name = "advanced-fluid-handling",
		icon = "__Krastorio__/graphics/technology/fs-200.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "fs-50"
			},
			{
				type = "unlock-recipe",
				recipe = "fs-200"
			},
			{
				type = "unlock-recipe",
				recipe = "steel-pump"
			},
		},
		prerequisites = {"fluid-handling", "chemical-science-pack"},
		order = "e-d-d",
		unit =
		{
			count = 500,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 30
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------
		
	-- electrolysis technologies
	{
		type = "technology",
		name = "k-electrolysis-plant",
		icon = "__Krastorio__/graphics/technology/electrolysis-plant.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-electrolysis-plant"
			},
			{
				type = "unlock-recipe",
				recipe = "salt-water-electrolysis"
			},
			{
				type = "unlock-recipe",
				recipe = "pure-water-electrolysis"
			},   
		},
		prerequisites = {"k-filtration-plant", "chemical-science-pack"},
		unit =
		{
			count = 250,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 30
		},
    },
	
	----------------------------------------------------------------------------------------------------------------- 
	
	{
		type = "technology",
		name = "k-advanced-chemistry",
		icon = "__Krastorio__/graphics/technology/advanced-chemistry.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-ammonia"
			},
			{
				type = "unlock-recipe",
				recipe = "k-nitric-acid"
			}
		},
		prerequisites = {"k-electrolysis-plant", "kr-air-filter", "sulfur-processing"},
		unit =
		{
			count = 350,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 60
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "k-air-purifier",
		icon = "__Krastorio__/graphics/technology/air-purifier.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-air-purifier"
			},
			{
				type = "unlock-recipe",
				recipe = "k-filter"
			},
			{
				type = "unlock-recipe",
				recipe = "air-cleaning"
			},
			{
				type = "unlock-recipe",
				recipe = "k-refill-filter"
			}
		},
		prerequisites = {"chemical-science-pack", "k-filtration-plant", "engine"},
		order = "a-e-d",
		unit =
		{
			count = 250,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 30
		}
    },
	
	-----------------------------------------------------------------------------------------------------------------
	
	-- YELLOW / UTILITY	

	{
		type = "technology",
		name = "k-advanced-chemical-plant",
		icon = "__Krastorio__/graphics/technology/advanced-chemical-plant.png",
		icon_size = 128,	
		order = "e-d-d",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-advanced-chemical-plant"
			}
		},
		prerequisites = {"advanced-assembler"},
		unit =
		{
			count = 750,
			ingredients = 
			{
				{"chemical-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		},
    },
	
	----------------------------------------------------------------------------------------------------------------- 
		
	-----------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------------------------------	
	
	-- -- -- TECHNOLOGIES THAT USE KRASTORIO SCIENCE PACKS
	
	-- -- RED-GREEN RESEARCH DATA
	
	{
		type = "technology",
		name = "k-multifunctional-furnace",
		icon_size = 128,
		icon = "__Krastorio__/graphics/technology/multifunctional-electric-furnace.png",
		order = "e-e-d",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-multifunctional-furnace"
			},
			{
				type = "unlock-recipe",
				recipe = "k-steel-2"
			},
			{
				type = "unlock-recipe",
				recipe = "k-steel-3"
			},
			{
				type = "unlock-recipe",
				recipe = "k-iron-beam-2"
			}
		},
		prerequisites = {"advanced-material-processing-2", "advanced-electronics-2"},
		unit =
		{
			count = 250,
			ingredients =
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1}
			},
			time = 60
		},
	},
	
	----------------------------------------------------------------------------------------------------------------- 
	
	{
		type = "technology",
		name = "advanced-logistic-system",
		icon = "__Krastorio__/graphics/technology/als.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-medium-s"
			},
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
				recipe = "k-medium-pp"
			},
			{
				type = "unlock-recipe",
				recipe = "k-medium-ap"
			},
			{
				type = "unlock-recipe",
				recipe = "k-big-s"
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
			},
			{
				type = "unlock-recipe",
				recipe = "k-big-pp"
			} 
		},
		prerequisites = {"advanced-storage", "logistic-system"},
		order = "e-d-d",
		unit =
		{
			count = 500,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1}
			},
			time = 45
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------
	
	{
		type = "technology",
		name = "advanced-robotics",
		icon = "__Krastorio__/graphics/technology/drone-hub.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "drone-hub"
			}
		},
		prerequisites = {"construction-robotics", "advanced-electronics-2"},
		order = "e-d-d",
		unit =
		{
			count = 750,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1}
			},
			time = 45
		},
	},
	
	----------------------------------------------------------------------------------------------------------------- 
	
	{
		type = "technology",
		name = "drone-charging-station",
		icon = "__Krastorio__/graphics/technology/drone-charging-station.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "drone-charging-station"
			}
		},
		prerequisites = {"advanced-robotics"},
		order = "e-d-d",
		unit =
		{
			count = 350,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1}
			},
			time = 45
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "k-minerals-extraction",
		icon = "__Krastorio__/graphics/technology/minerals-extraction.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-big-drill"
			},
			{
				type = "unlock-recipe",
				recipe = "k-s-drill-head"
			},
			{
				type = "unlock-recipe",
				recipe = "k-t-drill-head"
			},
			{
				type = "unlock-recipe",
				recipe = "k-titanium-plate"
			},
			{
				type = "unlock-recipe",
				recipe = "k-tantalum-plate"
			}
		},
		prerequisites = {"k-multifunctional-furnace"},
		order = "a-d-d",
		unit =
		{
			count = 500,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1}
			},
			time = 60
		}
    },
	
	-----------------------------------------------------------------------------------------------------------------

	-- Rich rocks processing
	{
		type = "technology",
		name = "rich-rocks-processing",
		icon = "__Krastorio__/graphics/technology/rich-rocks-processing.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "raw-chunk-sorting"
			},
			{
				type = "unlock-recipe",
				recipe = "k-stone-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "raw-ores-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "raw-minerals-processing"
			}
		},
		prerequisites = {"imersite-processing-1", "menarite-processing-1"},
		order = "e-e-e",
		unit =
		{
			count = 500,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1},
				{"chemical-research-data", 1}
			},
			time = 60
		},
    },
	
	----------------------------------------------------------------------------------------------------------------- 
	
	-- -- GREY / MILITARY RESEARCH DATA
	
	{
		type = "technology",
		name = "railgun-turret",
		icon = "__Krastorio__/graphics/technology/railgun-turret.png",
		icon_size = 128,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "railgun-turret"
			},
			{
				type = "unlock-recipe",
				recipe = "basic-railgun-shell"
			},
			{
				type = "unlock-recipe",
				recipe = "explosion-railgun-shell"
			}
		},
		prerequisites = {"tanks", "turrets"}, 
		order = "f-d-d",
		unit =
		{
			count = 500,
			ingredients = 
			{
				{"automation-research-data",1},
				{"military-research-data", 1}
			},
			time = 60
		},
    },
	
	----------------------------------------------------------------------------------------------------------------- 
	
	-- -- BLUE / SCIENTIFIC RESEARCH DATA
	
	{
		type = "technology",
		name = "menarite-processing-1",
		icon = "__Krastorio__/graphics/technology/menarite-processing.png",
		icon_size = 128,
		prerequisites = {"k-minerals-extraction"},
		order = "e-d-d",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "raw-menarite-processing-1"
			},
			{
				type = "unlock-recipe",
				recipe = "menarite"
			},
			{
				type = "unlock-recipe",
				recipe = "k-m-drill-head"
			},
			{
				type = "unlock-recipe",
				recipe = "k-titanium-plate-2"
			}
		},
		unit =
		{
			count = 500,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1},
				{"chemical-research-data", 1}
			},
			time = 60
		},
    },
	
	----------------------------------------------------------------------------------------------------------------- 
	
	{
		type = "technology",
		name = "imersite-processing-1",
		icon = "__Krastorio__/graphics/technology/imersite-processor.png",
		icon_size = 128,
		prerequisites = {"k-minerals-extraction"},
		order = "e-d-d",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "raw-imersite-processing-1"
			},
			{
				type = "unlock-recipe",
				recipe = "imersite"
			},
			{
				type = "unlock-recipe",
				recipe = "k-i-drill-head"
			},
			{
				type = "unlock-recipe",
				recipe = "k-tantalum-plate-2"
			}
		},
		unit =
		{
			count = 750,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1},
				{"chemical-research-data", 1}
			},
			time = 60
		},
    },
	
	----------------------------------------------------------------------------------------------------------------- 
	
	{
		type = "technology",
		name = "k-titanium-pickaxe",
		icon_size = 128,
		icon = "__Krastorio__/graphics/technology/pickaxe-3.png",
		effects =
		{
			{
				type = "character-mining-speed",
				modifier = 0.5
			}
		},
		prerequisites = {"k-steel-pickaxe", "k-minerals-extraction"},
		order = "c-c-a",
		unit =
		{
			count = 200,
			ingredients =
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1},
				{"chemical-research-data", 1}
			},
			time = 30
		}
	},
	
	-----------------------------------------------------------------------------------------------------------------

    {
		type = "technology",
		name = "menarite-processor",
		icon_size = 128,
		icon = "__Krastorio__/graphics/technology/advanced-electronics-3.png",
		prerequisites = {"utility-science-pack", "production-science-pack", "menarite-processing-1"},
		order = "a-d-c",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "menarite-processor"
			},
			{
				type = "unlock-recipe",
				recipe = "menarite-wafer"
			},
			{
				type = "unlock-recipe",
				recipe = "k-research-server-mk2"
			},
			{
				type = "unlock-recipe",
				recipe = "scientific-research-data"
			},
			{
				type = "unlock-recipe",
				recipe = "k-dewar"
			},
			{
				type = "unlock-recipe",
				recipe = "k-liquid-nitrogen"
			}	  
		},
		unit =
		{
			count = 1000,
			ingredients =
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1},
				{"chemical-research-data", 1}
			},
			time = 30
		}
    },
	
	-----------------------------------------------------------------------------------------------------------------
	
	--electric-mining-drill-mk3
	{
		type = "technology",
		name = "electric-mining-drill-mk3",
		icon_size = 128,
		icon = "__Krastorio__/graphics/technology/electric-mining-drill-mk3.png",
		upgrade = false,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "electric-mining-drill-mk3"
			}
		},
		prerequisites = {"electric-mining-drill-mk2", "imersite-processing-1"},
		order = "e-d-e",
		unit = 		
		{
			count = 500,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1},
				{"chemical-research-data", 1}
			},
			time = 90
		}		
	},
		
	----------------------------------------------------------------------------------------------------------------- 
	
	-- -- YELLOW / SCIENTIFIC RESEARCH DATA
	
	{
		type = "technology",
		name = "menarite-processing-2",
		icon = "__Krastorio__/graphics/technology/menarite-processing.png",
		icon_size = 128,
		prerequisites = {"menarite-processing-1", "k-advanced-chemistry", "k-advanced-chemical-plant"},
		order = "e-e-d",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "raw-menarite-processing-2"
			}		  
		},
		unit =
		{
			count = 750,
			ingredients = 
			{
				{"chemical-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		},
    },
	
	----------------------------------------------------------------------------------------------------------------- 
	
	{
		type = "technology",
		name = "imersite-processing-2",
		icon = "__Krastorio__/graphics/technology/imersite-processor.png",
		icon_size = 128,
		prerequisites = {"imersite-processing-1", "k-advanced-chemistry", "k-advanced-chemical-plant"},
		order = "e-e-d",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "raw-imersite-processing-2"
			}
		},
		unit =
		{
			count = 750,
			ingredients = 
			{
				{"chemical-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		},
    },
	
	----------------------------------------------------------------------------------------------------------------- 
	
	{
		type = "technology",
		name = "k-advanced-furnace",
		icon = "__Krastorio__/graphics/technology/advanced-furnace.png",
		icon_size = 128,
		order = "g-d-d",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-advanced-furnace"
			} 
		},
		prerequisites = {"advanced-assembler"},
		unit =
		{
			count = 750,
			ingredients = 
			{
				{"chemical-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		},
    },	
	
	----------------------------------------------------------------------------------------------------------------- 
	
	{
		type = "technology",
		name = "k-advanced-logistics",
		icon = "__base__/graphics/technology/logistics.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-transport-belt"
			},
			{
				type = "unlock-recipe",
				recipe = "k-splitter"
			},
			{
				type = "unlock-recipe",
				recipe = "k-underground-belt"
			}
		},
		prerequisites = {"k-minerals-extraction", "logistics-3", "menarite-processor"},
		order = "g-e-d",
		unit =
		{
			count = 500,
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
	
	-- new battle tank
	{
		type = "technology",
		name = "k-tank",
		icon = "__Krastorio__/graphics/technology/tank.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-tank"
			} 
		},
		prerequisites = {"railgun-turret", "k-military"},
		order = "g-e-d",
		unit =
		{
			count = 1500,
			ingredients = tank_s,
			time = 90
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	-- Matter technologies, basic recipes and basic building
	{
		type = "technology",
		name = "k-matter",
		icon = "__Krastorio__/graphics/technology/matter.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "empty-matter-stabilizer"
			},
			{
				type = "unlock-recipe",
				recipe = "stabilizer-charging"
			},
			{
				type = "unlock-recipe",
				recipe = "stabilizer-charging-station"
			},
			{
				type = "unlock-recipe",
				recipe = "matter-research-data"
			},
			{
				type = "unlock-recipe",
				recipe = "matter-factory"
			},
			{
				type = "unlock-recipe",
				recipe = "matter-assembler"
			},
			{
				type = "unlock-recipe",
				recipe = "k-experimental-data"
			}
		},
		prerequisites = {"k-quantum-computer"},
		order = "g-e-d",
		unit =
		{
			count = 1500,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1},
				{"chemical-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 90
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "advanced-assembler",
		icon = "__Krastorio__/graphics/technology/advanced-assembler.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "advanced-assembler"
			}
		},
		prerequisites = {"menarite-processor"},
		order = "g-e-d",
		unit =
		{
			count = 1000,
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

	{
		type = "technology",
		name = "singularity-beacon",
		icon = "__Krastorio__/graphics/technology/singularity-beacon.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "singularity-beacon"
			} 
		},
		prerequisites = {"effect-transmission", "menarite-processor"},
		order = "g-e-d",
		unit =
		{
			count = 500,
			ingredients = singularity_beacon_s,
			time = 60
		}
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "imersite-energy",
		icon = "__Krastorio__/graphics/technology/imersite-energy.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "imersite-glass"
			},
			{
				type = "unlock-recipe",
				recipe = "imersite-solar-panel"
			},
			{
				type = "unlock-recipe",
				recipe = "imersite-solar-panel-equipment"
			},
			{
				type = "unlock-recipe",
				recipe = "big-imersite-solar-panel-equipment"
			},		
			{
				type = "unlock-recipe",
				recipe = "imersite-battery"
			},
			{
				type = "unlock-recipe",
				recipe = "imersite-accumulator"
			}
		},
		prerequisites = {"menarite-processor", "imersite-processing-1", "solar-energy"},
		order = "g-e-d",
		unit =
		{
			count = 750,
			ingredients =
			{
				{"chemical-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 30
		}
    },
	
	-----------------------------------------------------------------------------------------------------------------
	
	{
		type = "technology",
		name = "k-fusion",
		icon = "__Krastorio__/graphics/technology/fusion-energy.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-hydrogen-chloride"
			},
			{
				type = "unlock-recipe",
				recipe = "k-lithium-chloride"
			},
			{
				type = "unlock-recipe",
				recipe = "k-tritium"
			},
			{
				type = "unlock-recipe",
				recipe = "k-lithium"
			},
			{
				type = "unlock-recipe",
				recipe = "k-dt-fuel"
			},
			{
				type = "unlock-recipe",
				recipe = "k-deuterium-oxide"
			},
			{
				type = "unlock-recipe",
				recipe = "k-fusion-reactor"
			},
			{
				type = "unlock-recipe",
				recipe = "big-turbine"				
			}
		},
		prerequisites = {"utility-science-pack", "menarite-processor"},
		order = "g-d-e",
		unit =
		{
			count = 3000,
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

	{
		type = "technology",
		name = "k-advanced-minerals-extraction",
		icon = "__Krastorio__/graphics/technology/advanced-minerals-extraction.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-advanced-big-drill"
			}
		},
		prerequisites = {"advanced-assembler"},
		order = "g-e-d",
		unit =
		{
			count = 1000,
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

	{
		type = "technology",
		name = "k-deep-mining",
		icon = "__Krastorio__/graphics/technology/deep-mining.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-deep-mining-drill"
			},
			{
				type = "unlock-recipe",
				recipe = "s-deep-mining"
			},
			{
				type = "unlock-recipe",
				recipe = "t-deep-mining"
			},
			{
				type = "unlock-recipe",
				recipe = "i-deep-mining"
			},
			{
				type = "unlock-recipe",
				recipe = "m-deep-mining"
			},
			{
				type = "unlock-recipe",
				recipe = "raw-chunk-sorting"
			},
			{
				type = "unlock-recipe",
				recipe = "k-stone-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "raw-ores-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "raw-minerals-processing"
			}			
		},
		prerequisites = {"advanced-assembler"},
		order = "g-e-d",
		unit =
		{
			count = 1000,
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

	{
		type = "technology",
		name = "rocket-turret",
		icon = "__Krastorio__/graphics/technology/rocket-turret.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "rocket-turret",
			},
			{
				type = "unlock-recipe",
				recipe = "explosion-rocket-for-turret",
			}
		},
		prerequisites = {"advanced-assembler", "rocketry", "turrets"},
		order = "f-d-d",
		unit =
		{
			count = 750,
			ingredients = 
			{
				{"automation-research-data",1},
				{"scientific-research-data", 1},
				{"military-research-data", 1}
			},
			time = 60
		}
	},
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "k-military",
		category = "advanced-assembler",
		icon_size = 128,
		icon = "__base__/graphics/technology/military.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "impulse-rifle"
			},
			{
				type = "unlock-recipe",
				recipe = "impulse-rifle-ammo"
			},
			{
				type = "unlock-recipe",
				recipe = "imersite-rounds-magazine"
			},
			{
				type = "unlock-recipe",
				recipe = "heavy-rocket-launcher"
			},
			{
				type = "unlock-recipe",
				recipe = "heavy-rocket"
			}
		},
		prerequisites = {"military-4", "imersite-energy", "energy-shield-mk2-equipment", "personal-laser-defense-equipment"},
		order = "g-d-d",
		unit =
		{
			count = 500,
			ingredients = am_s,
			time = 45
		}
	},
	
	----------------------------------------------------------------------------------------------------------------- 
	
	{
		type = "technology",
		name = "k-menarite-pickaxe",
		icon_size = 128,
		icon = "__Krastorio__/graphics/technology/pickaxe-4.png",
		effects =
		{
			{
				type = "character-mining-speed",
				modifier = 0.75
			}
		},
		prerequisites = {"k-titanium-pickaxe", "menarite-processing-1", "menarite-processor"},
		order = "g-c-a",
		unit =
		{
			count = 350,
			ingredients =
			{
				{"scientific-research-data", 1}
			},
			time = 30
		}
	},
	
	----------------------------------------------------------------------------------------------------------------- 
	
	{
		type = "technology",
		name = "k-imersite-pickaxe",
		icon_size = 128,
		icon = "__Krastorio__/graphics/technology/pickaxe-5.png",
		effects =
		{
			{
				type = "character-mining-speed",
				modifier = 0.75
			}
		},
		prerequisites = {"k-menarite-pickaxe", "imersite-processing-1"},
		order = "g-c-b",
		unit =
		{
			count = 500,
			ingredients =
			{
				{"scientific-research-data", 1}
			},
			time = 30
		}
	},
	
	-----------------------------------------------------------------------------------------------------------------

    {
		type = "technology",
		name = "new-robot-battery",
		icon = "__Krastorio__/graphics/technology/new-robot-battery.png",
		icon_size = 128,
		effects =
		{
			{
				type = "worker-robot-battery",
				modifier = 0.5
			}
		},
		prerequisites = {"imersite-energy"},
		order = "g-d-e",
		unit =
		{
			count = 2500,
			ingredients =
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1},
				{"chemical-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 30
		}
	},
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "k-quantum-computer",
		icon = "__Krastorio__/graphics/technology/quantum-computer.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "k-quantum-computer"
			}
		},
		prerequisites = {"advanced-assembler"},
		order = "g-d-e",
		unit =
		{
			count = 1000,
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
	
	-- -- PURPLE / MATTER RESEARCH DATA
	
	{
		type = "technology",
		name = "matter-assembler-plus",
		icon = "__Krastorio__/graphics/technology/matter-assembler-plus.png",
		icon_size = 128,
		effects = {},
		prerequisites = {"matter+sand-processing", "matter+stone-processing", "matter+coal-processing", "matter+oil-processing", "matter+water-processing", "matter+gold-processing", "matter+minerals-processing"},
		order = "g-e-e",
		unit =
		{
			count = 3500,
			ingredients = 
			{
				{"chemical-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "matter-converter",
		icon = "__Krastorio__/graphics/technology/matter-converter.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "matter-converter"
			},
			{
				type = "unlock-recipe",
				recipe = "k-antimatter-capsule"
			},
		},
		prerequisites = {"k-matter"},
		order = "g-e-e",
		unit =
		{
			count = 2500,
			ingredients = 
			{
				{"chemical-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "antimatter-reactor-prototype",
		icon = "__Krastorio__/graphics/technology/antimatter-reactor-prototype.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "antimatter-reactor-prototype"
			},
			{
				type = "unlock-recipe",
				recipe = "k-antimatter-power-cell"
			},
			{
				type = "unlock-recipe",
				recipe = "portable-antimaterial-core"
			}		
		},
		prerequisites = {"matter-converter", "k-fusion"},
		order = "g-e-e",
		unit =
		{
			count = 3000,
			ingredients = 
			{
				{"chemical-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "matter-is-science",
		icon = "__Krastorio__/graphics/technology/matter-is-science.png",
		icon_size = 128,
		effects = {},
		prerequisites = {"matter-assembler-plus"},
		order = "g-g-e",
		unit =
		{
			count = 5000,
			ingredients = 
			{
				{"automation-research-data", 1},
				{"logistic-research-data", 1},
				{"chemical-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "antimatter-bomb",
		icon = "__Krastorio__/graphics/technology/matter-bomb.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "antimatter-railgun-shell"
			},
			{
				type = "unlock-recipe",
				recipe = "antimatter-rocket"
			},
			{
				type = "unlock-recipe",
				recipe = "antimatter-artillery-shell"
			},
			{
				type = "unlock-recipe",
				recipe = "antimatter-rocket-for-turret"
			}
		},
		prerequisites = {"matter-converter", "atomic-bomb"},
		order = "g-e-e",
		unit =
		{
			count = 25000,
			ingredients = 
			{
				{"military-research-data", 1},
				{"chemical-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "matter+sand-processing",
		icon = "__Krastorio__/graphics/technology/matter-plus-sand.png",
		icon_size = 128,
		effects = {},
		prerequisites = {"k-matter"},
		order = "g-e-d",
		unit =
		{
			count = 1000,
			ingredients = 
			{
				{"chemical-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "matter+stone-processing",
		icon = "__Krastorio__/graphics/technology/matter-plus-stone.png",
		icon_size = 128,
		effects = {},
		prerequisites = {"k-matter"},
		order = "g-e-d",
		unit =
		{
			count = 1000,
			ingredients = 
			{
				{"chemical-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "matter+coal-processing",
		icon = "__Krastorio__/graphics/technology/matter-plus-coal.png",
		icon_size = 128,
		effects = {},
		prerequisites = {"k-matter"},
		order = "g-e-e",
		unit =
		{
			count = 1000,
			ingredients = 
			{
				{"chemical-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "matter+oil-processing",
		icon = "__Krastorio__/graphics/technology/matter-plus-oil.png",
		icon_size = 128,
		effects = {},
		prerequisites = {"k-matter"},
		order = "g-e-e",
		unit =
		{
			count = 1000,
			ingredients = 
			{
				{"chemical-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		}
    },

	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "matter+water-processing",
		icon = "__Krastorio__/graphics/technology/matter-plus-water.png",
		icon_size = 128,
		effects = 
		{
		},
		prerequisites = {"k-matter"},
		order = "g-e-e",
		unit =
		{
			count = 1000,
			ingredients = 
			{
				{"chemical-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		}
	},

	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "matter+gold-processing",
		icon = "__Krastorio__/graphics/technology/matter-plus-gold.png",
		icon_size = 128,
		effects = {},
		prerequisites = {"k-matter"},
		order = "g-e-e",
		unit =
		{
			count = 1000,
			ingredients = 
			{
				{"chemical-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		}
    },

	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "matter+uranium-processing",
		icon = "__Krastorio__/graphics/technology/matter-plus-uran.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "uranium-238-to-matter"
			}
		},
		prerequisites = {"uranium-processing", "matter-assembler-plus"},
		order = "g-e-d",
		unit =
		{
		  count = 1000,
		  ingredients = 
		  {
			  {"chemical-research-data", 1},
			  {"matter-research-data", 1},
			  {"scientific-research-data", 1}
		  },
		  time = 60
		}
    },

	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "matter+minerals-processing",
		icon = "__Krastorio__/graphics/technology/matter-plus-minerals.png",
		icon_size = 128,
		effects = {},
		prerequisites = {"k-matter"},
		order = "g-e-e",
		unit =
		{
			count = 1000,
			ingredients = 
			{
				{"chemical-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1}
			},
			time = 60
		}
    },
	
	-----------------------------------------------------------------------------------------------------------------
	
	-- -- WHITE / OPTIMIZATION RESEARCH DATA
		
	{
		type = "technology",
		name = "advanced-antimatter-reactor",
		icon = "__Krastorio__/graphics/technology/antimatter-reactor.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "antimatter-reactor"
			},
			{
				type = "unlock-recipe",
				recipe = "k-big-antimatter-power-cell"
			}
		},
		prerequisites = {"antimatter-reactor-prototype", "space-science-pack"},
		order = "g-g-f",
		unit =
		{
			count = 7000,
			ingredients = 
			{
				{"chemical-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1},
				{"optimization-research-data", 1}
			},
			time = 60
		},
    },
	
	-----------------------------------------------------------------------------------------------------------------

	{
		type = "technology",
		name = "matter-cube",
		icon = "__Krastorio__/graphics/technology/matter-cube.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "matter-cube"
			},
			{
				type = "unlock-recipe",
				recipe = "uncompress-matter"
			}
		},
		prerequisites = {"matter-converter", "space-science-pack"},
		order = "g-e-g",
		unit =
		{
		  count = 10000,
		  ingredients = 
		  {
				{"chemical-research-data", 1},
				{"matter-research-data", 1},
				{"scientific-research-data", 1},
				{"optimization-research-data", 1}
		  },
		  time = 60
		},
    },
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
})

-- -- -- Optional infinite technologies
if settings.startup["keep-infinite-technology"] and settings.startup["keep-infinite-technology"].value then
	data:extend(
	{	
		{
			type = "technology",
			name = "k-research-speed-7",
			icon_size = 128,
			icon = "__base__/graphics/technology/research-speed.png",
			effects =
			{
				{
					type = "laboratory-speed",
					modifier = 0.5
				}
			},
			prerequisites = {"research-speed-6", "space-science-pack"},
			max_level = "infinite",
			unit =
			{
				count_formula = "1000*(L - 3)",
				ingredients = lr_s,
				time = 30
			},
			upgrade = true,
			order = "c-m-d"
		}
	})
else
	data:extend(
	{	
		{
			type = "technology",
			name = "k-research-speed-7",
			icon_size = 128,
			icon = "__base__/graphics/technology/research-speed.png",
			effects =
			{
				{
					type = "laboratory-speed",
					modifier = 0.5
				}
			},
			prerequisites = {"research-speed-6", "space-science-pack"},
			unit =
			{
				count = 1000,
				ingredients = lr_s,
				time = 30
			},
			upgrade = true,
			order = "c-m-d"
		}	
	})
end
