if mods["Hovercrafts"] then	
	local function createEGrid()
		local ecraft_grid = table.deepcopy(data.raw["equipment-grid"]["car-grid"])
		ecraft_grid.name  = "krastorio-ecraft-grid"
		table.insert(ecraft_grid.equipment_categories, "electric-hovercraft-equipment")
		data:extend({ecraft_grid})	
		  
		data.raw.item["ehvt-equipment"].subgroup = "vehicle-motor"
		data.raw.item["ehvt-equipment"].order    = "e[additional-engines]-e3[advanced-additional-engine]"
	end
	
	data.raw["car"]["hcraft-entity"].equipment_grid = "car-grid"
	if settings.startup["enable-mcraft"].value then
		data.raw["car"]["mcraft-entity"].equipment_grid = "car-grid"
	end
	if settings.startup["enable-ecraft"].value and (mods["electric-vehicles-lib-reborn"] or mods["laser_tanks"] and settings.startup["lasertanks-electric-engine"] and settings.startup["lasertanks-electric-engine"].value) then
		createEGrid()
		data.raw["car"]["ecraft-entity"].equipment_grid = "krastorio-ecraft-grid"		
	end
	if mods["laser_tanks"] and settings.startup["enable-lcraft"].value then
		if not data.raw["equipment-grid"]["krastorio-ecraft-grid"] then
			createEGrid()
		end
		data.raw["car"]["lcraft-entity"].equipment_grid = "krastorio-ecraft-grid"			
	end
end