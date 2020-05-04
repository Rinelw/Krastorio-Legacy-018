-- -- -- TO DO

aswil.items = {}

aswil.items.item_types = {"ammo", "armor", "capsule", "fluid", "gun", "item", "mining-tool", "module", "tool", "item-with-entity-data"}

function aswil.items.exist(item_name)
	return aswil.items.getItem(item_name) ~= nil
end

function aswil.items.getItem(item_name)	
	if type(item_name) == "string" then
		for _, type_name in pairs(aswil.items.item_types) do
			for name, item in pairs(data.raw[type_name]) do
				if name == item_name then 
					return item
				end
			end
		end
	end
	return nil
end

function aswil.items.getItemType(item_name)
	local item = aswil.items.getItem(item_name)
	if item and item.type then
		return item.type
	end
	return ""
end

function aswil.items.isaType(item_name, type_name)
	if data.raw[type_name] and data.raw[type_name][item_name] then
		return true
	end
	return false
end

function aswil.items.getItemName(item)
	return item.name or item[1]
end