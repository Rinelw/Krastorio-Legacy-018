-- -- -- PATHS
-----------------------------------------------------------------------------------------------------------------
krstr_entities_icon_path = "__KrastorioPorted__/graphics/icons/entities/"
-----------------------------------------------------------------------------------------------------------------

data:extend(
{
	
-----------------------------------------------------------------------------------------------------------------
------------------------------------------------REMNANTS---------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

	{
    type = "corpse",
    name = "k-tank-remnants",
    icon = "__KrastorioPorted__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    selection_box = {{-1.45, -2.35}, {1.45, 2.35}},
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    subgroup = "remnants",
    order="z[remnants]-a[generic]-b[medium]",
    time_before_removed = 60 * 60 * 20, -- 20 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__KrastorioPorted__/graphics/entity/remnants/k-tank-remnants.png",
      line_length = 1,
      width = 200,
      height = 165,
      frame_count = 1,
      direction_count = 1,
      --shift = util.by_pixel(0, 5),
	  hr_version =
          {
		  filename = "__KrastorioPorted__/graphics/entity/remnants/hr-k-tank-remnants.png",
		  line_length = 1,
		  width = 400,
		  height = 330,
		  frame_count = 1,
		  direction_count = 1,
		  --shift = util.by_pixel(0, 5),
		  scale = 0.5,
		  }
    })
	},

	{
    type = "corpse",
    name = "medium-k-remnants",
    icon = "__KrastorioPorted__/graphics/icons/remnants_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    subgroup = "remnants",
    order="z[remnants]-a[generic]-b[medium]",
    time_before_removed = 60 * 60 * 20, -- 20 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__KrastorioPorted__/graphics/entity/remnants/medium-k-remnants.png",
      line_length = 1,
      width = 175,
      height = 175,
      frame_count = 1,
      direction_count = 1,
      --shift = util.by_pixel(0, 5),
	  hr_version =
          {
		  filename = "__KrastorioPorted__/graphics/entity/remnants/hr-medium-k-remnants.png",
		  line_length = 1,
		  width = 350,
		  height = 350,
		  frame_count = 1,
		  direction_count = 1,
		  --shift = util.by_pixel(0, 5),
		  scale = 0.5,
		  }
    })
	},

	{
    type = "corpse",
    name = "big-k-remnants",
    icon = "__KrastorioPorted__/graphics/icons/remnants_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    subgroup = "remnants",
    order="z[remnants]-a[generic]-b[medium]",
    time_before_removed = 60 * 60 * 20, -- 20 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__KrastorioPorted__/graphics/entity/remnants/big-k-remnants.png",
      line_length = 1,
      width = 250,
      height = 250,
      frame_count = 1,
      direction_count = 1,
      --shift = util.by_pixel(0, 5),
	  hr_version =
          {
		  filename = "__KrastorioPorted__/graphics/entity/remnants/hr-big-k-remnants.png",
		  line_length = 1,
		  width = 500,
		  height = 500,
		  frame_count = 1,
		  direction_count = 1,
		  --shift = util.by_pixel(0, 5),
		  scale = 0.5,
		  }
    })
	},

	{
    type = "corpse",
    name = "huge-k-remnants",
    icon = "__KrastorioPorted__/graphics/icons/remnants_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    subgroup = "remnants",
    order="z[remnants]-a[generic]-b[medium]",
    time_before_removed = 60 * 60 * 20, -- 20 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__KrastorioPorted__/graphics/entity/remnants/huge-k-remnants.png",
      line_length = 1,
      width = 300,
      height = 300,
      frame_count = 1,
      direction_count = 1,
      --shift = util.by_pixel(0, 5),
	  hr_version =
          {
		  filename = "__KrastorioPorted__/graphics/entity/remnants/hr-huge-k-remnants.png",
		  line_length = 1,
		  width = 600,
		  height = 600,
		  frame_count = 1,
		  direction_count = 1,
		  --shift = util.by_pixel(0, 5),
		  scale = 0.5,
		  }
    })
	},
	
