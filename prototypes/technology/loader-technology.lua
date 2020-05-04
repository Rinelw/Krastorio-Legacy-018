if settings.startup["loaders"] and settings.startup["loaders"].value then

	if data.raw.technology["logistics"] then
		table.insert(data.raw.technology["logistics"].effects, {type="unlock-recipe", recipe="loader-kr"})
	end

	if data.raw.technology["logistics-2"] then
		table.insert(data.raw.technology["logistics-2"].effects, {type="unlock-recipe", recipe="loader-kr-02"})
	end

	if data.raw.technology["logistics-3"] then
		table.insert(data.raw.technology["logistics-3"].effects, {type="unlock-recipe", recipe="loader-kr-03"})
	end

	if data.raw.technology["k-advanced-logistics"] then
		table.insert(data.raw.technology["k-advanced-logistics"].effects, 1, {type = "unlock-recipe", recipe = "loader-kr-04"})
	end
	
end
