-- -- -- UPDATED IN VERSION 1.2.0

-- -- -- Creating new equipment vehicle grids and add it
data:extend(
{	
	-- New universal equipment category
	{
		type = "equipment-category",
		name = "universal-equipment"
	}	
})

-- -- -- New universal equipments (for characters, vehicles and trains)
-- In order:
	-- item
	-- equip
	-- recipe
data:extend(
{
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	-- -- BATTERIES
	-- battery-mk3-equipment
	-- item
	{
		type = "item",
		name = "battery-mk3-equipment",
		icon = kr_universal_equipment_icons_path .. "battery-mk3-equipment.png",	
		icon_size = 32,
		placed_as_equipment_result = "battery-mk3-equipment",
		subgroup = "equipment",
		order = "b3[battery]-b5[battery-equipment]",
		stack_size = 20,
		default_request_amount = 5
	},
	-- equip
	{
		type = "battery-equipment",
		name = "battery-mk3-equipment",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "battery-mk3-equipment.png",
			width = 32,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 1,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "50MJ",
			input_flow_limit = "1MW",
			output_flow_limit = "2MW",
			usage_priority = "tertiary"
		},
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "battery-mk3-equipment",
		enabled = false,
		energy_required = 10,
		ingredients =
		{
			{"battery-mk2-equipment", 2},
			{"imersite-battery", 2},
			{"menarite-processor", 1}
		},
		result = "battery-mk3-equipment"
	},
-----------------------------------------------------------------------------------------------------------------
	-- big-battery-equipment
	-- item
	{
		type = "item",
		name = "big-battery-equipment",
		icon = kr_universal_equipment_icons_path .. "big-battery-equipment.png",
		icon_size = 32,
		placed_as_equipment_result = "big-battery-equipment",
		subgroup = "equipment",
		order = "b1[battery]-b2[battery-equipment]",
		stack_size = 20
	},
	-- equip
	{
		type = "battery-equipment",
		name = "big-battery-equipment",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "big-battery-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "30MJ",
			input_flow_limit = "0.75MW",
			output_flow_limit = "1MW",
			usage_priority = "tertiary"
		},
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "big-battery-equipment",
		energy_required = 15,
		enabled = false,
		ingredients =
		{
			{"battery-equipment", 4},
			{"k-steel", 4},
			{"copper-plate", 1},
		},
		result = "big-battery-equipment"
    },
-----------------------------------------------------------------------------------------------------------------
	-- big-battery-mk2-equipment
	-- item
	{
		type = "item",
		name = "big-battery-mk2-equipment",
		icon = kr_universal_equipment_icons_path .. "big-battery-mk2-equipment.png",
		icon_size = 32,
		placed_as_equipment_result = "big-battery-mk2-equipment",
		subgroup = "equipment",
		order = "b2[battery]-b4[battery-equipment]",
		stack_size = 20
	},
	-- equip
	{
		type = "battery-equipment",
		name = "big-battery-mk2-equipment",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "big-battery-mk2-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "75MJ",
			input_flow_limit = "1.5MW",
			output_flow_limit = "2MW",
			usage_priority = "tertiary"
		},
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "big-battery-mk2-equipment",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"big-battery-equipment", 2},
			{"gold-plate", 4},
			{"processing-unit", 1},
		},
		result = "big-battery-mk2-equipment"
    },  