------------------------------------------------
	
	{
    type = "corpse",
    name = "big-krp-remnants",
    icon = krstr_entities_icon_path .. "antimatter_reactor_prototype_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    subgroup = "remnants",
    order="z[remnants]-a[generic]-b[medium]",
    time_before_removed = 60 * 60 * 20, -- 20 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__KrastorioPorted__/graphics/entity/remnants/big-krp-remnants.png",
      line_length = 1,
      width = 250,
      height = 250,
      frame_count = 1,
      direction_count = 1,
      --shift = util.by_pixel(0, 5),
      scale = 1.1,
	  hr_version =
          {
		  filename = "__KrastorioPorted__/graphics/entity/remnants/hr-big-krp-remnants.png",
		  line_length = 1,
		  width = 500,
		  height = 500,
		  frame_count = 1,
		  direction_count = 1,
		  --shift = util.by_pixel(0, 5),
		  scale = 0.55,
		  }
    })
	},
	
	{
    type = "corpse",
    name = "huge-kbr-remnants",
	icon = krstr_entities_icon_path .. "antimatter_reactor_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    subgroup = "remnants",
    order="z[remnants]-a[generic]-b[medium]",
    time_before_removed = 60 * 60 * 20, -- 20 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__KrastorioPorted__/graphics/entity/remnants/huge-kbr-remnants.png",
      line_length = 1,
      width = 300,
      height = 300,
      frame_count = 1,
      direction_count = 1,
      --shift = util.by_pixel(0, 5),
      scale = 1.1,
	  hr_version =
          {
		  filename = "__KrastorioPorted__/graphics/entity/remnants/hr-huge-kbr-remnants.png",
		  line_length = 1,
		  width = 600,
		  height = 600,
		  frame_count = 1,
		  direction_count = 1,
		  --shift = util.by_pixel(0, 5),
		  scale = 0.55,
		  }
    })
	},
	
	
	{
    type = "corpse",
    name = "huge-kfr-remnants",
	icon = "__KrastorioPorted__/graphics/icons/entities/mip/fusion-reactor.png",
    icon_size = 64,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
	selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    subgroup = "remnants",
    order="z[remnants]-a[generic]-b[medium]",
    time_before_removed = 60 * 60 * 20, -- 20 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__KrastorioPorted__/graphics/entity/remnants/fusion-reactor-remnants.png",
      line_length = 1,
      width = 550,
      height = 550,
      frame_count = 1,
      direction_count = 1,
	  shift = {1.01, 0},
	  hr_version =
          {
		  filename = "__KrastorioPorted__/graphics/entity/remnants/hr-fusion-reactor-remnants.png",
		  line_length = 1,
		  width = 1100,
		  height = 1100,
		  frame_count = 1,
		  direction_count = 1,
		  shift = {1.01, 0},
		  scale = 0.5,
		  }
    })
	},
	
	
	{
    type = "corpse",
    name = "huge-kf-remnants",
	icon = krstr_entities_icon_path .. "matter_factory_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    subgroup = "remnants",
    order="z[remnants]-a[generic]-b[medium]",
    time_before_removed = 60 * 60 * 20, -- 20 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__KrastorioPorted__/graphics/entity/remnants/huge-kf-remnants.png",
      line_length = 1,
      width = 300,
      height = 300,
      frame_count = 1,
      direction_count = 1,
      --shift = util.by_pixel(0, 5),
	  hr_version =
          {
		  filename = "__KrastorioPorted__/graphics/entity/remnants/hr-huge-kf-remnants.png",
		  line_length = 1,
		  width = 600,
		  height = 600,
		  frame_count = 1,
		  direction_count = 1,
		  --shift = util.by_pixel(0, 5),
		  scale = 0.5,
		  }
    })
	},
	
	{
    type = "corpse",
    name = "huge-kfc-remnants",
	icon = krstr_entities_icon_path .. "matter-converter_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    subgroup = "remnants",
    order="z[remnants]-a[generic]-b[medium]",
    time_before_removed = 60 * 60 * 20, -- 20 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__KrastorioPorted__/graphics/entity/remnants/huge-kfc-remnants.png",
      line_length = 1,
      width = 300,
      height = 300,
      frame_count = 1,
      direction_count = 1,
      --shift = util.by_pixel(0, 5),
	  hr_version =
          {
		  filename = "__KrastorioPorted__/graphics/entity/remnants/hr-huge-kfc-remnants.png",
		  line_length = 1,
		  width = 600,
		  height = 600,
		  frame_count = 1,
		  direction_count = 1,
		  --shift = util.by_pixel(0, 5),
		  scale = 0.5,
		  }
    })
	},
	
	
  {
    type = "corpse",
    name = "k-transport-belt-remnants",
    icon = krstr_entities_icon_path .. "k-transport-belt_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "not-on-map"},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    subgroup = "remnants",
    order="d[remnants]-a[generic]-a[small]",
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation =  make_rotated_animation_variations_from_sheet (8,
    {
      filename = "__KrastorioPorted__/graphics/entity/remnants/k-transport-belt-remnants.png",
      line_length = 1,
      width = 54,
      height = 52,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(1, 0),
      hr_version =
		{
		filename = "__KrastorioPorted__/graphics/entity/remnants/hr-k-transport-belt-remnants.png",
		line_length = 1,
		width = 106,
		height = 102,
		frame_count = 1,
		variation_count = 1,
		axially_symmetrical = false,
		direction_count = 1,
		shift = util.by_pixel(1, -0.5),
		scale = 0.5,
		},
    })
  },
  
  {
    type = "corpse",
    name = "k-splitter-remnants",
    icon = krstr_entities_icon_path .. "k-splitter_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "not-on-map"},
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
    tile_width = 2,
    tile_height = 1,
    selectable_in_game = false,
    subgroup = "remnants",
    order="d[remnants]-a[generic]-a[small]",
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation =
    {
      filename = "__KrastorioPorted__/graphics/entity/remnants/k-splitter-remnants.png",
      line_length = 1,
      width = 86,
      height = 78,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 4,
      shift = util.by_pixel(1, 3),
      hr_version =
		{
		filename = "__KrastorioPorted__/graphics/entity/remnants/hr-k-splitter-remnants.png",
		line_length = 1,
		width = 172,
		height = 156,
		frame_count = 1,
		variation_count = 1,
		axially_symmetrical = false,
		direction_count = 4,
		shift = util.by_pixel(1, 3),
		scale = 0.5,
		},
    }
  },
  
  {
    type = "corpse",
    name = "k-underground-belt-remnants",
    icon = krstr_entities_icon_path .. "k-underground-belt_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "not-on-map", "building-direction-8-way"},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    subgroup = "remnants",
    order="d[remnants]-a[generic]-a[small]",
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation =
    {
      filename = "__KrastorioPorted__/graphics/entity/remnants/k-underground-belt-remnants.png",
      line_length = 1,
      width = 60,
      height = 50,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 8,
      shift = util.by_pixel(4, 3),
      hr_version =
		{
		filename = "__KrastorioPorted__/graphics/entity/remnants/hr-k-underground-belt-remnants.png",
		line_length = 1,
		width = 116,
		height = 100,
		frame_count = 1,
		variation_count = 1,
		axially_symmetrical = false,
		direction_count = 8,
		shift = util.by_pixel(3.5, 3.5),
		scale = 0.5,
		},
    }
  },
  
  {
    type = "corpse",
    name = "imersite-solar-panel-remnants",
    icon = krstr_entities_icon_path .. "imersite-solar-panel_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "not-on-map"},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    subgroup = "remnants",
    order="d[remnants]-a[generic]-a[small]",
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet (2,
    {
      filename = "__KrastorioPorted__/graphics/entity/remnants/hr-imersite-solar-panel-remnants.png",
      line_length = 1,
      width = 131,
      height = 116,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(5.5, 2.5),
	  hr_version =
		{
		filename = "__KrastorioPorted__/graphics/entity/remnants/hr-imersite-solar-panel-remnants.png",
		line_length = 1,
		width = 262,
		height = 232,
		frame_count = 1,
		variation_count = 1,
		axially_symmetrical = false,
		direction_count = 1,
		shift = util.by_pixel(5.5, 2.5),
		scale = 0.5,
		}
    })
  },
  
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
})