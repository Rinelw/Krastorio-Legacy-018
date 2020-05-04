function addExcludedEntityToSqueakThrough(in_exclusions, name, category)
	table.insert(in_exclusions, 
	{	
		{		   
			apply_when_object_exists = 
			{
				type = category,
				name = name,
			},
			excluded_prototype_names = 
			{
				name
			}
		}
	})
end

if mods["Squeak Through"] then
	require "__Squeak Through__/config"
	
	exclusions_to_add =
	{	
		-- medium storehouse	
		["container"] =
		{
			-- medium storehouse
			"k-medium-g",
			-- big warehouse	
			"k-big-g"
		},
		["logistic-container"] =
		{
			-- medium storehouse
			"k-medium-b",
			"k-medium-pp",
			"k-medium-s",
			"k-medium-r",
			-- big warehouse	
			"k-big-b",
			"k-big-pp",
			"k-big-s",
			"k-big-r"
		},
		["assembling-machine"] =
		{
			"k-advanced-chemical-plant",
			"k-multifunctional-furnace",
			"k-advanced-furnace",			
			"k-electrolysis-plant",
			"k-filtration-plant",
			"matter-assembler",
			"matter-converter",			
			"stabilizer-charging-station",
			"advanced-assembler",			
			"k-quantum-computer",
			"k-research-server-mk1",
			"k-research-server-mk2",
			"kr-air-filter"
		},
		["furnace"] =
		{
			"k-flare-stack",
			"k-air-purifier",
			"k-deep-mining-drill",
			"k-liquid-evaporator",
			"matter-factory",
			"k-air-purifier"
		},
		["roboport"] =
		{
			"drone-charging-station",
			"drone-hub"
		},
		["storage-tank"] =
		{
			"fs-50",
			"fs-200"
		},
		["generator"] =
		{
			"antimatter-reactor-prototype",
			"antimatter-reactor"
		},
		["solar-panel"] =
		{
			"imersite-solar-panel"
		},
		["electric-mining"] =
		{
			"electric-mining-drill-mk2",
			"electric-mining-drill-mk3"
		}
	}
	
	for category_name, items in pairs(exclusions_to_add) do
		for _, item_name in pairs(items) do
			addExcludedEntityToSqueakThrough(exclusions, item_name, category_name)
		end
	end
	
end
	