-----------------------------------------------------------------------------------------------------------------
	-- big-battery-mk3-equipment
	-- item
	{
		type = "item",
		name = "big-battery-mk3-equipment",
		icon = kr_universal_equipment_icons_path .. "big-battery-mk3-equipment.png",
		icon_size = 32,
		placed_as_equipment_result = "big-battery-mk3-equipment",
		subgroup = "equipment",
		order = "b3[battery]-b6[battery-equipment]",
		stack_size = 20
	},
	-- equip
	{
		type = "battery-equipment",
		name = "big-battery-mk3-equipment",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "big-battery-mk3-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "150MJ",
			input_flow_limit = "3MW",
			output_flow_limit = "4MW",
			usage_priority = "tertiary"
		},
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "big-battery-mk3-equipment",
		energy_required = 60,
		enabled = false,
		ingredients =
		{
			{"big-battery-mk2-equipment", 2},
			{"k-tantalum-plate", 4},
			{"menarite-processor", 1}
		},
		result = "big-battery-mk3-equipment"
    },
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	-- GENERATORS
	-- small-portable-generator-equipment
	-- item
	{
		type = "item",
		name = "small-portable-generator",
		icon = kr_universal_equipment_icons_path .. "small-portable-generator.png",
		icon_size = 32,
		placed_as_equipment_result = "small-portable-generator",
		subgroup = "equipment",
		order = "a2[energy-source]-a2[small-portable-generator]",
		stack_size = 10
	},
	-- equip
	{
		type = "generator-equipment",
		name = "small-portable-generator",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "small-portable-generator.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		burner =
		{
			fuel_category = "chemical",
			effectivity = 2,
			fuel_inventory_size = 2,
			burnt_inventory_size = 1
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = small_portable_generator_power,
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "small-portable-generator",
		energy_required = 20,
		enabled = false,
		ingredients =
		{
			{"engine-unit", 1},
			{"steel-plate", 6},
		},
		result = "small-portable-generator"
	},
-----------------------------------------------------------------------------------------------------------------		
	-- portable-generator
	-- item
	{
		type = "item",
		name = "portable-generator",
		icon = kr_universal_equipment_icons_path .. "portable-generator.png",
		icon_size = 32,
		placed_as_equipment_result = "portable-generator",
		subgroup = "equipment",
		order = "a2[energy-source]-a3[k-generator]",
		stack_size = 10
	},
	-- equip
	{
		type = "generator-equipment",
		name = "portable-generator",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "portable-generator.png",
			width = 128,
			height = 128,
			priority = "medium"
		},
		shape =
		{
			width = 3,
			height = 3,
			type = "full"
		},
		burner =
		{
			fuel_category = "chemical",
			effectivity = 2,
			fuel_inventory_size = 3,
			burnt_inventory_size = 1
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = portable_generator_power,
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "portable-generator",
		energy_required = 20,
		enabled = false,
		ingredients =
		{
			{"engine-unit", 2},
			{"small-portable-generator", 2}
		},
		result = "portable-generator"
	},		
-----------------------------------------------------------------------------------------------------------------	
	-- portable-nuclear-core
	-- item
	{
		type = "item",
		name = "portable-nuclear-core",
		icon = kr_universal_equipment_icons_path .. "portable-nuclear-core.png",
		icon_size = 32,
		placed_as_equipment_result = "portable-nuclear-core",
		subgroup = "equipment",
		order = "a2[energy-source]-a4[portable-nuclear-core]",
		stack_size = 10
	},
	-- equip
	{
		type = "generator-equipment",
		name = "portable-nuclear-core",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "portable-nuclear-core.png",
			width = 128,
			height = 128,
			priority = "medium"
		},
		shape =
		{
			width = 4,
			height = 4,
			type = "full"
		},
		burner =
		{
			fuel_category = "nuclear",
			effectivity = 2,
			fuel_inventory_size = 3,
			burnt_inventory_size = 1
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = portable_nuclear_core_power,
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "portable-nuclear-core",
		energy_required = 60,
		enabled = false,
		ingredients =
		{
			{"copper-plate", 25},
			{"k-steel", 25},
			{"advanced-circuit", 30},
			{"k-titanium-plate", 10},
			{"k-tantalum-plate", 10},
		},
		result = "portable-nuclear-core"
	},
-----------------------------------------------------------------------------------------------------------------		
	-- portable-antimaterial-core
	-- item
	{
		type = "item",
		name = "portable-antimaterial-core",
		icon = kr_universal_equipment_icons_path .. "portable-antimaterial-core.png",
		icon_size = 32,
		placed_as_equipment_result = "portable-antimaterial-core",
		subgroup = "equipment",
		order = "a2[energy-source]-a6[portable-antimaterial-core]",
		stack_size = 10
	},
	-- equip
	{
		type = "generator-equipment",
		name = "portable-antimaterial-core",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "portable-antimaterial-core.png",
			width = 128,
			height = 128,
			priority = "medium"
		},
		shape =
		{
		width = 4,
		height = 4,
		type = "full"
		},
		burner =
		{
			fuel_category = "k-antimatter-fuel",
			effectivity = 2,
			fuel_inventory_size = 3,
			burnt_inventory_size = 1
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = portable_antimaterial_core_power,
		categories = {"universal-equipment"},
	},
	-- recipe
	{
		type = "recipe",
		name = "portable-antimaterial-core",
		energy_required = 90,
		enabled = false,
		ingredients =
		{
			{"fusion-reactor-equipment", 1},
			{"k-tantalum-plate", 10},
			{"gold-plate", 5},
			{"menarite-processor", 10},
			{"productivity-module-3", 10},
			{"speed-module-3", 10},
		},
		result = "portable-antimaterial-core"
	},
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	-- SOLAR PANELS (GENERATORS)
	-- big-solar-panel-equipment
	-- item
	{
		type = "item",
		name = "big-solar-panel-equipment",
		icon = kr_universal_equipment_icons_path .. "big-solar-panel-equipment.png",
		icon_size = 32,
		placed_as_equipment_result = "big-solar-panel-equipment",
		subgroup = "equipment",
		order = "a[energy-source]-a3[solar-panel]",
		stack_size = 50
	},
	-- equip
	{
		type = "solar-panel-equipment",
		name = "big-solar-panel-equipment",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "big-solar-panel-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = big_solar_panel_equipment_power,
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "big-solar-panel-equipment",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"solar-panel-equipment", 4},
			{"steel-plate", 10}
		},
		result = "big-solar-panel-equipment"
	},	
