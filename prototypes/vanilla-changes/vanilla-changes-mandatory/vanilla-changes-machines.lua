-- -- -- Vanilla machines stat modifications

-- Electric furnace
if data.raw["furnace"]["electric-furnace"] then
	data.raw["furnace"]["electric-furnace"].energy_usage = "350kW"
	data.raw["furnace"]["electric-furnace"].energy_source.emissions_per_minute = 1
	table.insert(data.raw["furnace"]["electric-furnace"].crafting_categories, "coke-smelting")
end

-- Assembler machine 3
if data.raw["assembling-machine"]["assembling-machine-3"] then
	data.raw["assembling-machine"]["assembling-machine-3"].crafting_speed = 1
end
	
-- Laboratory
if data.raw.lab["lab"] then
	data.raw.lab["lab"].energy_usage = "250kW"
end

-- --  Mining drills
----------------------------------------
-- Burner mining drill
if data.raw["mining-drill"]["burner-mining-drill"] then
	data.raw["mining-drill"]["burner-mining-drill"].energy_source.emissions_per_minute = 5
	data.raw["mining-drill"]["burner-mining-drill"].energy_usage = "100kW"
end

-- Electric mining drill
if data.raw["mining-drill"]["electric-mining-drill"] then
	data.raw["mining-drill"]["electric-mining-drill"].energy_source.emissions_per_minute = 7.5
	data.raw["mining-drill"]["electric-mining-drill"].energy_usage = "100kW"
	data.raw["mining-drill"]["electric-mining-drill"].module_specification.module_slots = 2
end
----------------------------------------