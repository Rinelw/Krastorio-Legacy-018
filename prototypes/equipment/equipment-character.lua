-- -- -- UPDATED IN VERSION 1.2.0

-- -- PLAYER EQUIPMENTS

-- new character equipment category
data:extend(
{
	{
		group = "combat",
		name = "character-equipment",
		order = "e-e2",
		type = "item-subgroup"
    }
})

-- In order:
	-- item
	-- equip
	-- recipe
data:extend(
{
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	-- EXOSKELETONS
	-- titanium exoskeleton
	-- item
	{	
		type = "item",
		name = "titanium-exoskeleton-equipment",
		icon = kr_character_equipment_icons_path .. "titanium-exoskeleton-equipment.png",
		icon_size = 32,
		placed_as_equipment_result = "titanium-exoskeleton-equipment",		
		subgroup = "character-equipment",
		order = "e[exoskeleton]-a2[exoskeleton-equipment]",
		stack_size = 20,
		default_request_amount = 1
    },
	-- equip
	{		
		type = "movement-bonus-equipment",
		name = "titanium-exoskeleton-equipment",
		categories = {"armor"},
		energy_consumption = "250kW",
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		movement_bonus = 0.5,      
		shape = 
		{
			width = 2,
			height = 4,
			type = "full"        
		},
		sprite = 
		{
			filename = kr_character_equipment_sprites_path .. "titanium-exoskeleton-equipment.png",		
			width = 64,
			height = 128,
			priority = "medium"
		}
    },
	-- recipe
	{
		type = "recipe",
		name = "titanium-exoskeleton-equipment",
		enabled = false,
		energy_required = 10,
		ingredients = 
		{
			{"exoskeleton-equipment", 1},
			{"k-titanium-plate", 10},
			{"low-density-structure", 10},
			{"speed-module-2", 10}
		},		
		result = "titanium-exoskeleton-equipment"		
	},
-----------------------------------------------------------------------------------------------------------------
	-- advanced exoskeleton
	-- item
	{	
		type = "item",
		name = "advanced-exoskeleton-equipment",
		icon = kr_character_equipment_icons_path .. "advanced-exoskeleton-equipment.png",
		icon_size = 32,
		placed_as_equipment_result = "advanced-exoskeleton-equipment",		
		subgroup = "character-equipment",
		order = "e[exoskeleton]-a3[exoskeleton-equipment]",
		stack_size = 20,
		default_request_amount = 1
    },
	-- equip
	{		
		type = "movement-bonus-equipment",
		name = "advanced-exoskeleton-equipment",
		categories = {"armor"},
		energy_consumption = "300kW",
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		movement_bonus = 0.75,      
		shape = 
		{
			width = 2,
			height = 4,
			type = "full"        
		},
		color_lookup = {{0.5, "__core__/graphics/color_luts/nightvision.png"}},
		sprite = 
		{
			filename = kr_character_equipment_sprites_path .. "advanced-exoskeleton-equipment.png",		
			width = 64,
			height = 128,
			priority = "medium"
		}
    },
	-- recipe
	{
		type = "recipe",
		name = "advanced-exoskeleton-equipment",
		enabled = false,
		energy_required = 10,
		ingredients = 
		{
			{"titanium-exoskeleton-equipment", 1},
			{"menarite-processor", 10},
			{"k-tantalum-plate", 50},
			{"speed-module-3", 10}
		},		
		result = "advanced-exoskeleton-equipment"		
	},
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	-- NIGHT VISORS
	-- imersite-night-vision-equipment	
	-- item
	{
		type = "item",
		name = "imersite-night-vision-equipment",
		icon = kr_character_equipment_icons_path .. "imersite-night-vision-equipment.png",	
		icon_size = 32,
		placed_as_equipment_result = "imersite-night-vision-equipment",
		subgroup = "character-equipment",
		order = "f[night-vision]-b[imersite-night-vision-equipment]",
		stack_size = 10,
		default_request_amount = 1
	},
	-- equip
	{
		type = "night-vision-equipment",
		name = "imersite-night-vision-equipment",
		color_lookup = {{0.5, "__core__/graphics/color_luts/nightvision.png"}},
		sprite =
		{
			filename = kr_character_equipment_sprites_path .. "imersite-night-vision-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 1,
			height = 1,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "180kJ",
			input_flow_limit = "360kW",
			usage_priority = "primary-input"
		},
		energy_input = "15kW",
		tint = {r = 0.2, g = 0, b = 0.1, a = 0},
		desaturation_params = 
		{ 
			smoothstep_min = 0.1,
			smoothstep_max = 0.8,
			minimum = 0.7,
			maximum = 1
		},
		light_params = 
		{ 
			smoothstep_min = 0.1,
			smoothstep_max = 0.8,
			minimum = 0.7,
			maximum = 1,
		},
		categories = {"armor"},
		darkness_to_turn_on = 0.7
	},
	-- recipe
	{
		type = "recipe",
		name = "imersite-night-vision-equipment",
		enabled = false,
		energy_required = 10,
		ingredients =
		{
			{"night-vision-equipment", 1},
			{"advanced-circuit", 10},
			{"imersite-glass", 5},
			{"k-tantalum-plate", 5}
		},
		result = "imersite-night-vision-equipment"
	}
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
})