-----------------------------------------------------------------------------------------------------------------	
	-- imersite-solar-panel-equipment
	-- item
	{
		type = "item",
		name = "imersite-solar-panel-equipment",
		icon = kr_universal_equipment_icons_path .. "imersite-solar-panel-equipment.png",
		icon_size = 32,
		placed_as_equipment_result = "imersite-solar-panel-equipment",
		subgroup = "equipment",
		order = "a[energy-source]-a4[imersite-solar-panel-equipment]",
		stack_size = 50,
		default_request_amount = 5
	},
	-- equip
	{
		type = "solar-panel-equipment",
		name = "imersite-solar-panel-equipment",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "imersite-solar-panel-equipment.png",
			width = 32,
			height = 32,
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
			usage_priority = "primary-output"
		},
		power = imersite_solar_panel_equipment_power,
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "imersite-solar-panel-equipment",
		energy_required = 20,
		enabled = false,
		ingredients =
		{
			{"solar-panel-equipment", 1},
			{"imersite-glass", 5},
			{"menarite-processor", 1}
		},
		result = "imersite-solar-panel-equipment"
    },	
-----------------------------------------------------------------------------------------------------------------
	-- big-imersite-solar-panel-equipment
	-- item
	{
		type = "item",
		name = "big-imersite-solar-panel-equipment",
		icon = kr_universal_equipment_icons_path .. "big-imersite-solar-panel-equipment.png",
		icon_size = 32,
		placed_as_equipment_result = "big-imersite-solar-panel-equipment",
		subgroup = "equipment",
		order = "a[energy-source]-a5[imersite-solar-panel-equipment]",
		stack_size = 50
	},
	-- equip
	{
		type = "solar-panel-equipment",
		name = "big-imersite-solar-panel-equipment",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "big-imersite-solar-panel-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = big_imersite_solar_panel_equipment_power,
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "big-imersite-solar-panel-equipment",
		energy_required = 20,
		enabled = false,
		ingredients =
		{
			{"imersite-solar-panel-equipment", 4},
			{"gold-plate", 10}
		},
		result = "big-imersite-solar-panel-equipment"
	},	
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	-- PERSONAL DEFENCES
	-- personal-laser-defense-mk2-equipment
	-- item
	{
		type = "item",
		name = "personal-laser-defense-mk2-equipment",
		localised_name = {"item-name.personal-sniper-laser-defense-mk2-equipment"},
		localised_description = {"item-description.personal-sniper-laser-defense-mk2-equipment"},
		icon = kr_universal_equipment_icons_path .. "personal-laser-defense-mk2-equipment.png",
		icon_size = 32,		
		order = "d[active-defense]-a[personal-laser-defense-mk2-equipment]",
		placed_as_equipment_result = "personal-laser-defense-mk2-equipment",
		stack_size = 20,
		subgroup = "equipment"
	},
	-- equip
	{
		type = "active-defense-equipment",
		name = "personal-laser-defense-mk2-equipment",
		localised_name = {"equipment-name.personal-sniper-laser-defense-mk2-equipment"},
		localised_description = {"equipment-description.personal-sniper-laser-defense-mk2-equipment"},
		attack_parameters = 
		{
			type = "beam",
			cooldown = 80,
			damage_modifier = 15,
			projectile_center = {0, 0},
			range = 35,
			ammo_type = 
			{
				category = "laser-turret",
				energy_consumption = "4MJ",
				action = 
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "instant",
							target_effects =
							{
								{
									type = "create-entity",
									entity_name = "explosion-hit"
								}
							}
						},
						{
							type = "beam",
							beam = "laser-beam",
							max_length = 40,
							duration = 40,
							source_offset = {0, -1.31439}
						}
					}
				}
			}
		},
		automatic = true,
		categories = {"universal-equipment"},
		energy_source = 
		{
			buffer_capacity = "24MJ",
			input_flow_limit = "3MW",
			type = "electric",
			usage_priority = "secondary-input"
		},
		shape = 
		{
			width = 2,
			height = 2,
			type = "full"		
		},
		sprite = 
		{
			filename = kr_universal_equipment_sprites_path .. "personal-laser-defense-mk2-equipment.png",
			height = 64,
			priority = "medium",
			width = 64
		}	
	},
	-- recipe
	{
		type = "recipe",
		name = "personal-laser-defense-mk2-equipment",		
		energy_required = 10,
		ingredients = 
		{
			{"personal-laser-defense-equipment", 1},
			{"menarite-processor", 2},
			{"imersite-battery", 6},
			{"low-density-structure", 6}
		},
		enabled = false,
		result = "personal-laser-defense-mk2-equipment"		
	},	
