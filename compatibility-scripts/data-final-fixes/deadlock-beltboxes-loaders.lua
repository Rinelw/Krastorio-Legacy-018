
-- -- Inter/Cross compatibility with deadlock beltboxes loaders with IndustrialRevolution
-- -- And Krastorio renaming
if mods["deadlock-beltboxes-loaders"] and not mods["IndustrialRevolution"] then	
		
	if data.raw.item["deadlock-stack-steel-plate"] then
		local DBL = require("__deadlock-beltboxes-loaders__/prototypes/shared")
		local stack_size = DBL.STACK_SIZE
		if data.raw[item_type] and data.raw[item_type][item_name] then
			if data.raw[item_type][item_name].stack_size < stack_size then
				stack_size = data.raw[item_type][item_name].stack_size
			end
		end
	
		data.raw.item["deadlock-stack-steel-plate"].localised_name = {"item-name.deadlock-stacking-stack", {"item-name.vanilla-steel-plate-renamed"}, stack_size}
	
	end
	
	if data.raw.recipe["deadlock-stacks-stack-steel-plate"] then
		data.raw.recipe["deadlock-stacks-stack-steel-plate"].localised_name   = {"recipe-name.deadlock-stacking-stack", {"item-name.vanilla-steel-plate-renamed"}, settings.startup["deadlock-stack-size"].value}
	end
	if data.raw.recipe["deadlock-stacks-unstack-steel-plate"] then
		data.raw.recipe["deadlock-stacks-unstack-steel-plate"].localised_name = {"recipe-name.deadlock-stacking-unstack", {"item-name.vanilla-steel-plate-renamed"}}
	end

end