if settings.startup["loaders"] and settings.startup["loaders"].value then

-----------------------------------------------------------------------------------------------------------------
------------------------------------------------ITEMS------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------- 

	function kr_loader_item(data)
		local name = data.name
		local subgroup = data.subgroup or "belt"
		local order = data.order	
		return {
			type = "item",
			name = name,
			icon = krstr_entities_icon_path .. name .. ".png",
			icon_size = 32,
			order = order,
			subgroup = subgroup,
			place_result = name,
			stack_size = 50
		}
	end

	local items = 
	{
		kr_loader_item
			{
				name = 'loader-kr',
				order = "d[loader]-a1[loader-kr]",
			},
		kr_loader_item
			{
				name = 'loader-kr-02',
				order = "d[loader]-a2[loader-kr-02]",
			},
		kr_loader_item
			{
				name = 'loader-kr-03',
				order = "d[loader]-a3[loader-kr-03]",
			},
		kr_loader_item
			{
				name = 'loader-kr-04',
				order = "d[loader]-a4[loader-kr-04]",
			}
	}
	data:extend(items)

-----------------------------------------------------------------------------------------------------------------
------------------------------------------------ENTITY-----------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

	function kr_loader(data)
		local name = data.name
		local speed = data.speed
		local icon = data.icon
		local belt_animation_set = data.belt_animation_set
		local order = data.order
		local upgrade = data.upgrade

		return {
			type = "loader-1x1",
			name = name,
			icon = icon,
			icon_size = 32,
			flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
			minable = {mining_time = 0.25, result = name},
			max_health = 300,
			filter_count = 5,
			corpse = "small-remnants",
			resistances =
			{
				{
					type = "fire",
					percent = 90
				}
			},
			collision_box = {{-0.4, -0.45}, {0.4, 0.45}},
			selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
			drawing_box = {{-0.4, -0.4}, {0.4, 0.4}},
			animation_speed_coefficient = 32,
			container_distance = 0.75, --Default: 1.5
			-- belt_distance = 0.0, --Default1x1: 0.0  --Default2x1: 0.5 
			belt_length = 0.20, -- Default: 0.5
			structure_render_layer = "object",
			--structure_render_layer = "transport-belt-circuit-connector", --Default:"lower-object" 
			belt_animation_set = belt_animation_set,
			fast_replaceable_group = "loader",
			next_upgrade = upgrade,
			speed = speed,
			structure =
			{
				direction_in =
				{
					sheet =
					{
						filename = "__Krastorio__/graphics/entity/loaders/"..name..".png",
						priority = "extra-high",
						shift = {0.15625, 0.0703125},
						width = 53,
						height = 43,
						y = 43,
						hr_version =
							{
							filename = "__Krastorio__/graphics/entity/loaders/hr-"..name..".png",
							priority = "extra-high",
							shift = {0.15625, 0.0703125},
							width = 106,
							height = 85,
							y = 85,
							scale = 0.5,
							}
					}
				},
				direction_out =
				{
					sheet =
					{
						filename = "__Krastorio__/graphics/entity/loaders/"..name..".png",
						priority = "extra-high",
						shift = {0.15625, 0.0703125},
						width = 53,
						height = 43,
						hr_version =
							{
							filename = "__Krastorio__/graphics/entity/loaders/hr-"..name..".png",
							priority = "extra-high",
							shift = {0.15625, 0.0703125},
							width = 106,
							height = 85,
							scale = 0.5
							}
					}
				}
			},
			order = order,
		
		}
	end

	local entities = 
	{
		kr_loader
		{
			name = 'loader-kr',
			speed = data.raw["transport-belt"]["transport-belt"].speed,
			order = "d[loader]-d[loader-kr]",
			upgrade = 'loader-kr-02',
			belt_animation_set = data.raw["transport-belt"]["transport-belt"].belt_animation_set,
			icon = krstr_entities_icon_path .. "loader-kr.png"
		},
		kr_loader
		{
			name = 'loader-kr-02',
			speed =	data.raw["transport-belt"]["fast-transport-belt"].speed,
			order = "d[loader]-d[loader-kr-02]",
			upgrade = 'loader-kr-03',
			belt_animation_set = data.raw["transport-belt"]["fast-transport-belt"].belt_animation_set,
			icon = krstr_entities_icon_path .. "loader-kr-02.png"
		},
		kr_loader
		{
			name = 'loader-kr-03', 
			speed =	data.raw["transport-belt"]["express-transport-belt"].speed,
			upgrade = 'loader-kr-04',
			order = "d[loader]-d[loader-kr-03]", 
			belt_animation_set = data.raw["transport-belt"]["express-transport-belt"].belt_animation_set,
			icon = krstr_entities_icon_path .. "loader-kr-03.png"
		},
		kr_loader
		{
			name = 'loader-kr-04', 
			speed =	data.raw["transport-belt"]["k-transport-belt"].speed,
			order = "d[loader]-d[loader-kr-04]",
			upgrade = nil,
			belt_animation_set = data.raw["transport-belt"]["k-transport-belt"].belt_animation_set,
			icon = krstr_entities_icon_path .. "loader-kr-04.png"
		}
	}
	data:extend(entities)

	-- RECIPES

	function kr_loader_recipe(data)
		local name = data.name
		local category = data.category or "logistics"
		local ingredients = data.ingredients
		return {
			type = "recipe",
			name = name,
			ingredients = ingredients,
			enabled = false,
			order = "d[loader-kr]-d[01]",
			subgroup = "belt",
			energy_required = 10,
			result = name,
		}
	end

	local recipes = 
		{
			kr_loader_recipe{
				name = "loader-kr",
				ingredients = 
			{
				{"transport-belt", 10},
				{"electronic-circuit", 3},
				{"inserter", 3}
			},
			},
			kr_loader_recipe{
				name = "loader-kr-02",
				ingredients = 
			{
				{"loader-kr", 1},
				{"electronic-circuit", 3},
				{"fast-transport-belt", 10},
				{"inserter", 3}
			},
			},
			kr_loader_recipe{
				name = "loader-kr-03",
				ingredients = 
			{
				{"loader-kr-02", 1},
				{"advanced-circuit", 1},
				{"express-transport-belt", 10},
				{"fast-inserter", 3}
			},
			},
			kr_loader_recipe{
				name = "loader-kr-04",
				ingredients = 
			{
				{"loader-kr-03", 1},
				{"processing-unit", 1},
				{"k-titanium-plate", 5},
				{"k-transport-belt", 10},
				{"stack-inserter", 3}
			},
			}
		}
	data:extend(recipes)
	
end
