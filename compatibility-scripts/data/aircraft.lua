if mods["Aircraft"] then	
	
	-- Remove obsolete items	
	data.raw.item["aircraft-energy-shield"] = nil
	data.raw.recipe["aircraft-energy-shield"] = nil
	data.raw["energy-shield-equipment"]["aircraft-energy-shield"] = nil -- equipment
	data.raw.technology["aircraft-energy-shield"] = nil

end