-- -- Technology rebalance chaining
if settings.startup["reb-technology"] and settings.startup["reb-technology"].value then

	if not mods["space-exploration"] then
	
		--------------
		-- modules
		
		data.raw.technology["speed-module-2"].unit.ingredients =
		{{"automation-research-data", 1},{"logistic-research-data", 1}}
		data.raw.technology["speed-module-3"].unit.ingredients =
		{{"automation-research-data", 1},{"logistic-research-data", 1}, {"scientific-research-data", 1}}
		
		data.raw.technology["productivity-module-2"].unit.ingredients =
		{{"automation-research-data", 1},{"logistic-research-data", 1}}
		data.raw.technology["productivity-module-3"].unit.ingredients =
		{{"automation-research-data", 1},{"logistic-research-data", 1}, {"scientific-research-data", 1}}
		
		data.raw.technology["effectivity-module-2"].unit.ingredients =
		{{"automation-research-data", 1},{"logistic-research-data", 1}}
		data.raw.technology["effectivity-module-3"].unit.ingredients =
		{{"automation-research-data", 1},{"logistic-research-data", 1}, {"scientific-research-data", 1}}
			
		--------------
		-- rocket

		data.raw.technology["rocket-silo"].unit.ingredients =
		{
			{"automation-research-data", 1},
			{"logistic-research-data", 1},
			{"chemical-research-data", 1},
			{"scientific-research-data", 1}
		}
		data.raw.technology["rocket-control-unit"].unit.count = 500
		data.raw.technology["rocket-control-unit"].unit.ingredients =
		{
			{"automation-research-data", 1},
			{"logistic-research-data", 1},
			{"chemical-research-data", 1}

		}
		data.raw.technology["space-science-pack"].unit.ingredients =
		{
			{"automation-research-data", 1},
			{"logistic-research-data", 1},
			{"chemical-research-data", 1},
			{"scientific-research-data", 1}
		}
		
		--------------
	end
		
	--------------
	-- science packs
		
	data.raw.technology["production-science-pack"].unit.count = 250
	data.raw.technology["production-science-pack"].unit.ingredients =
	{
		{"automation-research-data", 1},
		{"logistic-research-data", 1},
		{"chemical-research-data", 1},
	}
	
	data.raw.technology["utility-science-pack"].unit.count = 250
	data.raw.technology["utility-science-pack"].unit.ingredients =
	{
		{"automation-research-data", 1},
		{"logistic-research-data", 1},
		{"chemical-research-data", 1},
	}
		
	--------------
	-- military
	
	data.raw.technology["military-4"].unit.count = 500
	data.raw.technology["military-4"].unit.ingredients =
	{
		{"military-research-data", 1},
		{"scientific-research-data", 1}
	}
	
	aswil.technologies.addPrerequisite("military-4", "utility-science-pack")
		
	data.raw.technology["discharge-defense-equipment"].unit.count = 350
	data.raw.technology["discharge-defense-equipment"].unit.ingredients =
	{
		{"automation-research-data", 1},
		{"military-research-data", 1}
	}
	
	data.raw.technology["uranium-ammo"].unit.count = 350
	data.raw.technology["uranium-ammo"].unit.ingredients =
	{
		{"military-research-data", 1},
		{"scientific-research-data", 1}
	}
	
	data.raw.technology["combat-robotics-3"].unit.count = 500
	data.raw.technology["combat-robotics-3"].unit.ingredients =
	{
		{"automation-research-data", 1},
		{"logistic-research-data", 1},
		{"military-research-data", 1}
	}
	
	data.raw.technology["artillery"].unit.count = 2500
	data.raw.technology["artillery"].unit.ingredients =
	{
		{"automation-research-data", 1},
		{"military-research-data", 1},
		{"scientific-research-data", 1}
	}
	
	data.raw.technology["laser"].unit.count = 200
	
	data.raw.technology["physical-projectile-damage-7"].unit.count_formula = "((L-6)^2)*5000"
	data.raw.technology["physical-projectile-damage-7"].unit.ingredients =
	{
		{"military-research-data", 1},
		{"optimization-research-data", 1}
	}
   
	data.raw.technology["stronger-explosives-7"].unit.count_formula = "((L-6)^2)*5000"	
	data.raw.technology["stronger-explosives-7"].unit.ingredients =
	{
		{"military-research-data", 1},
		{"optimization-research-data", 1}
	}
   
	data.raw.technology["refined-flammables-7"].unit.count_formula = "((L-6)^2)*5000"
	data.raw.technology["refined-flammables-7"].unit.ingredients =
	{
		{"military-research-data", 1},
		{"optimization-research-data", 1}
	}
	   
	data.raw.technology["energy-weapons-damage-7"].unit.count_formula = "((L-6)^2)*5000"
	data.raw.technology["energy-weapons-damage-7"].unit.ingredients =
	{
		{"military-research-data", 1},
		{"optimization-research-data", 1}
	}
   
	data.raw.technology["artillery-shell-range-1"].unit.count_formula = "L^2*5000"
	data.raw.technology["artillery-shell-range-1"].unit.ingredients =
	{
		{"military-research-data", 1},
		{"optimization-research-data", 1}
	}
   
	data.raw.technology["artillery-shell-speed-1"].unit.count_formula = "L^2*75000"	
	data.raw.technology["artillery-shell-speed-1"].unit.ingredients =
	{
		{"military-research-data", 1},
		{"optimization-research-data", 1}
	}
	
	--------------
	-- miscellaneous
	
	data.raw.technology["logistic-system"].unit.count = 350
	data.raw.technology["logistic-system"].unit.ingredients =
	{
		{"automation-research-data", 1},
		{"logistic-research-data", 1},
	}
				
	data.raw.technology["coal-liquefaction"].unit.count = 200
	data.raw.technology["coal-liquefaction"].unit.ingredients =
	{
		{"automation-research-data", 1},
		{"logistic-research-data", 1},
		{"chemical-research-data", 1},
	}
		
	data.raw.technology["automation-3"].unit.count = 300
	data.raw.technology["automation-3"].unit.ingredients =
	{
		{"automation-research-data", 1},
		{"logistic-research-data", 1},
	}
				
	data.raw.technology["effect-transmission"].unit.count = 750
	data.raw.technology["effect-transmission"].unit.ingredients =
	{
		{"automation-research-data", 1},
		{"logistic-research-data", 1}
	}
				
	data.raw.technology["low-density-structure"].unit.count = 500
	data.raw.technology["low-density-structure"].unit.ingredients =
	{
		{"automation-research-data", 1},
		{"logistic-research-data", 1},
		{"chemical-research-data", 1}
	}
	
	--------------
	-- nuclear
	
	data.raw.technology["uranium-processing"].unit.count = 2500
	data.raw.technology["nuclear-power"].unit.count = 3000
	data.raw.technology["nuclear-power"].unit.ingredients =
	{
		{"automation-research-data", 1},
		{"logistic-research-data", 1},
		{"chemical-research-data", 1}
	}
		
	data.raw.technology["nuclear-fuel-reprocessing"].unit.count = 250
	data.raw.technology["nuclear-fuel-reprocessing"].unit.ingredients =
	{
		{"chemical-research-data", 1}
	}

	data.raw.technology["atomic-bomb"].unit.ingredients =
	{
		{"automation-research-data", 1},
		{"logistic-research-data", 1},
		{"chemical-research-data", 1},
		{"military-research-data", 1},
		{"scientific-research-data", 1},
	}
	
	--------------
	-- stats
	
	data.raw.technology["mining-productivity-3"].unit.count = 500
	data.raw.technology["mining-productivity-3"].unit.ingredients =
	{
		{"automation-research-data", 1},
		{"logistic-research-data", 1},
		{"scientific-research-data", 1}
	}
			
	data.raw.technology["mining-productivity-4"].unit.count_formula = "(L^2)*200"
	data.raw.technology["mining-productivity-4"].unit.ingredients =
	{
		{"scientific-research-data", 1},
		{"optimization-research-data", 1},
		{"logistic-research-data", 1},
		{"automation-research-data", 1},
		{"chemical-research-data", 1}
	}
				
	data.raw.technology["follower-robot-count-7"].unit.count_formula = "((L-6)^2)*7500"	
	data.raw.technology["follower-robot-count-7"].unit.ingredients =
	{
		{"military-research-data", 1},
		{"optimization-research-data", 1}
	}
   
	data.raw.technology["worker-robots-speed-6"].unit.count_formula = "((L-5)^2)*7500"	
	data.raw.technology["worker-robots-speed-6"].unit.ingredients =
	{
		{"logistic-research-data", 1},
		{"optimization-research-data", 1}
	}	
		
	if settings.startup["keep-infinite-technology"].value then
		data.raw.technology["physical-projectile-damage-7"].max_level = "infinite"
		data.raw.technology["stronger-explosives-7"].max_level        = "infinite"
		data.raw.technology["refined-flammables-7"].max_level         = "infinite"
		data.raw.technology["energy-weapons-damage-7"].max_level      = "infinite"
		data.raw.technology["energy-weapons-damage-7"].max_level      = "infinite"
		data.raw.technology["artillery-shell-range-1"].max_level      = "infinite"
		data.raw.technology["artillery-shell-speed-1"].max_level      = "infinite"
		data.raw.technology["mining-productivity-4"].max_level        = "infinite"
		data.raw.technology["follower-robot-count-7"].max_level       = "infinite"
		data.raw.technology["worker-robots-speed-6"].max_level        = "infinite"
	else
		data.raw.technology["physical-projectile-damage-7"].max_level = 18
		data.raw.technology["stronger-explosives-7"].max_level        = 18
		data.raw.technology["refined-flammables-7"].max_level         = 18
		data.raw.technology["energy-weapons-damage-7"].max_level      = 18
		data.raw.technology["energy-weapons-damage-7"].max_level      = 18
		data.raw.technology["artillery-shell-range-1"].max_level      = 10
		data.raw.technology["artillery-shell-speed-1"].max_level      = 5
		data.raw.technology["mining-productivity-4"].max_level        = 500
		data.raw.technology["follower-robot-count-7"].max_level       = 10
		data.raw.technology["worker-robots-speed-6"].max_level        = 9
	end
		
	--------------
	
end
