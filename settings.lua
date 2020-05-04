-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

data:extend(
{

-----------------------------------------------------------------------------------------------------------------
------------------------------------------------BASE-GAME-CHANGES------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

	{
		type = "bool-setting",
		name = "long-hands",
		setting_type = "startup",
		default_value = false,
		order = "a01"
	},
	{
		type = "bool-setting",
		name = "bonus-inventory",
		setting_type = "startup",
		default_value = false,
		order = "a02"
	},
	{
		type = "bool-setting",
		name = "bonus-items",
		setting_type = "startup",
		default_value = false,
		order = "a03"
	},
	{
		type = "bool-setting",
		name = "k_scale_info_icons",
		setting_type = "startup",
		default_value = true,
		order = "a05"
	},
	{
		type = "bool-setting",
		name = "reb-decorative-removal",
		setting_type = "startup",
		default_value = true,
		order = "a06"
	},
	{
		type = "bool-setting",
		name = "reb-oil",
		setting_type = "startup",
		default_value = true,
		order = "a07"
	},
	{
		type = "bool-setting",
		name = "reb-stack-size",
		setting_type = "startup",
		default_value = true,
		order = "a09-a"
	},
	{
		type = "bool-setting",
		name = "reb-rounds",
		setting_type = "startup",
		default_value = true,
		order = "a09-f"
	},
	{
		type = "bool-setting",
		name = "reb-power-poles",
		setting_type = "startup",
		default_value = true,
		order = "a10"
	},
	{
		type = "bool-setting",
		name = "reb-radar",
		setting_type = "startup",
		default_value = true,
		order = "a11"
	},
	{
		type = "bool-setting",
		name = "reb-fuel",
		setting_type = "startup",
		default_value = true,
		order = "a12"
	}, 
	{
		type = "bool-setting",
		name = "reb-damage",
		setting_type = "startup",
		default_value = true,
		order = "a13"
	},
	{
		type = "bool-setting",
		name = "reb-damage-technologies-bonuses",
		setting_type = "startup",
		default_value = true,
		order = "a14"
	},
	{
		type = "bool-setting",
		name = "reb-beacon",
		setting_type = "startup",
		default_value = true,
		order = "a15"
	},
	{
		type = "bool-setting",
		name = "productivity-beacon",
		setting_type = "startup",
		default_value = false,
		order = "a16"
	},
	{
		type = "bool-setting",
		name = "free-circuit-network-wire",
		setting_type = "startup",
		default_value = false,
		order = "a17"
	},
	{
		type = "bool-setting",
		name = "unlock-deep-drill",
		setting_type = "startup",
		default_value = false,
		order = "a18"
	},
	{
		type = "bool-setting",
		name = "disable-matter-is-science",
		setting_type = "startup",
		default_value = false,
		order = "a19"
	},	
	{
        type = "string-setting",
        name = "k-automation-science-pack-recipe",
        setting_type = "startup",
        default_value = "Krastorio",
        allowed_values = {"Factorio", "Krastorio"},
		order = "r1"
    },
	{
        type = "string-setting",
        name = "k-logistic-science-pack-recipe",
        setting_type = "startup",
        default_value = "Krastorio",
        allowed_values = {"Factorio", "Krastorio"},
		order = "r2"
    },
	{
        type = "string-setting",
        name = "k-military-science-pack-recipe",
        setting_type = "startup",
        default_value = "Krastorio",
        allowed_values = {"Factorio", "Krastorio"},
		order = "r3"
    },
	{
        type = "string-setting",
        name = "k-chemical-science-pack-recipe",
        setting_type = "startup",
        default_value = "Krastorio",
        allowed_values = {"Factorio", "Krastorio"},
		order = "r4"
    },
	{
        type = "string-setting",
        name = "k-production-science-pack-recipe",
        setting_type = "startup",
        default_value = "Krastorio",
        allowed_values = {"Factorio", "Krastorio"},
		order = "r5"
    },
	{
        type = "string-setting",
        name = "k-utility-science-pack-recipe",
        setting_type = "startup",
        default_value = "Krastorio",
        allowed_values = {"Factorio", "Krastorio"},
		order = "r6"
    },
	{
		type = "bool-setting",
		name = "k_more_waste",
		setting_type = "startup",
		default_value = false,
		order = "a99"
	}  		
})

-- Mod compatibility

if not mods["Clowns-Nuclear"] then

	data:extend(
	{
		{
			type = "bool-setting",
			name = "reb-nuclear",
			setting_type = "startup",
			default_value = true,
			order = "a08"
		}
	})
	
end	

-- infinite technology compatibility
if not mods["IndustrialRevolution"] then

	data:extend(
	{
		{
			type = "bool-setting",
			name = "keep-infinite-technology",
			setting_type = "startup",
			default_value = false,
			order = "a09-c"
		}
	})
	
end	

-- ores compatibility
if not mods["IndustrialRevolution"] then

	data:extend(
	{
		{
			type = "bool-setting",
			name = "reb-ore",
			setting_type = "startup",
			default_value = true,
			order = "a18"
		},
		{
			type = "bool-setting",
			name = "multy-ore",
			setting_type = "startup",
			default_value = true,
			order = "a19"
		}
	})
	
end	

-- train compatibility
if not mods["IndustrialRevolution"] then

	data:extend(
	{
		{
			type = "bool-setting",
			name = "reb-train",
			setting_type = "startup",
			default_value = true,
			order = "a12"
		}
	})
	
end		

-- circuits compatibility
if not (mods["IndustrialRevolution"] or mods["bobelectronics"]) then

	data:extend(
	{
		{
			type = "bool-setting",
			name = "reb-circuits",
			setting_type = "startup",
			default_value = true,
			order = "a9-d"
		}
	})
	
end
	
-- tech tree compatibility
if not (mods["IndustrialRevolution"] or mods["bobrevamp"]) then
	
	data:extend(
	{
		{
			type = "bool-setting",
			name = "reb-technology",
			setting_type = "startup",
			default_value = true,
			order = "a9-b"
		}
	})

end
  
-----------------------------------------------------------------------------------------------------------------
------------------------------------------------KRASTORIO-SETTING------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
   
data:extend(
{
   
	{
		type = "bool-setting",
		name = "loaders",
		setting_type = "startup",
		default_value = true,
		order = "b1"
	},
	{
		type = "bool-setting",
		name = "difficult-gold",
		setting_type = "startup",
		default_value = true,
		order = "b2"
	},
	{
		type = "bool-setting",
		name = "k_powerful-beacon",
		setting_type = "startup",
		default_value = false,
		order = "b3"
	}, 
	{
		type = "bool-setting",
		name = "easy-steel",
		setting_type = "startup",
		default_value = false,
		order = "b4"
	},
   
-----------------------------------------------------------------------------------------------------------------
------------------------------------------------OTHER-MODS-------------------------------------------------------
----------------------------------------------------------------------------------------------------------------- 

	{
		type = "bool-setting",
		name = "reb-bobenemies",
		setting_type = "startup",
		default_value = true,
		order = "c1"
	},

-----------------------------------------------------------------------------------------------------------------
------------------------------------------------ESTER EGG--------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

	{
		type = "bool-setting",
		name = "princessorio",
		setting_type = "startup",
		default_value = false,
		order = "z99"
	}
	
})

-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------