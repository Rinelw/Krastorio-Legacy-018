-- -- -- UPDATED IN VERSION 1.2.0

-- -- -- Creating new equipment vehicle grids and add it
data:extend(
{	
----------------------------------------------------------------------------------------------------------------- 
----------------------------------------------------------------------------------------------------------------- 
	-- New vehicle equipment category
	{
		type = "equipment-category",
		name = "vehicle-equipment"
	},
	{
		type = "equipment-category",
		name = "vehicle-motor"
	},
	{
		type = "equipment-category",
		name = "aircraft-equipment"
	},
----------------------------------------------------------------------------------------------------------------- 
----------------------------------------------------------------------------------------------------------------- 
	-- Car
	{
		type = "equipment-grid",
		name = "car-grid",
		width = 6,
		height = 6,
		equipment_categories = {"universal-equipment", "vehicle-equipment", "vehicle-motor"}
	},
----------------------------------------------------------------------------------------------------------------- 	
	-- Tanks	
	{
		type = "equipment-grid",
		name = "tank-grid",
		width = 6,
		height = 11,
		equipment_categories = {"universal-equipment", "vehicle-equipment", "vehicle-motor"}
	},
	{
		type = "equipment-grid",
		name = "k-tank-grid",
		width = 12,
		height = 15,
		equipment_categories = {"universal-equipment", "vehicle-equipment", "vehicle-motor"}
	},
----------------------------------------------------------------------------------------------------------------- 
	-- Train
	{
		type = "equipment-grid",
		name = "locomotive-grid",
		width = 12,
		height = 12,
		equipment_categories = {"universal-equipment", "vehicle-equipment", "vehicle-motor"}
	},
	{
		type = "equipment-grid",
		name = "wagons-grid",
		width = 6,
		height = 16,
		equipment_categories = {"universal-equipment", "vehicle-equipment"}
	}
----------------------------------------------------------------------------------------------------------------- 
----------------------------------------------------------------------------------------------------------------- 
})

-- new category
data:extend(
{
	{
		group = "combat",
		name = "vehicle-motor",
		order = "e-e3",
		type = "item-subgroup"
    }
})

-- -- -- Apply to vehicles new grids
-- vanilla car
data.raw.car["car"].equipment_grid                            = "car-grid"
-- vanilla tank
data.raw.car["tank"].equipment_grid                           = "tank-grid"
-- Locomotive
data.raw.locomotive["locomotive"].equipment_grid              = "locomotive-grid"
-- Wagons
data.raw["cargo-wagon"]["cargo-wagon"].equipment_grid         = "wagons-grid"
data.raw["fluid-wagon"]["fluid-wagon"].equipment_grid         = "wagons-grid"
data.raw["artillery-wagon"]["artillery-wagon"].equipment_grid = "wagons-grid"
	
-- -- -- Adding new excusive vehicle equipments
	
-- In order:
	-- item
	-- equip
	-- recipe
data:extend(
{
-----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------- 
	-- MOTORS
	-- additional-engine
	-- item
	{
		type = "item",
		name = "additional-engine",
		icon = kr_vehicle_equipment_icons_path .. "additional-engine.png",
		icon_size = 32,
		placed_as_equipment_result = "additional-engine",
		subgroup = "vehicle-motor",
		order = "e[additional-engines]-e1[advanced-additional-engine]",
		stack_size = 5
	},
	-- equip
	{
		type = "movement-bonus-equipment",
		name = "additional-engine",
		sprite =
		{
			filename = kr_vehicle_equipment_sprites_path .. "additional-engine.png",
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
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_consumption = "100kW",
		movement_bonus = 0.3,
		categories = {"vehicle-motor"}
	},
	-- recipe
	{
		type = "recipe",
		name = "additional-engine",
		energy_required = 20,
		enabled = false,
		ingredients =
		{
			{"electric-engine-unit", 2},
			{"electronic-circuit", 3},
			{"k-steel", 3}
		},
		result = "additional-engine"
    },
-----------------------------------------------------------------------------------------------------------------
	-- advanced-additional-engine
	-- item
	{
		type = "item",
		name = "advanced-additional-engine",
		icon = kr_vehicle_equipment_icons_path .. "advanced-additional-engine.png",
		icon_size = 32,
		placed_as_equipment_result = "advanced-additional-engine",
		subgroup = "vehicle-motor",
		order = "e[additional-engines]-e2[advanced-additional-engine]",
		stack_size = 5
	},
	-- equip
	{
		type = "movement-bonus-equipment",
		name = "advanced-additional-engine",
		sprite =
		{
			filename = kr_vehicle_equipment_sprites_path .. "advanced-additional-engine.png",
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
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_consumption = "250kW",
		movement_bonus = 0.5,
		categories = {"vehicle-motor"}
	},
	-- recipe
	{
		type = "recipe",
		name = "advanced-additional-engine",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"additional-engine", 2},
			{"processing-unit", 5},
			{"k-steel", 5}
		},
		result = "advanced-additional-engine"
    },
-----------------------------------------------------------------------------------------------------------------
	-- vehicle-roboport
	-- item
	{
		type = "item",
		name = "vehicle-roboport",
		icon = kr_vehicle_equipment_icons_path .. "vehicle-roboport.png",
		icon_size = 32,
		placed_as_equipment_result = "vehicle-roboport",
		subgroup = "vehicle-motor",
		order = "a[additional-engines]-e2[advanced-additional-engine]",
		stack_size = 5
	},
	-- equip
	{
		type = "roboport-equipment",
		name = "vehicle-roboport",
		take_result = "vehicle-roboport",
		sprite =
		{
		  filename = kr_vehicle_equipment_sprites_path .. "vehicle-roboport.png",
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
		energy_source =
		{
		  type = "electric",
		  buffer_capacity = "250MJ",
		  input_flow_limit = "50MW",
		  usage_priority = "secondary-input"
		},
		charging_energy = "2500kW",

		robot_limit = 100,
		construction_radius = 48,
		spawn_and_station_height = 0.4,
		charge_approach_distance = 2.6,
		recharging_animation =
		{
		  filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
		  priority = "high",
		  width = 37,
		  height = 35,
		  frame_count = 16,
		  scale = 1.5,
		  animation_speed = 0.5
		},
		recharging_light = {intensity = 0.4, size = 5},
		stationing_offset = {0, -0.6},
		charging_station_shift = {0, 0.5},
		charging_station_count = 12,
		charging_distance = 2,
		charging_threshold_distance = 6,
		categories = {"vehicle-equipment"}
	},
	-- recipe
	{
		type = "recipe",
		name = "vehicle-roboport",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
		  {"roboport", 1},
		  {"advanced-circuit", 10},
		  {"k-steel", 5}
		},
		result = "vehicle-roboport"
    }  
-----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------- 
})