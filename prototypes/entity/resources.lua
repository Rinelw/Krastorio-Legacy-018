-- -- Adding or not optional chlorine mining requisite
local goldplusfluid
if settings.startup["difficult-gold"].value then 
	goldplusfluid =
	{
		hardness = 1,
		mining_particle = "copper-ore-particle",
		mining_time = 1,
		result = "gold-ore",
		fluid_amount = 10,
		required_fluid = "k-chlorine"
	}
else 
	goldplusfluid = 
	{
		hardness = 1,
		mining_particle = "copper-ore-particle",
		mining_time = 1,
		result = "gold-ore",
	}
end

-- -- Adding new resources
data:extend(
{	
-----------------------------------------------------------------------------------------------------------------
------------------------------------------------RESOURCES--------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	-- SAND
	{
		type = "resource",
		name = "sand",
		icon = "__Krastorio__/graphics/icons/sand.png",
		icon_size = 32,
		flags = {"placeable-neutral"},
		order="a-b-a",
		tree_removal_probability = 0.9,
		tree_removal_max_distance = 32 * 32,
		minable =
		{
		  hardness = 0.9,
		  mining_particle = "stone-particle",
		  mining_time = 0.5,
		  result = "sand",
		  --- fluid_amount = 100,
		  --- required_fluid = "steam"
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace = resource_autoplace.resource_autoplace_settings
		{
			name = "sand",
			order = "b",
			base_density = 6,
			base_spots_per_km2 = 1,
			has_starting_area_placement = true,
			random_spot_size_minimum = 0.5,
			random_spot_size_maximum = 3.5,
			regular_blob_amplitude_multiplier = 1.2,
			richness_post_multiplier = 1,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1.1,
			candidate_spot_count = 22
		},
		stage_counts = {15000, 9000, 5000, 3500, 1500, 500, 350, 100},
		stages =
		{
		  sheet =
		  {
			filename = "__Krastorio__/graphics/entity/resources/sand.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			frame_count = 8,
			variation_count = 8,
			hr_version =
			{
			  filename = "__Krastorio__/graphics/entity/resources/hr-sand.png",
			  priority = "extra-high",
			  width = 128,
			  height = 128,
			  frame_count = 8,
			  variation_count = 8,
			  scale = 0.5
			}
		  }
		},
		map_color = {r=0.9, g=0.85, b=0.8}
	},
	
-----------------------------------
	
	{
		type = "autoplace-control",
		name = "sand",
		richness = true,
		order = "b-i",
		category = "resource"
	},
	{
		type = "noise-layer",
		name = "sand"
	},
	
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	-- GOLD
	{
		type = "resource",
		name = "gold-ore",
		icon = "__Krastorio__/graphics/icons/gold-ore.png",
		icon_size = 32,
		flags = {"placeable-neutral"},
		order="a-b-a",
		tree_removal_probability = 0.9,
		tree_removal_max_distance = 32 * 32,
		minable = goldplusfluid,
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace = resource_autoplace.resource_autoplace_settings
		{
			name = "gold-ore",
			order = "c",
			base_density = 5,
			base_spots_per_km2 = 0.75,
			has_starting_area_placement = false,
			random_spot_size_minimum = 0.25,
			random_spot_size_maximum = 2,
			regular_blob_amplitude_multiplier = 1.2,
			richness_post_multiplier = 1,
			regular_rq_factor_multiplier = 1.1,
			candidate_spot_count = 22
		},
		stage_counts = {15000, 9000, 5000, 3500, 1500, 500, 350, 100},
		stages =
		{
		  sheet =
		  {
			filename = "__Krastorio__/graphics/entity/resources/gold-ore.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			frame_count = 8,
			variation_count = 8,
			hr_version =
			{
			  filename = "__Krastorio__/graphics/entity/resources/hr-gold-ore.png",
			  priority = "extra-high",
			  width = 128,
			  height = 128,
			  frame_count = 8,
			  variation_count = 8,
			  scale = 0.5
			}
		  }
		},
		map_color = {r=1, g=0.8, b=0}
	},
	
-----------------------------------
	
	{
		type = "autoplace-control",
		name = "gold-ore",
		richness = true,
		order = "b-j",
		category = "resource"
	},
	{
		type = "noise-layer",
		name = "gold-ore"
	},


-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	-- RICH ROCKS
	{
		type = "resource",
		name = "rich-rock",
		icon = "__Krastorio__/graphics/icons/raw.png",
		icon_size = 32,
		flags = {"placeable-neutral"},
		order="a-b-a",
		tree_removal_probability = 0,
		tree_removal_max_distance = 0,
		minable =
			{
			hardness = 2,
			mining_particle = "stone-particle",
			mining_time = 3,
			result = "k-raw-chunk",
			fluid_amount = 50,
			required_fluid = "water"
			},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace = resource_autoplace.resource_autoplace_settings
		{
			name = "rich-rock",
			order = "d",
			base_density = 5,
			base_spots_per_km2 = 0.75,
			has_starting_area_placement = false,
			random_spot_size_minimum = 0.25,
			random_spot_size_maximum = 2,
			regular_blob_amplitude_multiplier = 1.2,
			richness_post_multiplier = 50,
			regular_rq_factor_multiplier = 1.1,
			candidate_spot_count = 22
		},
		stage_counts = {500000, 250000, 100000, 50000, 25000, 10000, 5000, 1000},
		stages =
		{
		  sheet =
		  {
			filename = "__Krastorio__/graphics/entity/resources/rich-rock.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			frame_count = 8,
			variation_count = 8,
			hr_version =
			{
				filename = "__Krastorio__/graphics/entity/resources/hr-rich-rock.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5
			}
		  }
		},
		stages_effect =
		{
		  sheet =
		  {
			filename = "__Krastorio__/graphics/entity/resources/rich-rock-glow.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			frame_count = 8,
			variation_count = 8,
			blend_mode = "additive",
			flags = {"light"},
			hr_version =
			{
				filename = "__Krastorio__/graphics/entity/resources/hr-rich-rock-glow.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				frame_count = 8,
				variation_count = 8,
				scale = 0.5,
				blend_mode = "additive",
				flags = {"light"}
			}
		  }
		},
		effect_animation_period = 5,
		effect_animation_period_deviation = 1,
		effect_darkness_multiplier = 5,
		min_effect_alpha = 0.2,
		max_effect_alpha = 0.3,
		map_color = {r=0.5, g=0.3, b=0.5}
	},
	
-----------------------------------
	
	{
		type = "autoplace-control",
		name = "rich-rock",
		richness = true,
		order = "b-h",
		category = "resource"
	},
	{
		type = "noise-layer",
		name = "rich rock"
	},


-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	-- MENARITE
	{
        type = "resource-category",
        name = "gk-res"
    },
	  
	{
		type = "resource",
		name = "menarite",
		icon = "__Krastorio__/graphics/icons/menarite-g.png",
		icon_size = 32,
		flags = {"placeable-neutral"},
		category = "gk-res",
		order="a-b-a",
		infinite = false,
		highlight = true,
		minimum = 100,
		normal = 500,
		infinite_depletion_amount = 10,
		resource_patch_search_radius = 12,
		tree_removal_probability = 1,
		tree_removal_max_distance = 32 * 32,
		minable =
		{
		  hardness = 1,
		  --mining_particle = "steel-plate",
		  mining_time = 1,
		  result = "raw-menarite",
		  --fluid_amount = 10,
		  --required_fluid = "steam"
		},
		collision_box = {{ -3.4, -3.4}, {3.4, 3.4}},
		selection_box = {{ -3.5, -3.5}, {3.5, 3.5}},
		autoplace = resource_autoplace.resource_autoplace_settings
		{
			name = "menarite",
			order = "e",
			base_density = 1,
			base_spots_per_km2 = 0.25,
			has_starting_area_placement = false,
			random_spot_size_minimum = 0.01,
			random_spot_size_maximum = 0.1,
			regular_blob_amplitude_multiplier = 1,
			richness_post_multiplier = 0.8,
			additional_richness = 300000,
			regular_rq_factor_multiplier = 0.1,
			candidate_spot_count = 22
		},
		stage_counts = {0},
		stages =
		{
		  sheet =
		  {
			filename = "__Krastorio__/graphics/entity/resources/menarite-rift.png",
			priority = "extra-high",
			width = 250,
			height = 250,
			frame_count = 3,
			variation_count = 1,
			hr_version =
				{
				filename = "__Krastorio__/graphics/entity/resources/hr-menarite-rift.png",
				priority = "extra-high",
				width = 500,
				height = 500,
				frame_count = 3,
				variation_count = 1,
				scale = 0.5,
				}
		  }
		},
		stages_effect =
		{
		  sheet =
		  {
			filename = "__Krastorio__/graphics/entity/resources/menarite-rift-glow.png",
			priority = "extra-high",
			width = 250,
			height = 250,
			frame_count = 3,
			variation_count = 1,
			blend_mode = "additive",
			flags = {"light"},
			hr_version =
			{
				filename = "__Krastorio__/graphics/entity/resources/hr-menarite-rift-glow.png",
				priority = "extra-high",
				width = 500,
				height = 500,
				frame_count = 3,
				variation_count = 1,
				scale = 0.5,
			  blend_mode = "additive",
			  flags = {"light"}
			}
		  }
		},
		effect_animation_period = 5,
		effect_animation_period_deviation = 1,
		effect_darkness_multiplier = 3.5,
		min_effect_alpha = 0.2,
		max_effect_alpha = 0.3,
		map_color = {r=0.1, g=0.75, b=1},
		map_grid = false
	},
	
-----------------------------------

	{
		type = "autoplace-control",
		name = "menarite",
		richness = true,
		order = "b-k",
		category = "resource"
	},
	{
		type = "noise-layer",
		name = "menarite"
	},
	
-----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------- 
	-- IMERSITE  
	{
		type = "resource",
		name = "imersite",
		icon = "__Krastorio__/graphics/icons/imersite-g.png",
		icon_size = 32,
		flags = {"placeable-neutral"},
		category = "gk-res",
		order="a-b-a",
		infinite = false,
		highlight = true,
		minimum = 50,
		normal = 350,
		infinite_depletion_amount = 10,
		resource_patch_search_radius = 12,
		tree_removal_probability = 1,
		tree_removal_max_distance = 32 * 32,
		minable =
		{
		  hardness = 1,
		  --mining_particle = "steel-plate",
		  mining_time = 2,
		  result = "raw-imersite",
		  --fluid_amount = 10,
		  --required_fluid = "steam"
		},
		collision_box = {{ -3.4, -3.4}, {3.4, 3.4}},
		selection_box = {{ -3.5, -3.5}, {3.5, 3.5}},
		autoplace = resource_autoplace.resource_autoplace_settings
		{
			name = "imersite",
			order = "f",
			base_density = 1,
			base_spots_per_km2 = 0.2,
			has_starting_area_placement = false,
			random_spot_size_minimum = 0.01,
			random_spot_size_maximum = 0.1,
			regular_blob_amplitude_multiplier = 1,
			richness_post_multiplier = 0.8,
			additional_richness = 250000,
			regular_rq_factor_multiplier = 0.1,
			candidate_spot_count = 22
		},
		stage_counts = {0},
		stages =
		{
		  sheet =
		  {
			filename = "__Krastorio__/graphics/entity/resources/imersite-rift.png",
			priority = "extra-high",
			width = 250,
			height = 250,
			frame_count = 3,
			variation_count = 1,
			hr_version =
				{
				filename = "__Krastorio__/graphics/entity/resources/hr-imersite-rift.png",
				priority = "extra-high",
				width = 500,
				height = 500,
				frame_count = 3,
				variation_count = 1,
				scale = 0.5,
				}
		  }
		},
		stages_effect =
		{
		  sheet =
		  {
			filename = "__Krastorio__/graphics/entity/resources/imersite-rift-glow.png",
			priority = "extra-high",
			width = 250,
			height = 250,
			frame_count = 3,
			variation_count = 1,
			blend_mode = "additive",
			flags = {"light"},
			hr_version =
			{
				filename = "__Krastorio__/graphics/entity/resources/hr-imersite-rift-glow.png",
				priority = "extra-high",
				width = 500,
				height = 500,
				frame_count = 3,
				variation_count = 1,
				scale = 0.5,
			  blend_mode = "additive",
			  flags = {"light"}
			}
		  }
		},
		effect_animation_period = 5,
		effect_animation_period_deviation = 1,
		effect_darkness_multiplier = 3.5,
		min_effect_alpha = 0.2,
		max_effect_alpha = 0.3,
		map_color = {r=1, g=0.5, b=1},
		map_grid = false
	},

-----------------------------------
	
	{
		type = "autoplace-control",
		name = "imersite",
		richness = true,
		order = "b-k",
		category = "resource"
	},
	{
		type = "noise-layer",
		name = "imersite"
	}
		
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
})