if settings.startup["reb-nuclear"] and settings.startup["reb-nuclear"].value then 

	-- Add stone and iron as waste
	data.raw.recipe["uranium-processing"].energy_required = 15
	aswil.recipes.addOrReplaceProducts
	(	
		"uranium-processing", 	
		{
			"uranium-235",
			"uranium-238",
			"iron-ore",
			"stone"
		}, 	
		{
			{
				name = "uranium-235",
				probability = 0.008,
				amount = 1
			},
			{
				name = "uranium-238",
				probability = 0.75,
				amount = 1
			},
			{
				name = "iron-ore",
				probability = 0.25,
				amount = 1
			},
			{
				name = "stone",
				probability = 0.25,
				amount = 1
			}
		}
	)

	-- Increase uranium usage and ad stone as waste
	data.raw.recipe["kovarex-enrichment-process"].ingredients = {{"uranium-235", 50}, {"uranium-238", 10}}
	data.raw.recipe["kovarex-enrichment-process"].results =
	{
		{
			name = "uranium-235",
			amount = 52
		},
		{
			name = "stone",
			amount = 6
		}
	}
	
	data.raw.recipe["nuclear-fuel-reprocessing"].ingredients = {{"used-up-uranium-fuel-cell", 1}}
	aswil.recipes.replaceProduct("nuclear-fuel-reprocessing", "uranium-238", {"uranium-238", 2})
  
    -- Heat exchanger
    data.raw["boiler"]["heat-exchanger"].max_health = 250
    data.raw["boiler"]["heat-exchanger"].target_temperature = 500
    data.raw["boiler"]["heat-exchanger"].energy_consumption = "15MW"
    data.raw["boiler"]["heat-exchanger"].energy_source.specific_heat = "1MJ"
    data.raw["boiler"]["heat-exchanger"].energy_source.max_transfer = "2GW"
	data.raw.recipe["heat-exchanger"].energy_required = 30
	aswil.recipes.overrideIngredients
	(
		"heat-exchanger", 
		{
		   {"k-steel", 50},
		   {"copper-plate", 100},
		   {"pipe", 10} 
		}
	)
   
	-- Heat pipe
    data.raw["heat-pipe"]["heat-pipe"].max_health = 100
    data.raw["heat-pipe"]["heat-pipe"].heat_buffer.specific_heat = "3MJ"
    data.raw["heat-pipe"]["heat-pipe"].heat_buffer.max_transfer = "3GW"
	aswil.recipes.overrideIngredients
	(
		"heat-pipe",
		{
		   {"k-steel", 10},
		   {"copper-plate", 20}
		}
	)
   
	-- Centrifuge
	aswil.recipes.setRecipeEnergyCost("centrifuge", 30)
	aswil.recipes.overrideIngredients
	(
		"centrifuge",
		{
		  {"concrete", 100},
		  {"k-steel", 50},
		  {"advanced-circuit", 100},
		  {"iron-gear-wheel", 100}
		}
	)
     
	-- Atomic bomb
	aswil.technologies.addPrerequisite("atomic-bomb", "menarite-processor")
	aswil.technologies.setResearchUnitCount("atomic-bomb", 7500)

	aswil.recipes.setRecipeEnergyCost("atomic-bomb", 90)
	aswil.recipes.overrideIngredients
	(
		"atomic-bomb",
		{
			{"rocket-control-unit", 10},
			{"k-tantalum-plate", 10},
			{"menarite-processor", 5},
			{"heavy-rocket", 1},
			{"rocket-fuel", 25},
			{"uranium-235", 25}
		}
	)
	
	-- Fuel
	
	data.raw.item["uranium-fuel-cell"].fuel_value = "12GJ"

	-- Steam turbine
	data.raw["generator"]["steam-turbine"].max_health = 350
	data.raw["generator"]["steam-turbine"].maximum_temperature = 500
    data.raw["generator"]["steam-turbine"].effectivity = 2
    data.raw["generator"]["steam-turbine"].fluid_usage_per_tick = 1
    data.raw["generator"]["steam-turbine"].fluid_box.minimum_temperature = 250.0
	aswil.recipes.addIngredient("steam-turbine", {"k-steel", 100})
	
	-- Nuclear reactor
	-- stat
    data.raw["reactor"]["nuclear-reactor"].minable = {hardness = 1, mining_time = 1, result = "nuclear-reactor"}
    data.raw["reactor"]["nuclear-reactor"].max_health = 1000
    data.raw["reactor"]["nuclear-reactor"].consumption = "60MW"
    data.raw["reactor"]["nuclear-reactor"].energy_source.effectivity = 1
	data.raw["reactor"]["nuclear-reactor"].heat_buffer.specific_heat = "30MJ"
    data.raw["reactor"]["nuclear-reactor"].heat_buffer.max_transfer = "30GW"
	data.raw["reactor"]["nuclear-reactor"].neighbour_bonus = 0.5
	data.raw.item["nuclear-reactor"].stack_size = 1 
  	
	-- recipe
	aswil.recipes.setRecipeEnergyCost("nuclear-reactor", 1500)
	aswil.recipes.overrideIngredients
	(
		"nuclear-reactor",
		{
			{"concrete", 500},
			{"k-steel", 400},
			{"pipe", 100},
			{"advanced-circuit", 200},
			{"processing-unit", 200},
			{"copper-plate", 200}
		}
	)
	
	-- meltdown addition
	data.raw["reactor"]["nuclear-reactor"].meltdown_action.action_delivery.target_effects =
	{
		{
			repeat_count = 200,
			type = "create-trivial-smoke",
			smoke_name = "nuclear-smoke",
			offset_deviation = {{-1, -1}, {1, 1}},
			starting_frame = 3,
			starting_frame_deviation = 5,
			starting_frame_speed = 0,
			starting_frame_speed_deviation = 5,
			speed_from_center = 0.5
		},
		{
			type = "create-entity",
			entity_name = "big-explosion"
		},
		{
			type = "damage",
			damage = {amount = 500, type = "explosion"}
		},
		{
			type = "create-entity",
			entity_name = "small-scorchmark",
			check_buildability = true
		},
		{
			type = "nested-result",
			action =
			{
				type = "area",
				target_entities = false,
				trigger_from_target = true,
				repeat_count = 3000,
				radius = 128,
				action_delivery =
				{
					type = "projectile",
					projectile = "atomic-bomb-wave",
					starting_speed = 0.35
				}
			}
		}
	}		
	
end