-- All liquid added by Krastorio
-- "kr-void" fluid is for recipe that have empty products, is not a real game resources

data:extend(
{
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------- 
	-- kr-void
	{
		type = "fluid",
		name = "kr-void",
		default_temperature = 25,
		flags = {"hidden"},
		auto_barrel = false,
		base_color = {r=0.05, g=0.05, b=0.05},
		flow_color = {r=0.05, g=0.05, b=0.5},
		max_temperature = 100,
		icon = "__Krastorio__/graphics/icons/void.png",
		icon_size = 32,
		order = "y2[kr-void]"
    },
	-- k-pure-water
	{
		type = "fluid",
		name = "k-pure-water",
		default_temperature = 25,
		max_temperature = 100,
		auto_barrel = true,
		base_color = {r=0.1, g=0.8, b=0.95},
		flow_color = {r=0.1, g=0.8, b=0.95},
		icon = "__Krastorio__/graphics/icons/pure-water.png",
		icon_size = 32,
		order = "y1[k-pure-water]"
    },
	-- k-salt-water
	{
		type = "fluid",
		name = "k-salt-water",
		default_temperature = 25,
		max_temperature = 100,
		auto_barrel = true,
		base_color = {r=0.4, g=0.75, b=0.80},
		flow_color = {r=0.5, g=0.85, b=0.85},
		icon = "__Krastorio__/graphics/icons/salt-water.png",
		icon_size = 32,
		order = "y1[k-salt-water]"
    },
	-- k-dirty-water
	{
		type = "fluid",
		name = "k-dirty-water",
		default_temperature = 25,
		max_temperature = 100,
		auto_barrel = true,
		base_color = {r=0.65, g=0.50, b=0.20},
		flow_color = {r=0.65, g=0.50, b=0.20},
		icon = "__Krastorio__/graphics/icons/dirty-water.png",
		icon_size = 32,
		order = "y2[k-dirty-water]"
    },
	-- k-ammonia
	{
		type = "fluid",
		name = "k-ammonia",
		default_temperature = 25,
		max_temperature = 100,
		auto_barrel = true,
		base_color = {r=0.25, g=0.25, b=0.45},
		flow_color = {r=0.25, g=0.25, b=0.45},
		icon = "__Krastorio__/graphics/icons/ammonia.png",
		icon_size = 32,
		order = "y2[k-ammonia]"
    },
	-- k-chlorine
	{
		type = "fluid",
		name = "k-chlorine",
		default_temperature = 15,
		max_temperature = 100,
		auto_barrel = true,
		base_color = {r=0.30, g=0.60, b=0.1},
		flow_color = {r=0.30, g=0.60, b=0.1},
		gas_temperature = 15,
		icon = "__Krastorio__/graphics/icons/chlorine.png",
		icon_size = 32,
		order = "y2[k-chlorine]"
    },
	-- k-hydrogen
	{
		type = "fluid",
		name = "k-hydrogen",
		default_temperature = 15,
		max_temperature = 100,
		auto_barrel = true,
		base_color = {r=0.50, g=0.50, b=0.50},
		flow_color = {r=0.50, g=0.50, b=0.50},
		gas_temperature = 15,
		icon = "__Krastorio__/graphics/icons/hydrogen.png",
		icon_size = 32,
		order = "y2[k-hydrogen]"
    },
	-- k-nitrogen
	{
		type = "fluid",
		name = "k-nitrogen",
		default_temperature = 15,
		max_temperature = 100,
		auto_barrel = true,
		base_color = {r=0.05, g=0.10, b=0.50},
		flow_color = {r=0.05, g=0.10, b=0.50},
		gas_temperature = 15,
		icon = "__Krastorio__/graphics/icons/nitrogen.png",
		icon_size = 32,
		order = "y2[k-nitrogen]"
    },
	-- k-oxygen
	{
		type = "fluid",
		name = "k-oxygen",
		default_temperature = 15,
		max_temperature = 100,
		auto_barrel = true,
		base_color = {r=0.75, g=0.40, b=0.40},
		flow_color = {r=0.80, g=0.60, b=0.60},
		gas_temperature = 15,
		icon = "__Krastorio__/graphics/icons/oxygen.png",
		icon_size = 32,
		order = "y2[k-oxygen]"
    },
	-- k-nitric-acid
	{
		type = "fluid",
		name = "k-nitric-acid",
		default_temperature = 15,
		max_temperature = 100,
		auto_barrel = true,
		base_color = {r=0.50, g=0.35, b=0.20},
		flow_color = {r=0.50, g=0.35, b=0.20},
		gas_temperature = 15,
		icon = "__Krastorio__/graphics/icons/nitric-acid.png",
		icon_size = 32,
		order = "y2[k-nitric-acid]"
    },
	-- k-hydrogen-chloride
	{
		type = "fluid",
		name = "k-hydrogen-chloride",
		default_temperature = 15,
		max_temperature = 100,
		auto_barrel = true,
		base_color = {r=0.50, g=0.75, b=0.30},
		flow_color = {r=0.50, g=0.75, b=0.30},
		gas_temperature = 15,
		icon = "__Krastorio__/graphics/icons/mip/hydrogen-chloride.png",
		icon_size = 64,
		icon_mipmaps = 1,
		pictures =
		{
			{ size = 64, filename = "__Krastorio__/graphics/icons/mip/hydrogen-chloride.png", scale = 0.25, mipmap_count = 4 }
		}, 
		order = "y2[k-hydrogen-chloride]"
    },
	-- k-matter
    {
		type = "fluid",
		name = "k-matter",
		default_temperature = 25,
		auto_barrel = true,
		base_color = {r=0.10, g=1, b=0.90},
		flow_color = {r=0.15, g=1, b=1},
		max_temperature = 1000,
		icon = "__Krastorio__/graphics/icons/mip/matter.png",
		icon_size = 64,
		icon_mipmaps = 1,
		pictures =
		{
			{ size = 64, filename = "__Krastorio__/graphics/icons/mip/matter.png",   scale = 0.25, mipmap_count = 4 }
		}, 
		order = "z[k-matter]"
    }
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------- 
})
