icons_lib = {}
function icons_lib.getIconsForOverlay(item_or_recipe)
	local icons_table = {}
	if item_or_recipe.icon then
		-- single icon, simple insert
		table.insert
		(
			icons_table,
			{
				icon = item_or_recipe.icon,
				icon_size = item_or_recipe.icon_size
			}
		)
	else
		-- copy all icons from the source item to the returned table,
		-- but populate the icon_size in each icon; we want the icon size defined in each icon for future overlay scaling
		for _, original_icon in ipairs(item_or_recipe.icons) do
			-- create a copy of the icon with the appropriately found size
			local new_icon = aswil_utils.tables.fullCopy(original_icon)
			-- per https://wiki.factorio.com/Types/IconSpecification, icon_size should be defined in one of two places
			new_icon.icon_size = (item_or_recipe.icon_size or original_icon.icon_size or 32)
			table.insert
			(
				icons_table,
				new_icon
			)
		end
	end
	return icons_table
end

function icons_lib.addOverlayIcons(item_or_recipe, icons_to_add, icon_size, scale, shift)
	scale = (scale or 1)
	shift = (shift or {0, 0})
	icon_size = (icon_size or 64)
	local returned_item_or_recipe = aswil_utils.tables.fullCopy(item_or_recipe)

	if returned_item_or_recipe.icon_size then
		-- normalize to icon specification option 1, with icon size defined in each layer
		returned_item_or_recipe.icons = icons_lib.getIconsForOverlay(returned_item_or_recipe)
		-- clean up after ourselves
		returned_item_or_recipe.icon = nil
		returned_item_or_recipe.icon_size = nil
	end

	-- add the requested additional icons
	for _, icon_to_add in ipairs(icons_to_add) do
		local overlay_icon = aswil_utils.tables.fullCopy(icon_to_add)
		-- preserve the overlay icon's scale and include the argument requested scale, accounting for differing icon sizes
		overlay_icon.scale = scale * (icon_size / overlay_icon.icon_size) * (overlay_icon.scale or 1)

		if overlay_icon.shift then
			-- if the overlay icon had shift already, preserve it and add the argument requested shift
			overlay_icon.shift = { overlay_icon.shift[1] + shift[1], overlay_icon.shift[2] + shift[2] }
		else
			-- if the overlay icon had no shift, use the argument requested shift
			overlay_icon.shift = shift
		end

		table.insert
		(
			returned_item_or_recipe.icons,
			overlay_icon
		)
	end
	return returned_item_or_recipe
end