-----------------------------------------------------------------------------------------------------------------
	-- personal-submachine-laser-defense-mk1-equipment
	-- item
	{
		type = "item",
		name = "personal-submachine-laser-defense-mk1-equipment",
		icon = kr_universal_equipment_icons_path .. "personal-submachine-laser-defense-mk1-equipment.png",
		icon_size = 32,
		placed_as_equipment_result = "personal-submachine-laser-defense-mk1-equipment",
		subgroup = "equipment",
		order = "d[active-defense]-a2[personal-laser-defense-mk2-equipment]",
		stack_size = 10
	},
	-- equip
	{
		type = "active-defense-equipment",
		name = "personal-submachine-laser-defense-mk1-equipment",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "personal-submachine-laser-defense-mk1-equipment.png",
			width = 90,
			height = 90,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			buffer_capacity = "20MJ",
			input_flow_limit = "1MW"
		},
		attack_parameters =
		{
			type = "beam",
			damage_modifier = 2,
			cooldown = 6,
			range = 15,
			projectile_center = {0, 0.25},
			projectile_creation_distance = 0.5,
			sound =
			{
				filename = "__base__/sound/fight/pulse.ogg",
				volume = 0.3
			},
			ammo_type =
			{
				category = "laser-turret",
				energy_consumption = "0.2MJ",
				action =
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "instant",
							target_effects =
							{
								{
									type = "create-entity",
									entity_name = "explosion-hit"
								}
							}
						},
						{
							type = "beam",
							beam = "laser-beam",
							max_length = 16,
							duration = 3,
							source_offset = {0, -1.31439 }
						}
					}
				}
			}
		},
		automatic = true,
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "personal-submachine-laser-defense-mk1-equipment",
		energy_required = 15,
		enabled = false,
		ingredients =
		{
			{"laser-turret", 1},
			{"battery", 4},
			{"advanced-circuit", 10},
			{"k-steel", 5}
		},
		result = "personal-submachine-laser-defense-mk1-equipment"
    },	
