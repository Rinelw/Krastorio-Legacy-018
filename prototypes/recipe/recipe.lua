-- Variation from the chosen options
local sr1, sr2, sr3 = nil, nil, nil
if settings.startup["easy-steel"] and settings.startup["easy-steel"].value then

	sr1 = 
	{
		{"iron-ore", 16},
		{"coal", 1}
	}
	sr2 = 
	{
		{"iron-ore", 16},
		{"k-coke", 1}
	}		  
	sr3 = 
	{
		{"iron-plate", 5},
		{"k-coke", 1}
	}

else

	sr1 = 
	{
		{"iron-ore", 16},
		{"k-silicon", 1},
		{"coal", 1}
	}
	sr2 = 
	{
		{"iron-ore", 16},
		{"k-silicon", 1},
		{"k-coke", 1}
	}	  
	sr3 = 
	{
		{"iron-plate", 5},
		{"k-silicon", 1},
		{"k-coke", 1}
	}

end

-- -- New recipes added by Krastorio 
-- (this is only the not auto-generated)
-- (all vanilla recipe modification ISN'T HERE, is under folder "vanilla-modification" in prototypes)
local krastorio_recipes = 
{
-----------------------------------------------------------------------------------------------------------------
------------------------------------------------------ITEMS------------------------------------------------------
----------------------------------------------------------------------------------------------------------------- 
	{
		type = "recipe",
		name = "k-circuit-board",
		energy_required = 3,
		enabled = false,
		ingredients =
		{
			{"glass", 1},
			{"plastic-bar", 1},
			{"copper-plate", 1}
		},
		result = "k-circuit-board",
		result_count = 3
    },
	{
		type = "recipe",
		name = "integrated-circuit",
		energy_required = 3,
		enabled = false,
		ingredients =
		{
			{"copper-cable", 3},
			{"k-silicon-wafer", 1},
			{"plastic-bar", 1}
		},
		result = "integrated-circuit",
		result_count = 3
    },
	{
		type = "recipe",
		name = "k-ram",
		energy_required = 6,
		enabled = false,
		ingredients =
		{
			{"copper-cable", 3},
			{"k-silicon-wafer", 1},
			{"k-circuit-board", 1},
			{"k-gold-foil", 3}
		},
		result = "k-ram",
		result_count = 3
    },
	{
		type = "recipe",
		name = "k-processor", -- (advanced)(krastorio) processor
		energy_required = 9,
		category = "crafting-with-fluid",
		enabled = false,
		ingredients =
		{
			{"k-circuit-board", 1},
			{"k-silicon-wafer", 3},
			{"k-gold-foil", 3},
			{type="fluid", name="sulfuric-acid", amount=10}
		},
		result = "k-processor",
		result_count = 3
    },
	{
		type = "recipe",
		name = "menarite-processor",
		icon = krstr_icon_path .. "menarite-processor.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		order = "d[electronics]-d[menarite-processor]",
		energy_required = 18,
		category = "crafting-with-fluid",
		enabled = false,
		ingredients =
		{
			{"menarite-wafer", 3},
			{"k-circuit-board", 1},
			{"k-gold-foil", 3},
			{"k-liquid-nitrogen", 1},
			{type="fluid", name="sulfuric-acid", amount=10}
		},
		results = 
		{ 
			{"menarite-processor", 3}, 
			{type="item", name="k-dewar", probability = 0.95, amount=1, amount_max = 1, catalyst_amount = 1}
		}
    },
	{
		type = "recipe",
		name = "steel-billet",
		energy_required = 3,
		enabled = false,
		ingredients = sr1,
		result = "steel-billet",
		result_count = 3
    },
	-- -- Steel recipes
	-------------------
	{
		type = "recipe",
		name = "k-steel",
		category = "smelting",
		energy_required = 20,
		enabled = false,
		ingredients = 
		{
			{"steel-billet", 1}
		},
		result = "k-steel" 
    },
	{
		type = "recipe",
		name = "k-steel-2",
		category = "k-smelting",
		energy_required = 20,
		enabled = false,
		ingredients = sr2,
		result = "k-steel",
		result_count = 3
    },	
	{
		type = "recipe",
		name = "k-steel-3",
		category = "k-smelting",
		energy_required = 6.6,
		enabled = false,
		ingredients = sr3,
		result = "k-steel",
		result_count = 3
    },
	-------------------
	{
		type = "recipe",
		name = "k-iron-beam-2",
		category = "k-smelting",
		energy_required = 16,
		enabled = false,
		ingredients =
		{
			{"iron-plate", 9},
			{"k-coke", 1}
		},
		result = "steel-plate",
		result_count = 3
    },
	{
		type = "recipe",
		name = "k-silicon",
		category = "smelting",
		energy_required = 6,
		enabled = false,
		ingredients = 
		{
			{"k-quartz", 3}
		},
		result = "k-silicon"
    },
	{
		type = "recipe",
		name = "k-titanium-plate",
		category = "smelting",
		energy_required = 25,
		enabled = false,
		ingredients = 
		{
			{"raw-menarite", 5}, 
			{"k-coke", 2}
		},
		result = "k-titanium-plate" 
    },
	{
		type = "recipe",
		name = "k-tantalum-plate",
		category = "smelting",
		energy_required = 30,
		enabled = false,
		ingredients = 
		{
			{"raw-imersite", 5}, 
			{"k-coke", 2}
		},
		result = "k-tantalum-plate" 
    },
	{
		type = "recipe",
		name = "k-silicon-wafer",
		energy_required = 5,
		enabled = false,
		ingredients =
		{
			{"k-silicon", 1}
		},
		result = "k-silicon-wafer",
		result_count = 3
    },
	{
		type = "recipe",
		name = "menarite-wafer",
		energy_required = 5,
		enabled = false,
		ingredients =
		{
			{"menarite-powder", 3},
			{"k-silicon", 1},
			{"iron-ore", 1}
		},
		result = "menarite-wafer",
		result_count = 3
    },
	{
		type = "recipe",
		name = "gold-plate",
		category = "smelting",
		energy_required = 10,
		enabled = false,
		ingredients = 
		{
			{"gold-ore", 3}
		},
		result = "gold-plate" 
    },
	{
		type = "recipe",
		name = "k-gold-foil",
		energy_required = 1,
		enabled = false,
		ingredients = 
		{
			{"gold-plate", 1}
		},
		result = "k-gold-foil",
		result_count = 10
    },
	{
		type = "recipe",
		name = "k-module-case",
		enabled = false,
		ingredients =
		{
			{"k-circuit-board", 1},
			{"copper-plate", 1},
			{"glass", 3},
			{"plastic-bar", 3}
		},
		energy_required = 15,
		result = "k-module-case"
	},
	{
		type = "recipe",
		name = "k-coke",
		category = "coke-smelting",
		energy_required = 6,
		enabled = false,
		ingredients =
		{
			{"coal", 10}
		},
		result = "k-coke",
		result_count = 6
	},
	{
		type = "recipe",
		name = "k-rocket-fuel",
		localised_name = {"other.krastorio-recipe-variation", {"item-name.rocket-fuel"}},
		icons = 
		aswil.icons.createOverlappedIcon
		(
			1, 
			"__base__/graphics/icons/rocket-fuel.png", 
			32, 
			"__KrastorioPorted__/graphics/k.png", 
			64
		),
		category = "chemistry",
		energy_required = 20,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="light-oil", amount=80},
			{type="fluid", name="k-oxygen", amount=100}
		},
		result= "rocket-fuel"
	},
	{
		type = "recipe",
		name = "enriched-iron",
		category = "chemistry",
		icon = "__KrastorioPorted__/graphics/icons/enriched-iron.png",
		icon_size = 32,
		energy_required = 3,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="sulfuric-acid", amount=3},
			{type="fluid", name="water", amount=25},
			{type="item", name="iron-ore", amount=9}
		},
		results =
		{ 
			{type="item", name="enriched-iron", amount=6},
			{type="fluid", name="k-dirty-water", amount=25}
		},
		crafting_machine_tint =
		{
			primary = {r = 0.25, g = 0.50, b = 0.65, a = 0.200},
			secondary = {r = 0.50, g = 0.70, b = 0.90, a = 0.357},
			tertiary = {r = 0.10, g = 0.25, b = 0.50, a = 0.100}, 
			quaternary = {r = 0.25, g = 0.50, b = 0.65, a = 0.850}
		},
		subgroup = "raw-material",
		order = "e02[enriched-iron]"
	},
	{
		type = "recipe",
		name = "k-ammonia",
		icon = "__KrastorioPorted__/graphics/icons/ammonia.png",
		icon_size = 32,
		category = "chemistry",
		energy_required = 3,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="k-hydrogen", amount=50},
			{type="fluid", name="k-nitrogen", amount=50}
		},
		results =
		{ 
			{type="fluid", name="k-ammonia", amount=50}
		},
		crafting_machine_tint =
		{
			primary = {r = 0.106, g = 0.000, b = 0.50, a = 0.250},
			secondary = {r = 0.200, g = 0.000, b = 0.690, a = 0.127},
			tertiary = {r = 0.210, g = 0.000, b = 0.75, a = 0.350}, 
			quaternary = {r = 0.106, g = 0.000, b = 0.50, a = 0.900}
		},
		subgroup = "raw-material",
		order = "y03[enriched-copper]"
	},
	{
		type = "recipe",
		name = "k-nitric-acid",
		icon = "__KrastorioPorted__/graphics/icons/nitric-acid.png",
		icon_size = 32,
		category = "chemistry",
		energy_required = 3,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="k-ammonia", amount=50},
			{type="fluid", name="k-oxygen", amount=50}
		},
		results =
		{ 
			{type="fluid", name="k-nitric-acid", amount=50},
			{type="fluid", name="k-pure-water", amount=10}
		},
		crafting_machine_tint =
		{
			primary = {r = 0.800, g = 0.000, b = 0.100, a = 0.200},
			secondary = {r = 0.500, g = 0.100, b = 0.300, a = 0.357},
			tertiary = {r = 0.430, g = 0.000, b = 0.450, a = 0.200}, 
			quaternary = {r = 0.800, g = 0.000, b = 0.100, a = 0.900}
		},
		subgroup = "raw-material",
		order = "y04[enriched-copper]"
	},
	{
		type = "recipe",
		name = "menarite",
		category = "chemistry",
		icon = "__KrastorioPorted__/graphics/icons/menarite.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		order = "q1[menarite]",
		energy_required = 20,
		enabled = false,
		ingredients =
		{
			{"menarite-powder", 6}
		},
		result = "menarite",
		crafting_machine_tint = 
		{
			primary = {r = 0.25, g = 0.50, b = 0.65, a = 0.150},
			secondary = {r = 0.50, g = 0.70, b = 0.90, a = 0.357},
			tertiary = {r = 0.10, g = 0.25, b = 0.50, a = 0.100}, 
			quaternary = {r = 0.25, g = 0.50, b = 0.65, a = 0.900}
		}
	},
	{
		type = "recipe",
		name = "imersite",
		category = "chemistry",
		icon = "__KrastorioPorted__/graphics/icons/imersite.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		order = "q2[imersite]",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"imersite-powder", 6}
		},
		result = "imersite",
		crafting_machine_tint = 
		{
			primary = {r = 0.882, g = 0.337, b = 0.890, a = 0.200},
			secondary = {r = 0.90, g = 0.30, b = 0.25, a = 0.357},
			tertiary = {r = 0.623, g = 0.270, b = 0.631, a = 0.100}, 
			quaternary = {r = 0.882, g = 0.337, b = 0.890, a = 0.900}
		}
	},
	{
		type = "recipe",
		name = "iron-plate-2",
		category = "smelting",
		energy_required = 3,
		enabled = false,
		ingredients = 
		{
			{"enriched-iron", 1}
		},
		result = "iron-plate" 
    },	
	{
		type = "recipe",
		name = "copper-plate-2",
		category = "smelting",
		energy_required = 3,
		enabled = false,
		ingredients = 
		{
			{"enriched-copper", 1}
		},
		result = "copper-plate" 
    },		
	{
		type = "recipe",
		name = "k-titanium-plate-2",
		category = "smelting",
		energy_required = 15,
		enabled = false,
		ingredients = 
		{
			{"k-titanium", 4}, 
			{"k-coke", 2}
		},
		result = "k-titanium-plate" 
    },		
	{
		type = "recipe",
		name = "k-tantalum-plate-2",
		category = "smelting",
		energy_required = 15,
		enabled = false,
		ingredients = 
		{
			{"k-tantalum", 4}, 
			{"k-coke", 2}
		},
		result = "k-tantalum-plate" 
    },
	{
		type = "recipe",
		name = "k-deuterium-oxide",
		category = "k-electrolysis-plant",
		icon = "__KrastorioPorted__/graphics/icons/k-deuterium-oxide.png",
		icon_size = 32,
		energy_required = 120,
		enabled = false,
		ingredients = 
		{
			{type="fluid", name="k-pure-water", amount=250}
		},
		results=
		{
			{type="item", name="k-deuterium-oxide", amount=1}
		},
		subgroup = "intermediate-product",
		order = "10[k-deuterium-oxide]"
    },
	{
		type = "recipe",
		name = "k-dewar",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"glass", 2},
			{"k-steel", 1},
			{"k-gold-foil", 5}
		},
		result = "k-dewar"
    },	
	{
		type = "recipe",
		name = "k-liquid-nitrogen",
		category = "chemistry",
		energy_required = 3,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="k-nitrogen", amount=180},
			{type="item", name="k-dewar", amount=1}
		},
		result = "k-liquid-nitrogen",
		crafting_machine_tint = 
		{
			primary = {r = 0.101, g = 0.188, b = 0.839, a = 0.000},
			secondary = {r = 0.50, g = 0.70, b = 0.90, a = 0.357},
			tertiary = {r = 0.10, g = 0.25, b = 0.50, a = 0.750}, 
			quaternary = {r = 0.101, g = 0.188, b = 0.839, a = 0.900}
		}
    },
	{
		type = "recipe",
		name = "k-dt-fuel",
		energy_required = 60,
		category = "chemistry",
		enabled = false,
		ingredients =
		{
			{type="item", name="k-deuterium-oxide", amount=6},
			{type="item", name="k-tritium", amount=2}
		},
		result = "k-dt-fuel",
		crafting_machine_tint = 
		{
			primary = {r = 0.800, g = 0.776, b = 0.313, a = 0.000},
			secondary = {r = 0.200, g = 0.680, b = 0.300, a = 0.350},
			tertiary = {r = 0.430, g = 0.305, b = 0.2, a = 0.750}, 
			quaternary = {r = 0.800, g = 0.776, b = 0.313, a = 0.900}
		}
    },
	{
		type = "recipe",
		name = "empty-matter-stabilizer",
		energy_required = 20,
		enabled = false,
		ingredients =
		{
			{"menarite-processor", 1},
			{"k-tantalum-plate", 5},
			{"plastic-bar", 3},
			{"gold-plate", 1},
			{"imersite", 1},
			{"imersite-battery", 2}
		},
		result = "empty-matter-stabilizer",	
		subgroup = "intermediate-product",
		order = "z3[matter-stabilizer]"
    },
	{
		type = "recipe",
		name = "k-antimatter-capsule",
		category = "matter-converter",
		icon = "__KrastorioPorted__/graphics/icons/antimatter-capsule.png",
		icon_size = 32,
		energy_required = 20,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="k-matter", amount=100},
			{type="item", name="k-tantalum-plate", amount=1},
			{type="item", name="menarite-processor", amount=1},
			{type="item", name="matter-stabilizer", amount=1},
			{type="item", name="imersite", amount=1},
			{type="item", name="k-liquid-nitrogen", amount=1}
		},
		results =
		{
			{type="item", name="k-antimatter-capsule", amount=1},
			{type="item", name="empty-matter-stabilizer", probability = 0.90, amount=1},
			{type="item", name="k-dewar", amount = 1}
		},
		subgroup = "intermediate-product",
		order = "z05[matter-power-cell]"
    },
	{
		type = "recipe",
		name = "k-antimatter-power-cell",
		category = "matter-converter",
		icon = "__KrastorioPorted__/graphics/icons/antimatter-power-cell.png",
		icon_size = 32,
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="k-matter", amount=200},
			{type="item", name="k-tantalum-plate", amount=5},
			{type="item", name="k-antimatter-capsule", amount=2},
			{type="item", name="menarite-processor", amount=5},
			{type="item", name="matter-stabilizer", amount=1},
			{type="item", name="imersite", amount=5}
		},
		results =
		{
			{type="item", name="k-antimatter-power-cell", amount=1},
			{type="item", name="empty-matter-stabilizer", probability = 0.75, amount=1}
		},
		subgroup = "intermediate-product",
		order = "z05[matter-power-cell]"
    },	
	{
		type = "recipe",
		name = "k-big-antimatter-power-cell",
		category = "matter-converter",
		icon = "__KrastorioPorted__/graphics/icons/big-antimatter-power-cell.png",
		icon_size = 32,
		energy_required = 90,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="k-matter", amount=600},
			{type="item", name="k-tantalum-plate", amount=15},
			{type="item", name="k-antimatter-capsule", amount=6},
			{type="item", name="menarite-processor", amount=5},
			{type="item", name="matter-stabilizer", amount=1},
			{type="item", name="imersite", amount=15}
		},
		results =
		{
			{type="item", name="k-big-antimatter-power-cell", amount=1},
			{type="item", name="empty-matter-stabilizer", probability = 0.75, amount=1}
		},
		subgroup = "intermediate-product",
		order = "z06[matter-power-cell]"
    },	
	{
		type = "recipe",
		name = "matter-cube",
		category = "matter-converter",
		icon = "__KrastorioPorted__/graphics/icons/mip/matter-cube.png",
		icon_size = 64,
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="k-matter", amount=1000},
			{type="item", name="matter-stabilizer", amount=1}
		},
		results =
		{
			{type="item", name="matter-cube", amount=1},
			{type="item", name="empty-matter-stabilizer", probability = 0.75, amount=1}
		},
		subgroup = "intermediate-product",
		order = "zz01[matter-cube]"
    },
	{
		type = "recipe",
		name = "k-filter",
		icon = "__KrastorioPorted__/graphics/icons/filter.png",
		icon_size = 32,
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"coal", 5},
			{"k-steel", 3},
			{"gold-plate", 1},
			{"plastic-bar", 6}
		},
		result = "k-filter",
		subgroup = "intermediate-product",
		order = "05[filter]"
    },
	{
		type = "recipe",
		name = "imersite-glass",
		category = "smelting",
		energy_required = 10,
		enabled = false,
		ingredients = 
		{
			{"sand", 3},
			{"imersite-powder", 2}
		},
		result = "imersite-glass" 
    },
	{
		type = "recipe",
		name = "imersite-battery",
		category = "chemistry",
		normal =
		{
			energy_required = 10,
			enabled = false,
			ingredients =
			{
				{type="fluid", name="sulfuric-acid", amount=25},
				{"gold-plate", 1},
				{"k-tantalum-plate", 1},
				{"imersite", 1}
			},
			result = "imersite-battery"
		},
		expensive =
		{
			energy_required = 5,
			enabled = false,
			ingredients =
			{
				{type="fluid", name="sulfuric-acid", amount=50},
				{"gold-plate", 1},
				{"copper-plate", 1},
				{"imersite", 2}
			},
			result = "imersite-battery"
		},
		crafting_machine_tint =
		{
			primary = {r = 0.970, g = 0.611, b = 0.000, a = 0.000}, -- #f79b0000
			secondary = {r = 0.874, g = 0.680, b = 0.000, a = 0.357}, -- #00ade45b
			tertiary = {r = 0.930, g = 0.805, b = 0.216, a = 0.000}, -- #6dcdb900
			quaternary = {r = 0.62, g = 0.16, b = 0.780, a = 0.900} -- #b52ac7
		}
    },	
	{
		type = "recipe",
		name = "k-s-drill-head",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"k-steel", 10},
			{"steel-gear-wheel", 10},
			{"iron-plate", 5}
		},
		result = "k-s-drill-head"
    },	
	{
		type = "recipe",
		name = "k-t-drill-head",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"k-titanium-plate", 10},
			{"steel-gear-wheel", 10},
			{"iron-plate", 5}
		},
		result = "k-t-drill-head"
    },
	{
		type = "recipe",
		name = "k-m-drill-head",
		energy_required = 20,
		enabled = false,
		ingredients =
		{
			{"menarite", 10},
			{"steel-gear-wheel", 10},
			{"iron-plate", 5}
		},
		result = "k-m-drill-head"
    },	
	{
		type = "recipe",
		name = "k-i-drill-head",
		energy_required = 20,
		enabled = false,
		ingredients =
		{
			{"imersite", 10},
			{"steel-gear-wheel", 10},
			{"iron-plate", 5}
		},
		result = "k-i-drill-head"
    },	
	{
		type = "recipe",
		name = "k-empty-memory-card",
		energy_required = 5,
		enabled = false,
		ingredients =
		{
			{"copper-plate", 1},
			{"plastic-bar", 1}
		},
		result = "k-empty-memory-card"
    },		
	{
		type = "recipe",
		name = "automation-research-data",
		category = "k-research",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"automation-science-pack", 1},
			{"k-empty-memory-card", 1},
			{"k-processor", 1},
			{"k-ram", 2}
		},
		result = "automation-research-data"
    },	
	{
		type = "recipe",
		name = "logistic-research-data",
		category = "k-research",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"logistic-science-pack", 1},
			{"k-empty-memory-card", 1},
			{"k-processor", 1},
			{"k-ram", 2}
		},
		result = "logistic-research-data"
    },	
	{
		type = "recipe",
		name = "military-research-data",
		category = "k-research",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"military-science-pack", 1},
			{"k-empty-memory-card", 1},
			{"k-processor", 1},
			{"k-ram", 2}
		},
		result = "military-research-data"
    },	
	{
		type = "recipe",
		name = "chemical-research-data",
		category = "k-research",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"chemical-science-pack", 1},
			{"k-empty-memory-card", 1},
			{"k-processor", 1},
			{"k-ram", 2}
		},
		result = "chemical-research-data"
    },
	
	{
		type = "recipe",
		name = "scientific-research-data",
		category = "k-research",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"utility-science-pack", 1},
			{"production-science-pack", 1},
			{"k-empty-memory-card", 1},
			{"k-processor", 1},
			{"k-ram", 2}
		},
		result = "scientific-research-data"
    },	
	{
		type = "recipe",
		name = "matter-research-data",
		category = "k-research",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"k-experimental-data", 1},
			{"k-empty-memory-card", 1},
			{"menarite-processor", 1},
			{"k-ram", 2}
		},
		result = "matter-research-data"
    },	
	{
		type = "recipe",
		name = "optimization-research-data",
		category = "k-research",
		energy_required = 20,
		enabled = false,
		ingredients =
		{
			{"space-science-pack", 1},
			{"k-empty-memory-card", 1},
			{"menarite-processor", 1},
			{"k-ram", 2}
		},
		result = "optimization-research-data"
    },	
	{
		type = "recipe",
		name = "impulse-rifle",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"k-titanium-plate", 5},
			{"menarite-processor", 1},
			{"steel-gear-wheel", 1},
			{"imersite", 1}
		},
		result = "impulse-rifle"
    },	
	{
		type = "recipe",
		name = "heavy-rocket-launcher",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"k-titanium-plate", 5},
			{"k-tantalum-plate", 5},
			{"menarite-processor", 1},
			{"steel-gear-wheel", 1}
		},
		result = "heavy-rocket-launcher"
    },	
	{
		type = "recipe",
		name = "impulse-rifle-ammo",
		energy_required = 5,
		enabled = false,
		ingredients =
		{
			{"imersite-battery", 1},
			{"k-titanium-plate", 1}
		},
		result = "impulse-rifle-ammo"
    },	
	{
		type = "recipe",
		name = "basic-railgun-shell",
		enabled = false,
		energy_required = 10,
		ingredients =
		{
			{"k-steel", 2},
			{"explosives", 1},
			{"advanced-circuit", 1},
			{"steel-plate", 1}
		},
		result = "basic-railgun-shell"
    },	
	{
		type = "recipe",
		name = "explosion-railgun-shell",
		enabled = false,
		energy_required = 10,
		ingredients =
		{
			{"basic-railgun-shell", 1},
			{"explosives", 10}
		},
		result = "explosion-railgun-shell"
    },	
	{
		type = "recipe",
		name = "antimatter-railgun-shell",
		enabled = false,
		energy_required = 60,
		ingredients =
		{
			{"basic-railgun-shell", 1},
			{"k-tantalum-plate", 1},
			{"k-antimatter-capsule", 1}
		},
		result = "antimatter-railgun-shell"
    },	
	{
		type = "recipe",
		name = "explosion-rocket-for-turret",
		enabled = false,
		energy_required = 20,
		ingredients =
		{
			{"rocket-fuel", 10},
			{"battery", 1},
			{"k-steel", 10},
			{"k-tantalum-plate", 1},
			{"k-processor", 1},
			{"explosives", 10}
		},
		result = "explosion-rocket-for-turret"
    },	
	{
		type = "recipe",
		name = "nuclear-rocket-for-turret",
		enabled = false,
		energy_required = 60,
		ingredients =
		{
			{"explosion-rocket-for-turret", 1},
			{"k-tantalum-plate", 2},
			{"gold-plate", 1},
			{"uranium-235", 30},
			{"rocket-control-unit", 5}
		},
		result = "nuclear-rocket-for-turret"
    },	
	{
		type = "recipe",
		name = "antimatter-rocket-for-turret",
		enabled = false,
		energy_required = 120,
		ingredients =
		{
			{"explosion-rocket-for-turret", 1},
			{"k-tantalum-plate", 5},
			{"gold-plate", 1},
			{"menarite-processor", 5},
			{"k-antimatter-capsule", 5},
			{"rocket-control-unit", 5}
		},
		result = "antimatter-rocket-for-turret"
    },
	{
		type = "recipe",
		name = "imersite-rounds-magazine",
		enabled = false,
		energy_required = 20,
		ingredients =
		{
			{"imersite", 2},
			{"piercing-rounds-magazine", 1}
		},
		result = "imersite-rounds-magazine"
    },	
	{
		type = "recipe",
		name = "antimatter-rocket",
		energy_required = 60,
		enabled = false,
		ingredients =
		{
			{"rocket-control-unit", 10},
			{"k-tantalum-plate", 10},
			{"menarite-processor", 5},
			{"heavy-rocket", 1},
			{"rocket-fuel", 25},
			{"k-antimatter-capsule", 10}
		},
		result = "antimatter-rocket"
    },	
	{
		type = "recipe",
		name = "heavy-rocket",
		energy_required = 60,
		enabled = false,
		ingredients =
		{
			{"rocket-fuel", 25},
			{"plastic-bar", 10},
			{"k-steel", 10},
			{"k-processor", 5},
			{"explosives", 25}
		},
		result = "heavy-rocket"
    },	
	{
		type = "recipe",
		name = "antimatter-artillery-shell",
		energy_required = 60,
		enabled = false,
		ingredients =
		{
			{"menarite-processor", 1},
			{"artillery-shell", 1},
			{"k-antimatter-capsule", 3}
		},
		result = "antimatter-artillery-shell"
    },	
	{
		type = "recipe",
		name = "k-hydrogen-chloride",
		category = "chemistry",
		energy_required = 5,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="k-chlorine", amount=50},
			{type="fluid", name="k-hydrogen", amount=50}
		},
		results =
		{ 
			{type="fluid", name="k-hydrogen-chloride", amount=100}
		},
		subgroup = "raw-material",
		order = "y03[hydrogen-chloride]",
		crafting_machine_tint =
		{
			primary = {r = 0.835, g = 0.901, b = 0.862, a = 0.250},
			secondary = {r = 0.698, g = 0.839, b = 0.756, a = 0.127},
			tertiary = {r = 0.321, g = 0.890, b = 0.443, a = 0.250}, -- #52e371
			quaternary = {r = 0.835, g = 0.901, b = 0.862, a = 0.900}
		}
	},	
	{
		type = "recipe",
		name = "k-lithium-chloride",
		category = "chemistry",
		icon = "__KrastorioPorted__/graphics/icons/mip/lithium-chloride.png",
		icon_size = 64,
		energy_required = 5,
		enabled = false,
		ingredients =
		{
			{type="item", name="stone", amount=5},
			{type="fluid", name="sulfuric-acid", amount=5},
			{type="fluid", name="k-hydrogen-chloride", amount=10}
		},
		results =
		{ 
			{type="fluid", name="k-dirty-water", amount=15},
			{type="item", name="k-lithium-chloride", amount=5}
		},
		subgroup = "raw-material",
		order = "f01[lithium-chloride]",
		crafting_machine_tint =
		{
			primary = {r = 0.662, g = 0.807, b = 0.839, a = 0.000}, 
			secondary = {r = 0.541, g = 0.647, b = 0.670, a = 0.250}, 
			tertiary = {r = 0.454, g = 0.517, b = 0.529, a = 0.500}, 
			quaternary = {r = 0.662, g = 0.807, b = 0.839, a = 0.900} 
		}
	},	
	{
		type = "recipe",
		name = "k-lithium",
		icon = "__KrastorioPorted__/graphics/icons/mip/lithium.png",
		icon_size = 64,
		category = "k-electrolysis-plant",
		energy_required = 10,
		enabled = false,
		--hidden = true,
		ingredients =
		{
			{type="item", name="k-lithium-chloride", amount=1},
			{type="fluid", name="k-pure-water", amount=10}
		},
		results =
		{
			{type="fluid", name="k-chlorine", amount=10},
			{type="item", name="k-lithium", amount=1}
		},
		subgroup = "raw-material",
		order = "f02[lithium]"
    },	
	{
		type = "recipe",
		name = "k-tritium",
		icon = "__KrastorioPorted__/graphics/icons/mip/tritium.png",
		icon_size = 64,
		category = "centrifuging",
		energy_required = 30,
		enabled = false,
		ingredients = 
		{
			{"k-lithium", 10},
			{"uranium-235", 1}
		},
		main_product = "",
		results = 
		{
			{"uranium-238", 1},
			{"k-tritium", 5}
		},
		allow_decomposition = false,
		subgroup = "intermediate-product",
		order = "r[uranium-processing]-c[kovarex-enrichment-process]"
	},
	{
		type = "recipe",
		name = "steel-gear-wheel",
		normal =
		{
			enabled = false,
			ingredients = 
			{
				{"k-steel", 1}
			},
			result = "steel-gear-wheel"
		},
		expensive =
		{
			enabled = false,
			ingredients = 
			{
				{"k-steel", 2}
			},
			result = "steel-gear-wheel"
		}
	},  
	{
		type = "recipe",
		name = "k-experimental-data",
		category = "matter-usage",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="k-matter", amount=90}
		},
		result = "k-experimental-data"
    },
