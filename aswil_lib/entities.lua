aswil.entities = {}

-- -- -- TO DO

-- -- -- GETTING(READ) FUNCTIONS

--@ category_name
--@ entity_name
function aswil.entities.exist(category_name, entity_name)
	local no_err, entity = pcall(function() return data.raw[category_name][entity_name] end)
	if no_err and entity ~= nil and next(entity) ~= nil then
		return entity
	end
	return false 
end

--@ category_name
--@ entity_name
function aswil.entities.getEntity(category_name, entity_name)
	return aswil.entities.exist(category_name, entity_name)
end

-- -- -- SETTING(WRITE) FUNCTIONS

--@ category_name
--@ entity_name
--@ to_remove_mask_name
function aswil.entities.removeCollisionMaskOnEntity(category_name, entity_name, to_remove_mask_name)
	local entity = aswil.entities.getEntity(category_name, entity_name)
	if entity then
		local no_err, collision_mask = pcall(function() return data.raw[category_name][entity_name].collision_mask end)
		if no_err and collision_mask ~= nil then
			for i, mask_name in pairs(collision_mask) do
				if mask_name == to_remove_mask_name then
					table.remove(collision_mask, i)
					return true
				end
			end
		end
	end
	return false
end

--@ category_name
--@ entity_name
--@ to_add_mask_name
function aswil.entities.addCollisionMaskOnEntity(category_name, entity_name, to_add_mask_name)
	local entity = aswil.entities.getEntity(category_name, entity_name)
	if entity then
		local no_err, collision_mask = pcall(function() return data.raw[category_name][entity_name].collision_mask end)
		if no_err and collision_mask ~= nil then
			table.insert(collision_mask, to_add_mask_name)
		else
			data.raw[category_name][entity_name].collision_mask = {"item-layer", "object-layer", "player-layer", "water-tile", to_add_mask_name}
		end
		return true
	end
	return false
end