-----------------------------------------------------------------------------------------------------------------
    -- personal-submachine-laser-defense-mk2-equipment
	-- item
	{
		type = "item",
		name = "personal-submachine-laser-defense-mk2-equipment",
		icon = kr_universal_equipment_icons_path .. "personal-submachine-laser-defense-mk2-equipment.png",
		icon_size = 32,
		placed_as_equipment_result = "personal-submachine-laser-defense-mk2-equipment",
		subgroup = "equipment",
		order = "d[active-defense]-a3[personal-laser-defense-mk2-equipment]",
		stack_size = 10
	},
	-- equip
	{
		type = "active-defense-equipment",
		name = "personal-submachine-laser-defense-mk2-equipment",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "personal-submachine-laser-defense-mk2-equipment.png",
			width = 90,
			height = 90,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			buffer_capacity = "36MJ",
			input_flow_limit = "2MW"
		},
		attack_parameters =
		{
			type = "beam",
			damage_modifier = 3.5,
			cooldown = 6,
			range = 18,
			projectile_center = {0, 0.25},
			projectile_creation_distance = 0.5,
			ammo_type =
			{
				category = "laser-turret",
				energy_consumption = "0.35MJ",
				action =
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "instant",
							target_effects =
							{
								{
									type = "create-entity",
									entity_name = "explosion-hit"
								}
							}
						},
						{
							type = "beam",
							beam = "laser-beam",
							max_length = 29,
							duration = 3,
							source_offset = {0, -1.31439 }
						}
					}
				}
			}
		},
		automatic = true,
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "personal-submachine-laser-defense-mk2-equipment",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"personal-submachine-laser-defense-mk1-equipment", 1},
			{"battery", 6},
			{"advanced-circuit", 10},
			{"steel-plate", 5}
		},
		result = "personal-submachine-laser-defense-mk2-equipment"
    },
	
-----------------------------------------------------------------------------------------------------------------
	-- personal-submachine-laser-defense-mk3-equipment
	-- item
	{
		type = "item",
		name = "personal-submachine-laser-defense-mk3-equipment",
		icon = kr_universal_equipment_icons_path .. "personal-submachine-laser-defense-mk3-equipment.png",
		icon_size = 32,
		placed_as_equipment_result = "personal-submachine-laser-defense-mk3-equipment",
		subgroup = "equipment",
		order = "d[active-defense]-a4[personal-laser-defense-mk2-equipment]",
		stack_size = 10
	},
	-- equip
	{
		type = "active-defense-equipment",
		name = "personal-submachine-laser-defense-mk3-equipment",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "personal-submachine-laser-defense-mk3-equipment.png",
			width = 90,
			height = 90,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			buffer_capacity = "50MJ",
			input_flow_limit = "5MW"
		},
		attack_parameters =
		{
			type = "beam",
			damage_modifier = 5,
			cooldown = 6,
			range = 20,
			projectile_center = {0, 0.25},
			projectile_creation_distance = 0.5,
			ammo_type =
			{
				category = "laser-turret",
				energy_consumption = "0.5MJ",
				action =
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "instant",
							target_effects =
							{
								{
									type = "create-entity",
									entity_name = "explosion-hit"
								}
							}
						},
						{
							type = "beam",
							beam = "laser-beam",
							max_length = 21,
							duration = 3,
							source_offset = {0, -1.31439 }
						}
					}
				}
			}
		},
		automatic = true,
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "personal-submachine-laser-defense-mk3-equipment",
		energy_required = 60,
		enabled = false,
		ingredients =
		{
			{"personal-submachine-laser-defense-mk2-equipment", 1},
			{"processing-unit", 20},
			{"battery", 12},
			{"low-density-structure", 5}
		},
		result = "personal-submachine-laser-defense-mk3-equipment"
    },	