-----------------------------------------------------------------------------------------------------------------
---------------------------------------PURE RECIPES(No referred to one item)-------------------------------------
-----------------------------------------------------------------------------------------------------------------   
	{
		type = "recipe",
		name = "sand-from-stone",
		subgroup = "raw-material",
		order = "000[sand-from-stone]",
		energy_required = 2,
		enabled = true,
		ingredients =
		{
			{"stone", 2}
		},
		result= "sand"
    },	
	{
		type = "recipe",	  
		name = "glass-from-sand",
		category = "smelting",	  
		energy_required = 5,
		enabled = false,
		ingredients = 
		{
			{"sand", 5}
		},
		result = "glass"
	},	
	{
		type = "recipe",
		name = "sand-to-quartz",
		icon = "__KrastorioPorted__/graphics/icons/quartz.png",
		icon_size = 32,
		energy_required = 2,
		subgroup = "raw-material",
		order = "d[sand-to-quartz]",
		enabled = false,
		ingredients = 
		{
			{"sand", 4},
		},
		results = 
		{
			{type="item", name="k-quartz", amount=3},
			{type="item", name="stone", probability = 0.5, amount=1},
		}
    },
	{
		type = "recipe",
		name = "enriched-copper",
		icon = "__KrastorioPorted__/graphics/icons/enriched-copper.png",
		icon_size = 32,
		category = "chemistry",
		energy_required = 3,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="sulfuric-acid", amount=3},
			{type="fluid", name="water", amount=25},
			{type="item", name="copper-ore", amount=9}
		},
		results =
		{ 
			{type="item", name="enriched-copper", amount=6},
			{type="fluid", name="k-dirty-water", amount=25}
		},
		crafting_machine_tint =
		{
			primary = {r = 0.970, g = 0.501, b = 0.000, a = 0.000},
			secondary = {r = 0.200, g = 0.680, b = 0.300, a = 0.357},
			tertiary = {r = 0.430, g = 0.305, b = 0.2, a = 0.000}, 
			quaternary = {r = 0.970, g = 0.501, b = 0.000, a = 0.900}
		},
		subgroup = "raw-material",
		order = "e01[enriched-copper]"
	},
	-- DIRTY WATER FILTRATION RECIPES
	---
	{
		type = "recipe",
		name = "dirty-water-filtration-1",
		category = "k-filtration-plant",
		icons =
		{
			{
				icon      = data.raw.fluid["k-dirty-water"].icon,
				icon_size = data.raw.fluid["k-dirty-water"].icon_size
			},
			{
				icon      = data.raw.item["iron-ore"].icon,
				icon_size =	data.raw.item["iron-ore"].icon_size,
				scale = 0.40 * (data.raw.fluid["k-dirty-water"].icon_size/data.raw.item["iron-ore"].icon_size),
				shift = {0, 4} 
			}
		},
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="k-dirty-water", amount=100},
			-- {type="item",  name="coal", amount=2} TOO EXPENSIVE!		
		},
		results =
		{
			{type = "fluid", name = "water", amount = 100},
			{type = "item",  name = "stone", probability = 0.30, amount = 1},
			{type = "item",  name = "iron-ore", probability = 0.10, amount = 1}
		},
		subgroup = "raw-material",
		order = "w011[dirty-water-filtration-1]"
	},	
	{
		type = "recipe",
		name = "dirty-water-filtration-2",
		category = "k-filtration-plant",
		icons =
		{
			{
				icon      = data.raw.fluid["k-dirty-water"].icon,
				icon_size = data.raw.fluid["k-dirty-water"].icon_size
			},
			{
				icon      = data.raw.item["copper-ore"].icon,
				icon_size =	data.raw.item["copper-ore"].icon_size,
				scale = 0.40 * (data.raw.fluid["k-dirty-water"].icon_size/data.raw.item["copper-ore"].icon_size),
				shift = {0, 4} 		
			}
		},
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="k-dirty-water", amount=100},
			-- {type="item",  name="coal", amount=2} TOO EXPENSIVE!			
		},
		results =
		{
			{type="fluid", name = "water", amount = 100},
			{type="item",  name = "stone", probability = 0.30, amount = 1},
			{type="item",  name = "copper-ore", probability = 0.10, amount = 1}
		},
		subgroup = "raw-material",
		order = "w012[dirty-water-filtration-2]"
	},
	---
	{
		type = "recipe",
		name = "water-filtration",
		category = "k-filtration-plant",
		icon = kr_recipes_icon_path .. "water-filtration.png",
		icon_size = 32,
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="coal", amount=1},
			{type="fluid", name="water", amount=100}
		},
		results=
		{
			{type="fluid", name="k-pure-water", amount=100}
		},
		subgroup = "raw-material",
		order = "w02[water-filtration]"
    },	
	{
		type = "recipe",
		name = "salt-water-production",
		category = "k-filtration-plant",
		icon = "__KrastorioPorted__/graphics/icons/salt-water.png",
		icon_size = 32,
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="water", amount=500}
		},
		results=
		{
			{type="fluid", name="k-salt-water", amount=100}
		},
		subgroup = "raw-material",
		order = "w03[salt-water-production]"
    },
	{
		type = "recipe",
		name = "sand-filtration",
		category = "k-filtration-plant",
		icon = "__KrastorioPorted__/graphics/icons/quartz.png",
		icon_size = 32,
		energy_required = 3,
		enabled = false,
		ingredients =
		{
			{type="item", name="sand", amount=20},
			{type="fluid", name="water", amount=25}
		},
		results=
		{
			{type="item", name="k-quartz", amount=18},
			{type="fluid", name="k-dirty-water", amount=25}
		},
		subgroup = "raw-material",
		order = "d[sand-filtration]"
    },	
	{
		type = "recipe",
		name = "k-air-separation",
		category = "kr-air-filter",
		icon = kr_recipes_icon_path .. "air-separation.png",
		icon_size = 32,
		energy_required = 3,
		enabled = false,
		ingredients = {},
		results=
		{
			{type="fluid", name="k-nitrogen", amount=60},
			{type="fluid", name="k-oxygen", amount=40}
		},
		subgroup = "raw-material",
		order = "y01[air-separation]"
    },
	{
		type = "recipe",
		name = "salt-water-electrolysis",
		category = "k-electrolysis-plant",
		icon = kr_recipes_icon_path .. "salt-water-electrolysis.png",
		icon_size = 32,
		energy_required = 3,
		enabled = false,
		ingredients = 
		{
			{type="fluid", name="k-salt-water", amount=50},
		},
		results=
		{
			{type="fluid", name="k-chlorine", amount=50},
			{type="fluid", name="k-hydrogen", amount=50},
		},
		subgroup = "raw-material",
		order = "y01[air-separation]"
    },
	{
		type = "recipe",
		name = "pure-water-electrolysis",
		category = "k-electrolysis-plant",
		icon = kr_recipes_icon_path .. "pure-water-electrolysis.png",
		icon_size = 32,
		energy_required = 3,
		enabled = false,
		ingredients = 
		{
			{type="fluid", name="k-pure-water", amount=50},
		},
		results=
		{
			{type="fluid", name="k-oxygen", amount=50},
			{type="fluid", name="k-hydrogen", amount=50}
		},
		subgroup = "raw-material",
		order = "y02[air-separation]"
    },
	{
		type = "recipe",
		name = "k-stone-processing",
		category = "chemistry",
		icon = kr_recipes_icon_path .. "stone-processing.png",
		icon_size = 32,
		energy_required = 6,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="water", amount=50},
			{type="fluid", name="sulfuric-acid", amount=10},
			{type="item", name="stone", amount=50}
		},
		results =
		{
			{type = "fluid", name = "k-dirty-water", amount = 50},
			{name = "sand",	amount = 30},
			{name = "iron-ore",	probability = 0.25,	amount = 1},
			{name = "copper-ore", probability = 0.25, amount = 1},
			{name = "gold-ore",	probability = 0.05, amount = 1}
		},
		subgroup = "k2-raw-resource",
		order = "a01[k-stone-processing]"
    },
	{
		type = "recipe",
		name = "raw-chunk-sorting",
		category = "k-filtration-plant",
		icon = kr_recipes_icon_path .. "raw-sorting.png",
		icon_size = 32,
		energy_required = 5,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="water", amount=50},
			{type="item", name="k-raw-chunk", amount=1}
		},
		results =
		{
			{type = "fluid", name = "k-dirty-water", amount = 50},
			{name = "stone", probability = 0.8,	amount = 10},
			{name = "raw-ores", probability = 0.6, amount = 5},
			{name = "raw-minerals",	probability = 0.5, amount = 3},
			{name = "coal",	probability = 0.35,	amount = 10},
			{name = "sulfur", probability = 0.35, amount = 5}
		},
		subgroup = "k2-raw-resource",
		order = "a02[raw-chunk-sorting]"
    },
	{
		type = "recipe",
		name = "raw-ores-processing",
		category = "chemistry",
		icon = kr_recipes_icon_path .. "raw-ores-processing.png",
		icon_size = 32,
		energy_required = 5,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="water", amount=50},
			{type="fluid", name="sulfuric-acid", amount=10},
			{type="item", name="raw-ores", amount=1}
		},
		results =
		{
			{type = "fluid", name = "k-dirty-water", amount = 50},
			{name = "iron-ore",	probability = 0.75,	amount = 10},
			{name = "copper-ore", probability = 0.75, amount = 10},
			{name = "gold-ore", probability = 0.5, amount = 5}
		},
		subgroup = "k2-raw-resource",
		order = "a02[raw-chunk-sorting]",
		crafting_machine_tint =
		{
			primary = {r = 0.741, g = 0.509, b = 0.109, a = 0.000}, 
			secondary = {r = 0.043, g = 0.333, b = 0.400, a = 0.250}, 
			tertiary = {r = 0.094, g = 0.149, b = 0.160, a = 0.500}, 
			quaternary = {r = 0.741, g = 0.509, b = 0.109, a = 0.800} 
		}
    },
	{
		type = "recipe",
		name = "raw-minerals-processing",
		category = "chemistry",
		icon = kr_recipes_icon_path .. "raw-minerals-processing.png",
		icon_size = 32,
		energy_required = 5,
		enabled = false,
		ingredients =
		{
			{type="fluid", name="water", amount=50},
			{type="fluid", name="k-chlorine", amount=10},
			{type="item", name="raw-minerals", amount=1}
		},
		results =
		{
			{type = "fluid", name = "k-dirty-water", amount = 50},
			{name = "raw-menarite", probability = 0.75, amount = 7},
			{name = "raw-imersite", probability = 0.5, amount = 7},
			{name = "k-quartz",	probability = 0.5, amount = 5}
		},
		subgroup = "k2-raw-resource",
		order = "a02[raw-chunk-sorting]",
		crafting_machine_tint =
		{
			primary = {r = 0.625, g = 0.163, b = 0.781, a = 0.000}, -- #b52ac7
			secondary = {r = 0.278, g = 0.360, b = 0.839, a = 0.357}, -- #475cd6
			tertiary = {r = 0.278, g = 0.360, b = 0.839, a = 0.500}, -- #475cd6
			quaternary = {r = 0.625, g = 0.163, b = 0.781, a = 0.800} -- #b52ac7
		}
    },
	{
		type = "recipe",
		name = "raw-menarite-processing-1",
		category = "chemistry",
		icon = kr_recipes_icon_path .. "raw-menarite-processing-1.png",
		icon_size = 32,
		energy_required = 15,
		enabled = false,
		ingredients =
		{
			{type="item", name="raw-menarite", amount=5},
			{type="fluid", name="sulfuric-acid", amount=10}
		},
		results =
		{
			{"menarite-powder", 2},
			{"k-titanium", 6},
			{"stone", 2}
		},
		subgroup = "k2-raw-resource",
		order = "b01[raw-menarite-processing-1]",
		crafting_machine_tint =
		{
			primary = {r = 0.141, g = 0.090, b = 0.529, a = 0.300}, -- #241787
			secondary = {r = 0.278, g = 0.360, b = 0.839, a = 0.557}, -- #475cd6
			tertiary = {r = 0.454, g = 0.517, b = 0.529, a = 0.600}, 
			quaternary = {r = 0.141, g = 0.090, b = 0.529, a = 0.900} -- #241787
		}
    },	
	{
		type = "recipe",
		name = "raw-menarite-processing-2",
		category = "k-chemistry",
		icon = kr_recipes_icon_path .. "raw-menarite-processing-2.png",
		icon_size = 32,
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{type="item", name="raw-menarite", amount=5},
			{type="fluid", name="sulfuric-acid", amount=10},
			{type="fluid", name="k-chlorine", amount=10},
			{type="fluid", name="k-nitric-acid", amount=10}
		},
		results =
		{
			{"menarite-powder", 8},
			{"k-titanium", 2},
			{type="item", name = "iron-ore", probability = 0.25, amount = 1},
			{type="item", name = "stone", probability = 0.25, amount = 1},
			{type="item", name = "k-tantalum", probability = 0.25, amount = 1},
			{type="item", name = "uranium-ore", probability = 0.25, amount = 1}
		},
		subgroup = "k2-raw-resource",
		order = "b02[raw-menarite-processing-2]",
		crafting_machine_tint =
		{
			primary = {r = 0.141, g = 0.090, b = 0.529, a = 0.000}, -- #241787
			secondary = {r = 0.278, g = 0.360, b = 0.839, a = 0.257}, -- #475cd6
			tertiary = {r = 0.454, g = 0.517, b = 0.529, a = 0.750}, 
			quaternary = {r = 0.141, g = 0.090, b = 0.529, a = 0.900} -- #241787
		}
    },
	{
		type = "recipe",
		name = "raw-imersite-processing-1",
		category = "chemistry",
		icon = kr_recipes_icon_path .. "raw-imersite-processing-1.png",
		icon_size = 32,
		energy_required = 15,
		enabled = false,
		ingredients =
		{
			{type="item", name="raw-imersite", amount=5},
			{type="fluid", name="k-chlorine", amount=10}
		},
		results =
		{
			{"imersite-powder", 2},
			{"k-tantalum", 6},
			{"stone", 2}
		},
		subgroup = "k2-raw-resource",
		order = "b03[raw-imersite-processing-1]",
		crafting_machine_tint =
		{
			primary = {r = 0.625, g = 0.163, b = 0.781, a = 0.300}, -- #b52ac7
			secondary = {r = 0.505, g = 0.090, b = 0.529, a = 0.557}, -- #811787
			tertiary = {r = 0.454, g = 0.517, b = 0.529, a = 0.600}, 
			quaternary = {r = 0.625, g = 0.163, b = 0.781, a = 0.900} -- #b52ac7
		}
    },	
	{
		type = "recipe",
		name = "raw-imersite-processing-2",
		category = "k-chemistry",
		icon = kr_recipes_icon_path .. "raw-imersite-processing-2.png",
		icon_size = 32,
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{type="item", name="raw-imersite", amount=5},
			{type="fluid", name="sulfuric-acid", amount=10},
			{type="fluid", name="k-chlorine", amount=10},
			{type="fluid", name="k-nitric-acid", amount=10}
		},
		results =
		{
			{"imersite-powder", 8},
			{"k-tantalum", 2},
			{type="item", name = "copper-ore", probability = 0.25, amount = 1},
			{type="item", name = "stone", probability = 0.25, amount = 1},
			{type="item", name = "k-titanium", probability = 0.25, amount = 1},
			{type="item", name = "uranium-ore", probability = 0.25, amount = 1}
		},
		subgroup = "k2-raw-resource",
		order = "b04[raw-imersite-processing-2]",
		crafting_machine_tint =
		{
			primary = {r = 0.625, g = 0.163, b = 0.781, a = 0.000}, -- #b52ac7
			secondary = {r = 0.505, g = 0.090, b = 0.529, a = 0.257}, -- #811787
			tertiary = {r = 0.454, g = 0.517, b = 0.529, a = 0.750}, 
			quaternary = {r = 0.625, g = 0.163, b = 0.781, a = 0.900} -- #b52ac7
		}
    },
	{
		type = "recipe",
		name = "stabilizer-charging",
		category = "k-сharging",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"empty-matter-stabilizer", 1}
		},
		results=
		{
			{type="item", name="matter-stabilizer", amount=1}
		},
		subgroup = "intermediate-product",
		order = "z4[matter-stabilizer]"
    },
	{
		type = "recipe",
		name = "uncompress-matter",
		category = "matter-converter",
		icon = "__KrastorioPorted__/graphics/icons/recipes/mip/uncompress-matter.png",
		icon_size = 64,
		energy_required = 5,
		enabled = false,
		ingredients =
		{
			{type="item", name="matter-cube", amount=1}
		},
		results =
		{
			{type="fluid", name="k-matter", amount=1000}
		},
		subgroup = "intermediate-product",
		order = "zz02[matter-cube]"
    },	
	{
		type = "recipe",
		name = "air-cleaning",
		category = "k-air-purifier",
		icon = "__KrastorioPorted__/graphics/icons/filtering.png",
		icon_size = 32,
		energy_required = 600,
		enabled = false,
		hidden = true,
		ingredients =
		{
			{type="item", name="k-filter", amount=1}
		},
		results =
		{
			{type="item", name="k-used-filter", probability = 0.90, amount=1}
		},
		subgroup = "raw-material",
		order = "zz[used-filter]"
    },
	{
		type = "recipe",
		name = "k-refill-filter",
		category = "crafting-with-fluid",
		icon = "__KrastorioPorted__/graphics/icons/filter.png",
		icon_size = 32,
		energy_required = 5,
		enabled = false,
		ingredients =
		{
			{type="item", name="k-used-filter", amount=1},
			{type="item", name="coal", amount=3},
			{type="fluid", name="water", amount=50}
		},
		results =
		{
			{type="item", name="k-filter", amount=1},
			{type="fluid", name="k-dirty-water", amount=50}
		},
		subgroup = "intermediate-product",
		order = "06[refill-filter]"
    },
	{
		type = "recipe",
		name = "s-deep-mining",
		category = "matter-extraction",
		icon = kr_recipes_icon_path .. "raw-1.png",
		icon_size = 32,
		energy_required = 30,
		enabled = false,
		hidden = true,
		category = "k-d-mining",
		ingredients =
		{
			{"k-s-drill-head", 1}
		},
		results =
		{
			{type="item", name="k-raw-chunk", amount=35}
		},
		subgroup = "k1-raw-resource",
		order = "01[s-deep-mining]"
    },	
	{
		type = "recipe",
		name = "t-deep-mining",
		category = "matter-extraction",
		icon = kr_recipes_icon_path .. "raw-2.png",
		icon_size = 32,
		energy_required = 30,
		enabled = false,
		hidden = true,
		category = "k-d-mining",
		ingredients =
		{
			{"k-t-drill-head", 1}
		},
		results =
		{
			{type="item", name="k-raw-chunk", amount=50}
		},
		subgroup = "k1-raw-resource",
		order = "02[t-deep-mining]"
    },	
	{
		type = "recipe",
		name = "m-deep-mining",
		category = "matter-extraction",
		icon = kr_recipes_icon_path .. "raw-3.png",
		icon_size = 32,
		energy_required = 30,
		enabled = false,
		hidden = true,
		category = "k-d-mining",
		ingredients =
		{
			{"k-m-drill-head", 1}
		},
		results =
		{
			{type="item", name="k-raw-chunk", amount=100}
		},
		subgroup = "k1-raw-resource",
		order = "03[m-deep-mining]"
    },	
	{
		type = "recipe",
		name = "i-deep-mining",
		category = "matter-extraction",
		icon = kr_recipes_icon_path .. "raw-4.png",
		icon_size = 32,
		energy_required = 30,
		enabled = false,
		hidden = true,
		category = "k-d-mining",
		ingredients =
		{
			{"k-i-drill-head", 1}
		},
		results =
		{
			{type="item", name="k-raw-chunk", amount=200}
		},
		subgroup = "k1-raw-resource",
		order = "04[i-deep-mining]"
    },
	{
		type = "recipe",
		name = "k-fusion",
		category = "k-fusion",
		icon = "__KrastorioPorted__/graphics/icons/recipes/mip/fusion-energy.png",
		icon_size = 64,
		energy_required = 3,
		enabled = true,
		hidden = true,
		ingredients =
		{
			{type="item", name="k-liquid-nitrogen", amount=1},
			{type="fluid", name="k-pure-water", amount=500, catalyst_amount = 1000}
		},
		results =
		{
			{type="fluid", name="steam", amount=7200, temperature = 1500},
			{type="item", name="k-dewar", amount=1}
		},
		subgroup = "intermediate-product",
		order = "q[enriched_copper]"
    },
