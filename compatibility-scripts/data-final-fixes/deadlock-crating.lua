
-- -- Inter/Cross compatibility with DeadlockCrating with IndustrialRevolution
-- -- And Krastorio renaming
if mods["DeadlockCrating"] and not mods["IndustrialRevolution"] then	

	if data.raw.item["deadlock-crate-steel-plate"] then
	    local base_item = data.raw.item["steel-plate"]
		local items_per_crate = base_item.stack_size/5
		
		data.raw.item["deadlock-crate-steel-plate"].localised_name = {"item-name.deadlock-crate-item", items_per_crate, {"item-name.vanilla-steel-plate-renamed"}}
	end

	if data.raw.recipe["deadlock-packrecipe-steel-plate"] then
		data.raw.recipe["deadlock-packrecipe-steel-plate"].localised_name = {"recipe-name.deadlock-packing-recipe", {"item-name.vanilla-steel-plate-renamed"}}
	end
	if data.raw.recipe["deadlock-unpackrecipe-steel-plate"] then
		data.raw.recipe["deadlock-unpackrecipe-steel-plate"].localised_name = {"recipe-name.deadlock-unpacking-recipe", {"item-name.vanilla-steel-plate-renamed"}}
	end
	
end