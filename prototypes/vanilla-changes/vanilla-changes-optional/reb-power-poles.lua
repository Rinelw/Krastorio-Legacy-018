-- -- Improve power poles chaining
if settings.startup["reb-power-poles"] and settings.startup["reb-power-poles"].value then
	
	data.raw["electric-pole"]["small-electric-pole"].maximum_wire_distance = 8.5
	data.raw["electric-pole"]["small-electric-pole"].supply_area_distance = 3.5
	
	data.raw["electric-pole"]["medium-electric-pole"].maximum_wire_distance = 13.5
	data.raw["electric-pole"]["medium-electric-pole"].supply_area_distance = 6.5
	
	data.raw["electric-pole"]["substation"].maximum_wire_distance = 24.5
	data.raw["electric-pole"]["substation"].supply_area_distance = 12
  
	data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance = 32
	data.raw["electric-pole"]["big-electric-pole"].supply_area_distance = 3
	
end