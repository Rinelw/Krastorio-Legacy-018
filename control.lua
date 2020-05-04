script.on_configuration_changed(function(event)
  for index, force in pairs(game.forces) do
    force.reset_technology_effects()
  end
end)

---Add items when game start

if settings.startup["bonus-items"].value then
script.on_event(defines.events.on_player_created, function(event)
	local iteminsert = game.players[event.player_index].insert
		iteminsert{name="construction-robot", count=50}
		iteminsert{name="modular-armor", count=1}
		iteminsert{name="car", count=1}
		iteminsert{name="big-battery-equipment", count=1}
		iteminsert{name="personal-roboport-equipment", count=1}
		iteminsert{name="small-portable-generator", count=2}
		iteminsert{name="cliff-explosives", count=50}
		iteminsert{name="landfill", count=50}
	end)
	end

local snapping = require("control-scripts.snapping")
local supported_loaders = {} -- dictionary indexed by supported entity name 
local supported_loader_names = {}  -- list of loader names for find_entities_filtered

-- remote interface to add and remove loaders from whitelist
remote.add_interface("kr-loader",	{
  -- add loader name if it doesn't already exist
  add_loader = function(name)
	if name then
	  supported_loaders[name] = true
	  supported_loader_names = {}
	  for k, v in pairs(supported_loaders) do
		table.insert(supported_loader_names, k)
	  end
	end
  end,

  -- remove loader name
  remove_loader = function(name)
	if name then
	  supported_loaders[name] = nil
	  supported_loader_names = {}
	  for k, v in pairs(supported_loaders) do
		table.insert(supported_loader_names, k)
	  end
	end
  end
})

local active_directions = {
  output = {
	[0] = 0,
	[2] = 2,
	[4] = 4,
	[6] = 6
  },
  input = {
	[0] = 4,
	[2] = 6,
	[4] = 0,
	[6] = 2
  }
}

local function loader_active(loader_data)
  local loader = loader_data.loader
  return loader and loader.valid and active_directions[loader.loader_type][loader.direction] == loader_data.direction
end

--Check for loaders around rotated entities that may need snapping
script.on_event(defines.events.on_player_rotated_entity, function(event)
	snapping.check_for_loaders(event, supported_loader_names)
end)

--When bulding, if its a loader check for snapping and snap, if snapped or not snapping then add to list
--Check anything else built and check for loaders around it they may need correcting.
script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
  local entity = event.created_entity
  if entity.type == "loader-1x1" and supported_loaders[entity.name] then
	snapping.snap_loader(entity, event)
	snapping.check_for_loaders(event, supported_loader_names)
  end
end)

-- update mod runtime settings
-- change event subsciptions and initialize wagon-loader pairs as needed
script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
	script.on_event({defines.events.on_train_changed_state, defines.events.on_train_created}, nil)
	script.on_event({defines.events.on_entity_died, defines.events.on_pre_player_mined_item, defines.events.on_robot_pre_mined}, nil)
	script.on_event(defines.events.on_tick, nil)
end)

---- Bootstrap ----
do
function init_events()
	script.on_event({defines.events.on_train_changed_state, defines.events.on_train_created}, nil)
	script.on_event({defines.events.on_entity_died, defines.events.on_pre_player_mined_item, defines.events.on_robot_pre_mined}, nil)
	script.on_event(defines.events.on_tick, nil)
  end

function init_supported_loaders()
  supported_loaders = {} -- loader name dictionary for fast access on name base

  -- use interface to fill whitelist as test
  remote.call("kr-loader", "add_loader", "loader-kr")
  remote.call("kr-loader", "add_loader", "loader-kr-02")
  remote.call("kr-loader", "add_loader", "loader-kr-03")
  remote.call("kr-loader", "add_loader", "loader-kr-04")
end

script.on_load(function()
  init_supported_loaders()
  init_events()
end)

-- On first install scan the map and find any loaders that might need work!
script.on_init(function()
  init_supported_loaders()
  init_events()
end)

end
