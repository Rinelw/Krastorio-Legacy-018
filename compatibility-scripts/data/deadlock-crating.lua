if mods["DeadlockCrating"] then	

	-- -- Copied from DeadlockCrating shared.lua
	---[[
	-- for calculating scales of energy, health etc.
	local function get_scale(this_tier, tiers, lowest, highest)
		return lowest + ((highest - lowest) * ((this_tier - 1) / (tiers - 1)))
	end

	-- energy use
	local function get_energy_table(this_tier, tiers, lowest, highest, passive_multiplier)
		local total = get_scale(this_tier, tiers, lowest, highest)
		local passive_energy_usage = total * passive_multiplier
		local active_energy_usage = total * (1 - passive_multiplier)
		return {
			passive = passive_energy_usage .. "KW", -- passive energy drain as a string
			active = active_energy_usage .. "KW", -- active energy usage as a string
		}
	end
	--]]
	-- Utility function
	local function add_crates(_item_set, _tech_name)
		for _, item_name in pairs(_item_set) do
			deadlock_crating.add_crate(item_name, _tech_name)
		end	
	end

	-- -- Adapting previous tier recipes
	-- Tier 2	
	data.raw.recipe["deadlock-crating-machine-1"].ingredients =
	{
		{"assembling-machine-1", 1},
		{"electric-engine-unit", 1},
		{"fast-inserter", 2},
		{"steel-plate", 20}
	}

	-- Tier 2	
	data.raw.recipe["deadlock-crating-machine-2"].ingredients = 
	{
		{"deadlock-crating-machine-1", 1},
		{"electric-engine-unit", 1},
		{"stack-inserter", 2},
		{"k-steel", 20}
	}

	-- Tier 3	
	data.raw.recipe["deadlock-crating-machine-3"].ingredients =
	{
		{"deadlock-crating-machine-2", 1},
		{"electric-engine-unit", 1},
		{"stack-inserter", 2},
		{"gold-plate", 20}
	}

	-- -- Adding new tier
	local parameters = {}
	parameters.tier = 4
	parameters.ingredients =
	{
		{"deadlock-crating-machine-2", 1},
		{"electric-engine-unit", 1},
		{"stack-inserter", 2},
		{"k-titanium-plate", 20}		
	}
	parameters.colour = {r=191, g=0, b=255, a=250}
	parameters.speed = 4
	local energy_table = get_energy_table(4, 4, 500, 1000, 0.1)
	parameters.energy = energy_table.active
	parameters.drain  = energy_table.passive
	parameters.prerequisites = {"deadlock-crating-3", "k-advanced-logistics"}
	parameters.unit =
	{
      count = 750,
      ingredients = 
	  {
			{"automation-research-data", 1},
			{"logistic-research-data", 1},
			{"scientific-research-data", 1},
	  },
      time = 60	
	}
	
	deadlock_crating.add_tier(parameters)

	-- -- Adding creates
	-- creates tecnologies:
	-- "deadlock-crating-1"
	-- "deadlock-crating-2"
	-- "deadlock-crating-3"
	
	-- Tier 1		
	local tech_name = "deadlock-crating-1"
	local item_set =
	{
		"glass",
		"k-circuit-board",
		"k-coke"
	}
	add_crates(item_set, tech_name)
	
	-- Tier 2
	tech_name = "deadlock-crating-2"
	item_set =
	{
		"k-quartz",
		"k-silicon",
		"k-silicon-wafer",
		"gold-ore",
		"gold-plate",
		"k-ram",
		"k-processor",
		"enriched-copper",
		"enriched-iron",
		"k-dewar"
	}
	add_crates(item_set, tech_name)
	
	-- Tier 3	
	tech_name = "deadlock-crating-3"
	item_set =
	{
		"k-tritium",		
		"menarite-wafer",
		"menarite-powder",
		"menarite",
		"k-titanium",
		"k-tantalum",
		"k-titanium-plate",
		"k-tantalum-plate",
		"raw-imersite",
		"imersite",
		"raw-menarite",
		"menarite",
		"menarite-processor",
		"imersite-battery",
		"imersite-glass",
		"reinforced-plate",
		"k-empty-memory-card"
	}
	add_crates(item_set, tech_name)
	
	-- -- Inter/Cross compatibility with DeadlockCrating with IndustrialRevolution
	if not mods["IndustrialRevolution"] then	

		deadlock_crating.add_crate("sand", "deadlock-crating-1")
		deadlock_crating.add_crate("k-gold-foil", "deadlock-crating-2")
		deadlock_crating.add_crate("k-module-case", "deadlock-crating-2")
		deadlock_crating.add_crate("k-steel", "deadlock-crating-2")
		deadlock_crating.add_crate("integrated-circuit", "deadlock-crating-2")
		deadlock_crating.add_crate("k-titanium-plate", "deadlock-crating-3")
		
	end
	
end