-----------------------------------------------------------------------------------------------------------------
	-- personal-submachine-laser-defense-mk4-equipment
	-- item
	{
		type = "item",
		name = "personal-submachine-laser-defense-mk4-equipment",
		icon = kr_universal_equipment_icons_path .. "personal-submachine-laser-defense-mk4-equipment.png",
		icon_size = 32,
		placed_as_equipment_result = "personal-submachine-laser-defense-mk4-equipment",
		subgroup = "equipment",
		order = "d[active-defense]-a5[personal-laser-defense-mk2-equipment]",
		stack_size = 10
	},
	-- equip
	{
		type = "active-defense-equipment",
		name = "personal-submachine-laser-defense-mk4-equipment",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "personal-submachine-laser-defense-mk4-equipment.png",
			width = 90,
			height = 90,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			buffer_capacity = "75MJ",
			input_flow_limit = "7.5MW"
		},
		attack_parameters =
		{
			type = "beam",
			damage_modifier = 7.5,
			cooldown = 6,
			range = 22,
			projectile_center = {0, 0.25},
			projectile_creation_distance = 0.5,
			ammo_type =
			{
				category = "laser-turret",
				energy_consumption = "0.75MJ",
				action =
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "beam",
							beam = "laser-beam",
							max_length = 23,
							duration = 3,
							source_offset = {0, -1.31439 }
						}
					}
				}
			}
		},
		automatic = true,
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "personal-submachine-laser-defense-mk4-equipment",
		energy_required = 90,
		enabled = false,
		ingredients =
		{
			{"personal-submachine-laser-defense-mk3-equipment", 1},
			{"menarite-processor", 10},
			{"imersite-battery", 10},
			{"k-tantalum-plate", 5}
		},
		result = "personal-submachine-laser-defense-mk4-equipment"
    },	
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------	
	-- SHIELDS
	-- shield mk3
	-- item
	{
		type = "item",
		name = "energy-shield-mk3-equipment",
		icon = kr_universal_equipment_icons_path .. "energy-shield-mk3-equipment.png",	
		icon_size = 32,
		placed_as_equipment_result = "energy-shield-mk3-equipment",
		subgroup = "equipment",
		order = "b[shield]-c[energy-shield-equipment-mk3]",
		stack_size = 50,
		default_request_amount = 5
	},
	-- equip
	{
		type = "energy-shield-equipment",
		name = "energy-shield-mk3-equipment",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "energy-shield-mk3-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		max_shield_value = 200,
		energy_per_shield = "40kJ",
		energy_source =
		{
			type = "electric",
			buffer_capacity = "270kJ",
			input_flow_limit = "540kW",
			usage_priority = "primary-input"
		},
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "energy-shield-mk3-equipment",
		enabled = false,
		energy_required = 40,
		ingredients =
		{
			{"energy-shield-mk2-equipment", 6},
			{"low-density-structure", 20},
			{"k-tantalum-plate", 10}
		},
		result = "energy-shield-mk3-equipment"
	},
-----------------------------------------------------------------------------------------------------------------
	-- shield mk4
	-- item
	{
		type = "item",
		name = "energy-shield-mk4-equipment",
		icon = kr_universal_equipment_icons_path .. "energy-shield-mk4-equipment.png",	
		icon_size = 32,
		placed_as_equipment_result = "energy-shield-mk4-equipment",
		subgroup = "equipment",
		order = "b[shield]-c[energy-shield-equipment-mk4]",
		stack_size = 50,
		default_request_amount = 5
	},
	-- equip
	{
		type = "energy-shield-equipment",
		name = "energy-shield-mk4-equipment",
		sprite =
		{
			filename = kr_universal_equipment_sprites_path .. "energy-shield-mk4-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		max_shield_value = 300,
		energy_per_shield = "50kJ",
		energy_source =
		{
			type = "electric",
			buffer_capacity = "405kJ",
			input_flow_limit = "810kW",
			usage_priority = "primary-input"
		},
		categories = {"universal-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "energy-shield-mk4-equipment",
		enabled = false,
		energy_required = 80,
		ingredients =
		{
			{"energy-shield-mk3-equipment", 6},
			{"low-density-structure", 30},
			{"k-tantalum-plate", 20}
		},
		result = "energy-shield-mk4-equipment"
	}		
-----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------- 
})