-----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------BUILDINGS----------------------------------------------
----------------------------------------------------------------------------------------------------------------- 	
	{
		type = "recipe",
		name = "k-tank",
		energy_required = 600,
		enabled = false,
		ingredients =
		{
			{"tank", 2},
			{"impulse-rifle", 2},
			{"k-titanium-plate", 100},
			{"plastic-bar", 20},
			{"processing-unit", 50},
			{"menarite-processor", 20}
		},
		result = "k-tank"
    },	
	{
		type = "recipe",
		name = "k-multifunctional-furnace",
		energy_required = 10,
		enabled = false,
		ingredients = 
		{
			{"electric-furnace", 1}, 
			{"processing-unit", 5}
		},
		result = "k-multifunctional-furnace"	
	},	
	{
		type = "recipe",
		name = "k-advanced-furnace",
		energy_required = 350,
		enabled = false,
		category = "advanced-assembler",
		ingredients = 
		{
			{"k-steel", 200},
			{"steel-plate", 100},
			{"electric-engine-unit", 60},
			{"gold-plate", 20},
			{"k-titanium-plate", 60},
			{"processing-unit", 60}
		},
		result = "k-advanced-furnace"
	},	
	{
		type = "recipe",
		name = "kr-air-filter",
		energy_required = 60,
		enabled = false,
		ingredients =
		{
			{"k-steel", 25},
			{"copper-plate", 10},
			{"integrated-circuit", 10}
		},
		result = "kr-air-filter"
    },	
	{
		type = "recipe",
		name = "k-electrolysis-plant",
		energy_required = 60,
		enabled = false,
		ingredients =
		{
			{"k-steel", 25},
			{"copper-plate", 10},
			{"integrated-circuit", 10},
			{"glass", 20}
		},
		result = "k-electrolysis-plant"
    },	
	{
		type = "recipe",
		name = "k-filtration-plant",
		energy_required = 60,
		enabled = false,
		ingredients =
		{
			{"k-steel", 60},
			{"glass", 20},
			{"electronic-circuit", 20},
			{"plastic-bar", 50},
			{"engine-unit", 20},
		},
		result = "k-filtration-plant"
    },	
	{
		type = "recipe",
		name = "k-flare-stack",
		energy_required = 20,
		enabled = false,
		ingredients =
		{
			{"k-steel", 20},
			{"copper-plate", 10},
			{"electronic-circuit", 5},
		},
		result = "k-flare-stack"
    },	
	{
		type = "recipe",
		name = "k-liquid-evaporator",
		energy_required = 20,
		enabled = false,
		ingredients =
		{
			{"k-steel", 20},
			{"copper-plate", 10},
			{"electronic-circuit", 5},
		},
		result = "k-liquid-evaporator"
    },
	{
		type = "recipe",
		name = "k-transport-belt",
		enabled = false,
		ingredients =
		{
			{"express-transport-belt", 1},
			{"k-titanium-plate", 1}
		},
		result = "k-transport-belt"
    },	
	{
		type = "recipe",
		name = "k-underground-belt",
		energy_required = 4,
		enabled = false,
		ingredients =
		{
			{"express-underground-belt", 2},
			{"k-titanium-plate", 30}
		},
		result_count = 2,
		result = "k-underground-belt"
	},	
	{
		type = "recipe",
		name = "k-splitter",
		enabled = false,
		energy_required = 4,
		ingredients =
		{
			{"express-splitter", 1},
			{"menarite-processor", 1},
			{"k-titanium-plate", 5}
		},
		result = "k-splitter"
	},
	{
		type = "recipe",
		name = "k-medium-g",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"steel-chest", 5},
			{"k-steel", 10}
		},
		result = "k-medium-g",
		subgroup = "storage",
		order = "a[items]-dz[k-storage1]"
    },
	{
		type = "recipe",
		name = "k-medium-s",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"k-medium-g", 1},
			{"advanced-circuit", 5}
		},
		result = "k-medium-s"
    },	
	{
		type = "recipe",
		name = "k-medium-b",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"k-medium-g", 1},
			{"advanced-circuit", 5}
		},
		result = "k-medium-b"
    },
	{
		type = "recipe",
		name = "k-medium-r",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"k-medium-g", 1},
			{"advanced-circuit", 5}
		},
		result = "k-medium-r"
    },
	{
		type = "recipe",
		name = "k-medium-pp",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"k-medium-g", 1},
			{"advanced-circuit", 5}
		},
		result = "k-medium-pp"
	},
	{
		type = "recipe",
		name = "k-medium-ap",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"k-medium-g", 1},
			{"advanced-circuit", 5},
		},
		result = "k-medium-ap"
    },
	{
		type = "recipe",
		name = "k-big-g",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"steel-chest", 10},
			{"k-steel", 30}
		},
		result = "k-big-g",
		subgroup = "storage",
		order = "a[items]-dz[k-storage2]"
    },
	{
		type = "recipe",
		name = "k-big-s",
		energy_required = 3,
		enabled = false,
		ingredients =
		{
			{"k-big-g", 1},
			{"advanced-circuit", 5}
		},
		result = "k-big-s"
    },	
	{
		type = "recipe",
		name = "k-big-b",
		energy_required = 3,
		enabled = false,
		ingredients =
		{
			{"k-big-g", 1},
			{"advanced-circuit", 5}
		},
		result = "k-big-b"
    },	
	{
		type = "recipe",
		name = "k-big-r",
		energy_required = 3,
		enabled = false,
		ingredients =
		{
			{"k-big-g", 1},
			{"advanced-circuit", 5}
		},
		result = "k-big-r"
    },	
	{
		type = "recipe",
		name = "k-big-ap",
		energy_required = 3,
		enabled = false,
		ingredients =
		{
			{"k-big-g", 1},
			{"advanced-circuit", 5}
		},
		result = "k-big-ap"
    },	
	{
		type = "recipe",
		name = "k-big-pp",
		energy_required = 3,
		enabled = false,
		ingredients =
		{
			{"k-big-g", 1},
			{"advanced-circuit", 5}
		},
		result = "k-big-pp"
    },	
	{
		type = "recipe",
		name = "drone-charging-station",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"k-steel", 20},
			{"advanced-circuit", 10},
			{"battery", 10},
			{"copper-plate", 10},
			{"plastic-bar", 10}
		},
		result = "drone-charging-station"
    },
  	{
		type = "recipe",
		name = "drone-hub",
		energy_required = 250,
		enabled = false,
		ingredients =
		{
			{"electric-engine-unit", 20},
			{"k-steel", 100},
			{"advanced-circuit", 100},
			{"battery", 100},
			{"copper-plate", 50},
			{"plastic-bar", 100}
		},
		result = "drone-hub"
    },	
	{
		type = "recipe",
		name = "fs-50",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"k-steel", 25},
			{"steel-pipe", 10}
		},
		result = "fs-50"
    },	
	{
		type = "recipe",
		name = "fs-200",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"k-steel", 75},
			{"steel-pipe", 25}
		},
		result = "fs-200"
    },	
	{
		type = "recipe",
		name = "matter-assembler",
		subgroup = "production-machine",
		energy_required = 300,
		enabled = false,
		ingredients =
		{
			{"advanced-assembler", 1},
			{"processing-unit", 20},
			{"menarite-processor", 20},
			{"gold-plate", 20},
			{"k-steel", 50},
			{"steel-pipe", 10}
		},
		result = "matter-assembler"
    },	
	{
		type = "recipe",
		name = "matter-converter",
		subgroup = "production-machine",
		energy_required = 900,
		enabled = false,
		ingredients =
		{
			{"matter-factory", 1},
			{"processing-unit", 20},
			{"k-tantalum-plate", 30},
			{"menarite-processor", 20}
		},
		result = "matter-converter"
    },	
	{
		type = "recipe",
		name = "matter-factory",
		subgroup = "production-machine",
		energy_required = 900,
		enabled = false,
		ingredients =
		{
			{"k-steel", 80},
			{"processing-unit", 50},
			{"electric-engine-unit", 50},
			{"menarite-processor", 20},
			{"gold-plate", 20},
			{"steel-pipe", 30}
		},
		result = "matter-factory"
    },	
	{
		type = "recipe",
		name = "antimatter-reactor-prototype",
		energy_required = 2000,
		enabled = false,
		subgroup = "energy",
		order = "z-h[antimatter-reactor]-b[antimatter-reactor-prototype]",
		ingredients =
		{
			{"k-steel", 500},
			{"processing-unit", 500},
			{"electric-engine-unit", 100},
			{"menarite-processor", 100},
			{"k-tantalum-plate", 200},
			{"k-titanium-plate", 200}
		},
		result = "antimatter-reactor-prototype"
    },	
	{
		type = "recipe",
		name = "antimatter-reactor",
		energy_required = 3500,
		enabled = false,
		subgroup = "energy",
		order = "z-h[antimatter-reactor]-c[antimatter-reactor]",
		ingredients =
		{
			{"nuclear-reactor", 1},
			{"antimatter-reactor-prototype", 1},
			{"electric-engine-unit", 100},
			{"menarite-processor", 250},
			{"k-tantalum-plate", 300},
			{"k-steel", 600}
		},
		result = "antimatter-reactor"
    },
	{
		type = "recipe",
		name = "stabilizer-charging-station",
		subgroup = "production-machine",
		energy_required = 60,
		enabled = false,
		ingredients =
		{
			{"k-steel", 10},
			{"processing-unit", 10},
			{"electric-engine-unit", 5},
			{"k-tantalum-plate", 5},
			{"plastic-bar", 15}
		},
		result = "stabilizer-charging-station"
    },
	{
		type = "recipe",
		name = "advanced-assembler",
		energy_required = 120,
		enabled = false,
		ingredients =
		{
			{"k-steel", 50},
			{"processing-unit", 20},
			{"electric-engine-unit", 20},
			{"gold-plate", 20},
			{"glass", 20},
			{"steel-pipe", 10}
		},
		result = "advanced-assembler"
    },	
	{
		type = "recipe",
		name = "k-air-purifier",
		energy_required = 60,
		enabled = false,
		ingredients =
		{
			{"k-steel", 10},
			{"advanced-circuit", 5},
			{"plastic-bar", 20},
			{"engine-unit", 5}
		},
		result = "k-air-purifier"
    },
	{
		type = "recipe",
		name = "singularity-beacon",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"k-titanium-plate", 10},
			{"copper-plate", 5},
			{"processing-unit", 10},
			{"k-ram", 10},
			{"menarite-processor", 5},
			{"plastic-bar", 10}
		},
		result = "singularity-beacon"
    },
	{
		type = "recipe",
		name = "imersite-solar-panel",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"solar-panel", 1},
			{"imersite-glass", 10},
			{"menarite-processor", 1}
		},
		result = "imersite-solar-panel"
    },
	{
		type = "recipe",
		name = "imersite-accumulator",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"accumulator", 1},
			{"k-titanium-plate", 10},
			{"menarite-processor", 1},
			{"imersite-battery", 10}
		},
		result = "imersite-accumulator"
    },
	-- -- TILES
	---
	{
		type = "recipe",
		name = "reinforced-plate",
		enabled = false,
		energy_required = 15,
		enabled = false,
		category = "crafting-with-fluid",
		ingredients =
		{
			{"concrete", 20},
			{"iron-stick", 8},
			{"k-steel", 2},
			{type="fluid", name="water", amount=100}
		},
		result = "reinforced-plate",
		result_count = 10
    },  
    {
		type = "recipe",
		name = "black-reinforced-plate",
		enabled = false,
		energy_required = 1,
		enabled = false,
		ingredients =
		{
			{"reinforced-plate", 10},
			{"coal", 2}
		},
		result = "black-reinforced-plate",
		result_count = 10
    },
	---
	{
		type = "recipe",
		name = "k-lab",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"lab", 1},
			{"k-processor", 10},
			{"processing-unit", 5},
			{"k-ram", 10},
			{"gold-plate", 5},
			{"k-research-server-mk1", 1}
		},
		result = "k-lab"
    },
	{
		type = "recipe",
		name = "k-quantum-computer",
		category = "advanced-assembler",
		icon = krstr_entities_icon_path .. "quantum-computer_icon.png",
		icon_size = 32,
		subgroup = "k-machines",
		order = "6c[k-quantum-computer]",
		energy_required = 1500,
		enabled = false,
		ingredients =
		{
			{"k-steel", 100},
			{"copper-plate", 25},
			{"gold-plate", 25},
			{"plastic-bar", 100},
			{"processing-unit", 50},
			{"k-liquid-nitrogen", 200}
		},
		results = 
		{
			{type="item", name="k-quantum-computer", amount = 1}, 
			{type="item", name="k-dewar", amount = 200}
		}
    },
	{
		type = "recipe",
		name = "k-research-server-mk1",
		energy_required = 60,
		enabled = false,
		ingredients =
		{
			{"k-steel", 5},
			{"processing-unit", 10},
			{"electric-engine-unit", 5},
			{"k-processor", 5},
			{"k-ram", 5},
			{"plastic-bar", 15}
		},
		result = "k-research-server-mk1"
    },	
	{
		type = "recipe",
		name = "k-research-server-mk2",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"k-research-server-mk1", 1},
			{"menarite-processor", 5},
			{"k-ram", 10}
		},
		result = "k-research-server-mk2"
    },
	{
		type = "recipe",
		name = "railgun-turret",
		enabled = false,
		energy_required = 300,
		ingredients =
		{
			{"gun-turret", 3},
			{"k-steel", 30},
			{"steel-gear-wheel", 10},
			{"processing-unit", 50},
			{"plastic-bar", 20}
		},
		result = "railgun-turret"
    },  
    {
		type = "recipe",
		name = "rocket-turret",
		enabled = false,
		energy_required = 500,
		ingredients =
		{
			{"rocket-launcher", 10},
			{"steel-gear-wheel", 10},
			{"k-steel", 20},
			{"processing-unit", 30},
			{"plastic-bar", 30},
			{"k-tantalum-plate", 10}
		},
		result = "rocket-turret"
    },
	{
		type = "recipe",
		name = "k-wall",
		energy_required = 5,
		enabled = false,
		ingredients =
		{
			{"k-steel", 10},
			{"steel-plate", 5},
			{"stone-wall", 5}
		},
		result = "k-wall",
		result_count = 5
	},
	{
		type = "recipe",
		name = "k-gate",
		energy_required = 5,
		enabled = false,
		ingredients =
		{
			{"k-steel", 2},
			{"steel-plate", 1},
			{"gate", 1}
		},
		result = "k-gate"
    },	
	{
		type = "recipe",
		name = "k-advanced-chemical-plant",
		energy_required = 120,
		enabled = false,
		category = "advanced-assembler",
		ingredients = 
		{
			{"glass", 40},
			{"plastic-bar", 60},
			{"electric-engine-unit", 20},
			{"gold-plate", 20},
			{"k-titanium-plate", 60},
			{"processing-unit", 20}
		},
		result = "k-advanced-chemical-plant"
	},	
	{
		type = "recipe",
		name = "k-big-drill",
		energy_required = 120,
		enabled = false,
		ingredients = 
		{
			{"processing-unit", 20},
			{"plastic-bar", 20},
			{"electric-engine-unit", 100},
			{"steel-plate", 100},
			{"k-steel", 100}
		},
		result = "k-big-drill"
	},	
	{
		type = "recipe",
		name = "k-advanced-big-drill",
		energy_required = 120,
		enabled = false,
		category = "advanced-assembler",
		ingredients = 
		{
			{"k-big-drill", 1},
			{"plastic-bar", 20},
			{"electric-engine-unit", 50},
			{"k-titanium-plate", 50}
		},
		result = "k-advanced-big-drill"
	},	
	{
		type = "recipe",
		name = "k-deep-mining-drill",
		energy_required = 120,
		enabled = false,
		category = "advanced-assembler",
		ingredients = 
		{
			{"k-big-drill", 1},
			{"plastic-bar", 20},
			{"electric-engine-unit", 50},
			{"k-titanium-plate", 50}
		},
		result = "k-deep-mining-drill"
	},	
	{
		type = "recipe",
		name = "electric-mining-drill-mk2",
		energy_required = 20,
		enabled = false,
		ingredients = 
		{
			{"electric-mining-drill", 1},
			{"electronic-circuit", 5},
			{"k-steel", 10},
			{"steel-gear-wheel", 10}
		},
		result = "electric-mining-drill-mk2"
	},	
	{
		type = "recipe",
		name = "electric-mining-drill-mk3",
		energy_required = 30,
		enabled = false,
		ingredients = 
		{
			{"electric-mining-drill-mk2", 1},
			{"electronic-circuit", 5},
			{"processing-unit", 10},
			{"k-titanium-plate", 10},
			{"imersite", 5}
		},
		result = "electric-mining-drill-mk3"
	},
	{
		type = "recipe",
		name = "k-fusion-reactor",
		energy_required = 3000,
		enabled = false,
		order="z-g[fusion-energy]-a[fusion-reactor]",
		ingredients =
		{
			{"k-steel", 1000},
			{"k-tantalum-plate", 600},
			{"k-titanium-plate", 600},
			{"processing-unit", 600},
			{"electric-engine-unit", 250},
			{"menarite-processor", 250}
		},
		result = "k-fusion-reactor"
    },
	{
		type = "recipe",
		name = "big-turbine",
		energy_required = 240,
		enabled = false,
		order="z-c[steam-power]-d[big-steam-turbine]",
		ingredients =
		{
			{"steam-turbine", 2},
			{"steel-gear-wheel", 10},
			{"k-steel", 50},
			{"copper-plate", 150},
			{"steel-pipe", 10},				
			{"electric-engine-unit", 50}					
		},
		result = "big-turbine"
    },
	{
		type = "recipe",
		name = "steel-pipe",
		normal =
		{
			enabled = false,
			ingredients = 
			{
				{"k-steel", 1}
			},
			result = "steel-pipe"
		},
		expensive =
		{
			enabled = false,
			ingredients = 
			{
				{"k-steel", 2}
			},
			result = "steel-pipe"
		}
	},  
	{
		type = "recipe",
		name = "steel-pipe-to-ground",
		enabled = false,
		ingredients =
		{
			{"steel-pipe", 15},
			{"k-steel", 5}
		},
		result_count = 2,
		result = "steel-pipe-to-ground"
	},
	{
		type = "recipe",
		name = "steel-pump",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"steel-gear-wheel", 4},
			{"engine-unit", 1},
			{"k-steel", 1},
			{"steel-pipe", 1}
		},
		result = "steel-pump"
	}
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
}

-- Anti recipes override check
for _, recipe in pairs(krastorio_recipes) do
	aswil.recipes.addWithOverrideSafeNewRecipe(recipe)
end
