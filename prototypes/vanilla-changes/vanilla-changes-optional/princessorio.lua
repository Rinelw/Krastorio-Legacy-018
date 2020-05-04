--Don't press this button!

if settings.startup["princessorio"] and settings.startup["princessorio"].value then 

	data.raw.gun["rocket-launcher"].attack_parameters.sound =
	{
		{
			filename = "__Krastorio__/sound/ohboiii/j-rs.ogg",
			volume = 1
		}
	} 
	data.raw.gun["tank-cannon"].attack_parameters.sound =
	{
		{
			filename = "__Krastorio__/sound/ohboiii/j-gs.ogg",
			volume = 1
		}
	}
	data.raw.gun["artillery-wagon-cannon"].attack_parameters.sound =
	{
		{
			filename = "__Krastorio__/sound/ohboiii/j-ms.ogg",
			volume = 1
		}
	}	  
	
end
