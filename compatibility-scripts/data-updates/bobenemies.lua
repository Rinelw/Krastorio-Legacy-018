if settings.startup["reb-bobenemies"].value then
	if mods["bobenemies"] then

		data.raw.unit["bob-big-piercing-biter"].max_health = 450
		data.raw.unit["bob-huge-acid-biter"].max_health = 800
		data.raw.unit["bob-huge-explosive-biter"].max_health = 700
		data.raw.unit["bob-giant-poison-biter"].max_health = 1750
		data.raw.unit["bob-giant-fire-biter"].max_health = 1750
		data.raw.unit["bob-titan-biter"].max_health = 3750
		data.raw.unit["bob-behemoth-biter"].max_health = 5000
		data.raw.unit["bob-leviathan-biter"].max_health = 15000
		data.raw.unit["bob-leviathan-biter"].movement_speed = 0.25

		data.raw.unit["bob-big-electric-spitter"].max_health = 250
		data.raw.unit["bob-huge-explosive-spitter"].max_health = 400
		data.raw.unit["bob-huge-acid-spitter"].max_health = 500
		data.raw.unit["bob-giant-fire-spitter"].max_health = 800
		data.raw.unit["bob-giant-poison-spitter"].max_health = 850
		data.raw.unit["bob-titan-spitter"].max_health = 2500
		data.raw.unit["bob-behemoth-spitter"].max_health = 3500
		data.raw.unit["bob-leviathan-spitter"].max_health = 10000
		data.raw.unit["bob-leviathan-spitter"].movement_speed = 0.18


		data.raw.turret["bob-big-explosive-worm-turret"].max_health = 1250
		data.raw.turret["bob-big-fire-worm-turret"].max_health = 1250
		data.raw.turret["bob-big-poison-worm-turret"].max_health = 1250
		data.raw.turret["bob-big-piercing-worm-turret"].max_health = 1250
		data.raw.turret["bob-big-electric-worm-turret"].max_health = 1250
		data.raw.turret["bob-giant-worm-turret"].max_health = 3750
	  
	end
end