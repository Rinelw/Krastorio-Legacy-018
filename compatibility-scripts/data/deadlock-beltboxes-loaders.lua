if mods["deadlock-beltboxes-loaders"] then	

	local kr_stacked_icon_path = "__KrastorioPorted__/graphics/compatibility/deadlock-beltboxes-loaders/stacked-"

	--Adding new tier
	deadlock.add_tier(
	{
		transport_belt      = "k-transport-belt",
		colour              = {r=191, g=0, b=255, a=250},
		underground_belt    = "k-underground-belt",
		splitter            = "k-splitter",
		technology          = "k-advanced-logistics",
		order               = "d",
		--loader              = "loader-kr-04", -- defaults to transport_belt.."-loader"
		loader_ingredients  = 
		{
			{"express-transport-belt-loader", 1},
			{"iron-gear-wheel", 50},
			{"k-titanium-plate", 20}
		},
		--  loader_recipe       = string, -- optional, only if you need to override the recipe name (for legacy compatibility)
		--  loader_item         = string, -- optional, only if you need to override the item name (for legacy compatibility)
		--  loader_category     = string, -- optional, default to "crafting" but use "crafting-with-fluid" if there's fluid in the recipe
		--  beltbox             = string, -- optional, prototype string for the beltbox that'll be created, defaults to transport_belt.."-beltbox"
		beltbox_ingredients = 
		{
			{"express-transport-belt-beltbox", 1},
			{"iron-gear-wheel", 30},
			{"k-titanium-plate", 20}
		},
		beltbox_technology = "deadlock-stacking-4" --  = string, -- optional, defaults to beltbox_name but can be overridden (vanilla use "deadlock-stacking-[1-3]" for legacy compatibility, since other mods' create() functions for stackable items likely point at these)
		--  beltbox_recipe      = string, -- optional, only if you need to override the recipe name (for legacy compatibility)
		--  beltbox_item        = string, -- optional, only if you need to override the item name (for legacy compatibility)
		--  beltbox_category    = string, -- optional, default to "crafting" but use "crafting-with-fluid" if there's fluid in the recipe
	})
	
	aswil.technologies.addPrerequisite("deadlock-stacking-4", "deadlock-stacking-3")	
	
	local stackable_krastorio_items = 
	{
		{   -- Tier 1
			"k-circuit-board",
			"k-coke"
		},
		{	-- Tier 2
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
		},
		{	-- Tier 3
			"k-tritium",			
			"raw-menarite",
			"menarite-powder",
			"menarite",
			"menarite-wafer",
			"k-titanium",
			"k-tantalum",
			"k-tantalum-plate",
			"raw-imersite",
			"imersite-powder",
			"imersite",
			"imersite-battery",
			"imersite-glass",
			"menarite-processor",
			"reinforced-plate",
			"k-empty-memory-card"
		}
	}
	
	for i, items in pairs(stackable_krastorio_items) do
        for _, item in pairs(items) do
            deadlock.add_stack
			(	
				item,
				kr_stacked_icon_path .. item .. ".png",
				"deadlock-stacking-" .. i,
				32
			)
        end
    end
	
	-- -- Inter/Cross compatibility with deadlock beltboxes loaders with IndustrialRevolution
	if not mods["IndustrialRevolution"] then	
	
		stackable_krastorio_items = 
		{
			{   -- Tier 1
				"sand",
				"glass"
			},
			{	-- Tier 2
				"k-gold-foil",
				"k-module-case",
				"k-steel",
				"integrated-circuit"			
			},
			{	-- Tier 3
				"k-titanium-plate"
			}
		}
		
		for i, items in pairs(stackable_krastorio_items) do
			for _, item in pairs(items) do
				deadlock.add_stack
				(	
					item,
					kr_stacked_icon_path .. item .. ".png",
					"deadlock-stacking-" .. i,
					32
				)
			end
		end
	
	end
end