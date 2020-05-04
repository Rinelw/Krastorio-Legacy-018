data:extend(
{
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	-- item  
 
	{
    type = "item",
    name = "superior-inserter",
    icon = krstr_entities_icon_path .. "superior-inserter.png",
    icon_size = 32,
    subgroup = "k-inserter",
    order = "a1[superior-inserter]",
    place_result = "superior-inserter",
    stack_size = 50
	},
	
	{
    type = "item",
    name = "superior-long-inserter",
    icon = krstr_entities_icon_path .. "superior-long-inserter.png",
    icon_size = 32,
    subgroup = "k-inserter",
    order = "a2[superior-long-inserter]",
    place_result = "superior-long-inserter",
    stack_size = 50
	},
	
	{
    type = "item",
    name = "superior-filter-inserter",
    icon = krstr_entities_icon_path .. "superior-filter-inserter.png",
    icon_size = 32,
    subgroup = "k-inserter",
    order = "a3[superior-filter-inserter]",
    place_result = "superior-filter-inserter",
    stack_size = 50
	},
	
	{
    type = "item",
    name = "superior-long-filter-inserter",
    icon = krstr_entities_icon_path .. "superior-long-filter-inserter.png",
    icon_size = 32,
    subgroup = "k-inserter",
    order = "a4[superior-long-filter-inserter]",
    place_result = "superior-long-filter-inserter",
    stack_size = 50
	},
	
	-- remnants
	
	{
    type = "corpse",
    name = "superior-inserter-remnants",
    icon = krstr_entities_icon_path .. "superior-inserter.png",
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
    animation = make_rotated_animation_variations_from_sheet (3,
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/remnants/superior-inserter-remnants.png",
      line_length = 1,
      width = 52,
      height = 42,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(1, 5),
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/remnants/hr-superior-inserter-remnants.png",
        line_length = 1,
        width = 102,
        height = 80,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(0.5, 4.5),
        scale = 0.5,
      },
    })
	},
	
	-- superior-inserter
	
	{
    type = "inserter",
    name = "superior-inserter",
    icon = krstr_entities_icon_path .. "superior-inserter.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    stack = true,
    minable = { mining_time = 0.1, result = "superior-inserter" },
    max_health = 200,
    corpse = "superior-inserter-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    energy_per_movement = "12KJ",
    energy_per_rotation = "12KJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1kW"
    },
    extension_speed = 0.105,
    rotation_speed = 0.06,
    fast_replaceable_group = "inserter",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-fast-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-5.ogg",
          volume = 0.75
        }
      }
    },
    hand_base_picture =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-hand-base.png",
        priority = "extra-high",
        width = 32,
        height = 136,
        scale = 0.25
      }
    },
    hand_closed_picture =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-hand-closed.png",
      priority = "extra-high",
      width = 24,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-hand-closed.png",
        priority = "extra-high",
        width = 100,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_picture =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-hand-open.png",
      priority = "extra-high",
      width = 32,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-hand-open.png",
        priority = "extra-high",
        width = 130,
        height = 164,
        scale = 0.25
      }
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 33,
      hr_version =
      {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
        priority = "extra-high",
        width = 32,
        height = 132,
        scale = 0.25
      }
    },
    hand_closed_shadow =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 24,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-hand-closed-shadow.png",
        priority = "extra-high",
        width = 100,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_shadow =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 32,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-hand-open-shadow.png",
        priority = "extra-high",
        width = 130,
        height = 164,
        scale = 0.25
      }
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.09375, 0},
        hr_version =
        {
          filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-platform.png",
          priority = "extra-high",
          width = 105,
          height = 79,
          shift = util.by_pixel(1.5, 7.5-1),
          scale = 0.5
        }
      }
    },
    circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
    circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_stack_control_input_signal = inserter_default_stack_control_input_signal
	},
	
	-- superior-long-inserter
	
	{
    type = "inserter",
    name = "superior-long-inserter",
    icon = krstr_entities_icon_path .. "superior-long-inserter.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    stack = true,
    minable = { mining_time = 0.1, result = "superior-long-inserter" },
    max_health = 200,
    corpse = "superior-inserter-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = {0, -2},
    insert_position = {0, 2.2},
    energy_per_movement = "13KJ",
    energy_per_rotation = "13KJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1kW"
    },
    extension_speed = 0.105,
    rotation_speed = 0.06,
    fast_replaceable_group = "inserter",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-fast-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-5.ogg",
          volume = 0.75
        }
      }
    },
    hand_base_picture =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-hand-base.png",
        priority = "extra-high",
        width = 32,
        height = 136,
        scale = 0.25
      }
    },
    hand_closed_picture =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-long-inserter-hand-closed.png",
      priority = "extra-high",
      width = 24,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-long-inserter-hand-closed.png",
        priority = "extra-high",
        width = 100,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_picture =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-long-inserter-hand-open.png",
      priority = "extra-high",
      width = 32,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-long-inserter-hand-open.png",
        priority = "extra-high",
        width = 130,
        height = 164,
        scale = 0.25
      }
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 33,
      hr_version =
      {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
        priority = "extra-high",
        width = 32,
        height = 132,
        scale = 0.25
      }
    },
    hand_closed_shadow =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 24,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-hand-closed-shadow.png",
        priority = "extra-high",
        width = 100,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_shadow =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 32,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-hand-open-shadow.png",
        priority = "extra-high",
        width = 130,
        height = 164,
        scale = 0.25
      }
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.09375, 0},
        hr_version =
        {
          filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-platform.png",
          priority = "extra-high",
          width = 105,
          height = 79,
          shift = util.by_pixel(1.5, 7.5-1),
          scale = 0.5
        }
      }
    },
    circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
    circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_stack_control_input_signal = inserter_default_stack_control_input_signal
	},
  
	-- superior-filter-inserter
  
	{
    type = "inserter",
    name = "superior-filter-inserter",
    icon = krstr_entities_icon_path .. "superior-filter-inserter.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    stack = true,
    filter_count = 5,
    minable = { mining_time = 0.1, result = "superior-filter-inserter" },
    max_health = 200,
    corpse = "superior-inserter-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    energy_per_movement = "15KJ",
    energy_per_rotation = "15KJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1kW"
    },
    extension_speed = 0.105,
    rotation_speed = 0.06,
    fast_replaceable_group = "inserter",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-fast-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-5.ogg",
          volume = 0.75
        }
      }
    },
    hand_base_picture =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-hand-base.png",
        priority = "extra-high",
        width = 32,
        height = 136,
        scale = 0.25
      }
    },
    hand_closed_picture =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-filter-inserter-hand-closed.png",
      priority = "extra-high",
      width = 24,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-filter-inserter-hand-closed.png",
        priority = "extra-high",
        width = 100,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_picture =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-filter-inserter-hand-open.png",
      priority = "extra-high",
      width = 32,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-filter-inserter-hand-open.png",
        priority = "extra-high",
        width = 130,
        height = 164,
        scale = 0.25
      }
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 33,
      hr_version =
      {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
        priority = "extra-high",
        width = 32,
        height = 132,
        scale = 0.25
      }
    },
    hand_closed_shadow =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 24,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-hand-closed-shadow.png",
        priority = "extra-high",
        width = 100,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_shadow =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 32,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-hand-open-shadow.png",
        priority = "extra-high",
        width = 130,
        height = 164,
        scale = 0.25
      }
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.09375, 0},
        hr_version =
        {
          filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-platform.png",
          priority = "extra-high",
          width = 105,
          height = 79,
          shift = util.by_pixel(1.5, 7.5-1),
          scale = 0.5
        }
      }
    },
    circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
    circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_stack_control_input_signal = inserter_default_stack_control_input_signal
	},
	
	-- superior-long-filter-inserter
  
	{
    type = "inserter",
    name = "superior-long-filter-inserter",
    icon = krstr_entities_icon_path .. "superior-long-filter-inserter.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    stack = true,
    filter_count = 5,
    minable = { mining_time = 0.1, result = "superior-long-filter-inserter" },
    max_health = 200,
    corpse = "superior-inserter-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = {0, -2},
    insert_position = {0, 2.2},
    energy_per_movement = "16KJ",
    energy_per_rotation = "16KJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1kW"
    },
    extension_speed = 0.105,
    rotation_speed = 0.06,
    fast_replaceable_group = "inserter",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-fast-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-5.ogg",
          volume = 0.75
        }
      }
    },
    hand_base_picture =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-hand-base.png",
        priority = "extra-high",
        width = 32,
        height = 136,
        scale = 0.25
      }
    },
    hand_closed_picture =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-long-filter-inserter-hand-closed.png",
      priority = "extra-high",
      width = 24,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-long-filter-inserter-hand-closed.png",
        priority = "extra-high",
        width = 100,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_picture =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-long-filter-inserter-hand-open.png",
      priority = "extra-high",
      width = 32,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-long-filter-inserter-hand-open.png",
        priority = "extra-high",
        width = 130,
        height = 164,
        scale = 0.25
      }
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 33,
      hr_version =
      {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
        priority = "extra-high",
        width = 32,
        height = 132,
        scale = 0.25
      }
    },
    hand_closed_shadow =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 24,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-hand-closed-shadow.png",
        priority = "extra-high",
        width = 100,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_shadow =
    {
      filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 32,
      height = 41,
      hr_version =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-hand-open-shadow.png",
        priority = "extra-high",
        width = 130,
        height = 164,
        scale = 0.25
      }
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__Krastorio__/graphics/entity/superior-inserter/superior-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.09375, 0},
        hr_version =
        {
          filename = "__Krastorio__/graphics/entity/superior-inserter/hr-superior-inserter-platform.png",
          priority = "extra-high",
          width = 105,
          height = 79,
          shift = util.by_pixel(1.5, 7.5-1),
          scale = 0.5
        }
      }
    },
    circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
    circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_stack_control_input_signal = inserter_default_stack_control_input_signal
	},
  
	-- recipe
  
	{
    type = "recipe",
    name = "superior-inserter",
    enabled = false,
    ingredients =
    {
      {"iron-gear-wheel", 15},
      {"k-titanium-plate", 3},
      {"processing-unit", 1},
      {"stack-inserter", 1}
    },
    result = "superior-inserter"
	},
	
	{
    type = "recipe",
    name = "superior-long-inserter",
    enabled = false,
    ingredients =
    {
      {"k-titanium-plate", 2},
      {"superior-inserter", 1}
    },
    result = "superior-long-inserter"
	},
  
	{
    type = "recipe",
    name = "superior-filter-inserter",
    enabled = false,
    ingredients =
    {
      {"menarite-processor", 1},
      {"superior-inserter", 1}
    },
    result = "superior-filter-inserter"
	},
	
	{
    type = "recipe",
    name = "superior-long-filter-inserter",
    enabled = false,
    ingredients =
    {
      {"menarite-processor", 1},
      {"k-titanium-plate", 2},
      {"superior-inserter", 1}
    },
    result = "superior-long-filter-inserter"
	},
	
	-- technology
  
	{
    type = "technology",
    name = "superior-inserter",
    icon_size = 128,
    icon = "__Krastorio__/graphics/technology/superior-inserter.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "superior-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "superior-long-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "superior-filter-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "superior-long-filter-inserter"
      }
    },
    prerequisites = {"stack-inserter", "menarite-processor"},
    unit =
    {
      count = 750,
      ingredients =
	  {
	  		{"automation-research-data", 1},
			{"logistic-research-data", 1},
			{"scientific-research-data", 1},
	  },
      time = 90
    },
    order = "a-d-a"
	},
  
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
}
)