-- -- POWER ARMORS

-- copying the animations of power armor mk2 to the higher tiers
for _, animation in ipairs(data.raw["character"]["character"]["animations"]) do
  if animation.armors then
    for _, armor in ipairs(animation.armors) do
      if armor == "power-armor-mk2" then
        animation.armors[#animation.armors + 1] = "power-armor-mk3"
		animation.armors[#animation.armors + 1] = "power-armor-mk4"
        break
      end
    end
  end
end

--in order:
	-- grid
	-- item
	-- equip
	-- recipe
data:extend(
{
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------- 
	-- -- Armors
	-- MK3
	-- grid
	{
		type = "equipment-grid",
		name = "mk3-armor-grid",
		width = 10,
		height = 10,
		equipment_categories = {"armor", "universal-equipment"}
	},
	-- item
	{
		type = "armor",
		name = "power-armor-mk3",
		icon = kr_character_equipment_icons_path .. "power-armor-mk3.png",	
		icon_size = 32,
		resistances =
		{
			{
				type = "physical",
				decrease = 20,
				percent = 50
			},
			{
				type = "acid",
				decrease = 30,
				percent = 70
			},
			{
				type = "explosion",
				decrease = 40,
				percent = 70
			},
			{
				type = "fire",
				decrease = 20,
				percent = 80
			}
		},
		subgroup = "armor",
		order = "f[power-armor-mk3]",
		stack_size = 1,
		infinite = true,
		equipment_grid = "mk3-armor-grid",
		inventory_size_bonus = 40	
	},	
	-- recipe
	{
		type = "recipe",
		name = "power-armor-mk3",
		enabled = false,
		energy_required = 40,
		ingredients = 
		{
			{"power-armor-mk2", 1},
			{"effectivity-module-3", 15},
			{"speed-module-3", 15},
			{"k-tantalum-plate", 20}
		},
		result = "power-armor-mk3",
		requester_paste_multiplier = 1
	},
----------------------------------------------------------------------------------------------------------------- 
	-- MK4
	-- grid
	{
		type = "equipment-grid",
		name = "mk4-armor-grid",
		width = 12,
		height = 12,
		equipment_categories = {"armor", "universal-equipment"}
	},
	-- item
	{
		type = "armor",
		name = "power-armor-mk4",
		icon = kr_character_equipment_icons_path .. "power-armor-mk4.png",	
		icon_size = 32,
		resistances =
		{
			{
				type = "physical",
				decrease = 30,
				percent = 60
			},
			{
				type = "acid",
				decrease = 30,
				percent = 80
			},
			{
				type = "explosion",
				decrease = 50,
				percent = 80
			},
			{
				type = "fire",
				decrease = 30,
				percent = 90
			}
		},
		subgroup = "armor",
		order = "g[power-armor-mk4]",
		stack_size = 1,
		infinite = true,
		equipment_grid = "mk4-armor-grid",
		inventory_size_bonus = 50	
	},
	-- recipe
	{
		type = "recipe",
		name = "power-armor-mk4",
		enabled = false,
		energy_required = 40,
		ingredients = 
		{
			{"power-armor-mk3", 1},
			{"effectivity-module-3", 20},
			{"speed-module-3", 20},
			{"k-tantalum-plate", 50}
		},
		result = "power-armor-mk4",
		requester_paste_multiplier = 1
	}
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------- 
})
