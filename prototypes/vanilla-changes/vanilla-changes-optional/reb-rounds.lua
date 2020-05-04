-- -- Change bullets recipe chaining
if settings.startup["reb-rounds"] and settings.startup["reb-rounds"].value then
	
	-- Firearm magazine
	aswil.recipes.overrideIngredients
	(
		"firearm-magazine",
		{
		  {"coal", 1},
		  {"iron-plate", 1}
		}
	)
	
	-- Piercing rounds magazine
	aswil.recipes.overrideIngredients
	(
		"piercing-rounds-magazine",
		{
		  {"firearm-magazine", 1},
		  {"copper-plate", 1},
		  {"steel-plate", 1}
		}
	)
	
	-- Shotgun shell
	data.raw.ammo["shotgun-shell"].magazine_size = 6
	aswil.recipes.overrideIngredients
	(
		"shotgun-shell",
		{
		  {"coal", 2},
		  {"copper-plate", 1},
		  {"iron-plate", 1}
		}
	)
	
	-- Piercing shotgun shell
	data.raw.ammo["piercing-shotgun-shell"].magazine_size = 6
	aswil.recipes.overrideIngredients
	(
		"piercing-shotgun-shell",
		{
		  {"shotgun-shell", 1},
		  {"steel-plate", 2}
		}
	)	
	
end
