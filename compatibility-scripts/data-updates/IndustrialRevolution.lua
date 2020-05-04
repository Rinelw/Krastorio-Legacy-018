if mods["IndustrialRevolution"] then

	---------------------------------------------------------------
	-- -- -- Entities Fixes
	require("__Krastorio__/compatibility-scripts/data-updates/IndustrialRevolution/IndustrialRevolution-entities")
	---------------------------------------------------------------
	-- -- -- Recipes fixes
	require("__Krastorio__/compatibility-scripts/data-updates/IndustrialRevolution/IndustrialRevolution-recipes")
	---------------------------------------------------------------
	-- -- --Technologies fixes
	require("__Krastorio__/compatibility-scripts/data-updates/IndustrialRevolution/IndustrialRevolution-technologies")
	---------------------------------------------------------------
	-- -- -- Icons	
	require("__Krastorio__/compatibility-scripts/data-updates/IndustrialRevolution/IndustrialRevolution-icons")
	---------------------------------------------------------------
	-- -- -- Name changing
	require("__Krastorio__/compatibility-scripts/data-updates/IndustrialRevolution/IndustrialRevolution-renaming")
	---------------------------------------------------------------
	-- -- -- Item orders
	require("__Krastorio__/compatibility-scripts/data-updates/IndustrialRevolution/IndustrialRevolution-order")
	---------------------------------------------------------------
	-- -- -- Equips
	require("__Krastorio__/compatibility-scripts/data-updates/IndustrialRevolution/IndustrialRevolution-equipments")
	---------------------------------------------------------------
	-- -- -- Fixes for difficulty gold option
	require("__Krastorio__/compatibility-scripts/data-updates/IndustrialRevolution/IndustrialRevolution-difficulty-gold-option")
	---------------------------------------------------------------
	-- -- -- Fixes for difficulty damage option
	require("__Krastorio__/compatibility-scripts/data-updates/IndustrialRevolution/IndustrialRevolution-damage-option")	
	---------------------------------------------------------------
	-- -- -- Compatibility with olter version
	require("__Krastorio__/compatibility-scripts/data-updates/IndustrialRevolution/IndustrialRevolution-previous-version")	
	---------------------------------------------------------------
	-- -- -- Inter/Cross compatibility with DeadlockCrating
	if mods["DeadlockCrating"] then			
	
		deadlock_crating.add_crate("sand", "deadlock-crating-1")
		deadlock_crating.add_crate("k-tantalum-plate", "deadlock-crating-3")	
		
	end
	---------------------------------------------------------------	
	-- -- -- Inter/Cross compatibility with deadlock beltboxes loaders
	if mods["deadlock-beltboxes-loaders"] then	
				
		deadlock.add_stack
		(	
			"k-tantalum-plate",
			"__Krastorio__/graphics/compatibility/IndustrialRevolution/stacked-tantalum-plate.png",
			"deadlock-stacking-2",
			64
		)
		
		deadlock.add_stack
		(	
			"tantalum-ingot",
			"__Krastorio__/graphics/compatibility/IndustrialRevolution/stacked-tantalum-ingot.png",
			"deadlock-stacking-2",
			64
		)
	
	end	
	---------------------------------------------------------------
	
end
