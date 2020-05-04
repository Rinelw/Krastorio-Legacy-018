-- -- -- UPDATED IN VERSION 1.2.0
-- -- Global Equipments Variables

-- Notes: (is better readme before look other files) 
--[[
	Equimpent categories:
	--
		"armor" --> characters only (for compability with other mods, we don't know in what categories other mod wil add equipment, better leave it only to characters)
	
		"universal-equipment" --> all things that have a grid (that Krastorio know existence)
	
		"vehicle-equipment" --> vehicle only (cars, tanks and trains, again, that Krastorio know existence)
	
		"vehicle-motor" --> vehicle only, that have a motor (cars, tanks and locomotive, again, that Krastorio know existence)
	
		"aircraft-equipment" --> all air modded vehicle (for exemple look aircraft mod, again, that Krastorio know existence)
	
	Energy generated by equipment:
	--
		Equipment energy generated is balanced on this formula:
		power = 50kW * grid_cells_occupied * tier_multiplier * big_version_multiplier
	    (solar panel is useless, and with this formula will be boosted)		
--]]

-- -- Global Statistics

-- For not solar panels
-- power = 50kW * grid_cells_occupied * tier_multiplier * big_version_multiplier
-- Tier 1
small_portable_generator_power           = "200kW" -- 50kW * 4  * 1 * 1
portable_generator_power                 = "540kW" -- 50kW * 9  * 1 * 1.2
-- Tier 2
portable_nuclear_core_power              = "2.4MW" -- 50kW * 16 * 3 * 1
-- Tier 3
portable_fusion_reactor_power            = "3.2MW" -- 50kW * 16 * 4 * 1
-- Tier 4
portable_antimaterial_core_power         = "4.0MW" -- 50kW * 16 * 5 * 1

-- For solar panels
-- power = 40kW * grid_cells_occupied * tier_multiplier * big_version_multiplier
-- Tier 1
solar_panel_equipment_power              = "40kW"  -- 40kW * 1  * 1 * 1
big_solar_panel_equipment_power          = "192kW" -- 40kW * 4  * 1 * 1.2
-- Tier 2
imersite_solar_panel_equipment_power     = "80kW"  -- 40kW * 1  * 2 * 1
big_imersite_solar_panel_equipment_power = "384kW" -- 40kW * 4  * 2 * 1.2
-- Tier 3
-- Tier 4

-- -- Adding new equipments (in right order)
require("equipment-vehicle")
require("universal-equipment")
require("equipment-character")
require("equipment-technology")

-- Change old equipments, loading new parts (in right order)
require("prototypes.equipment.vanilla-equipment-modification")