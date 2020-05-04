aswil.modules = {}

-- types of effects:
-- .consumption
-- .pollution
-- .productivity
-- .speed
-- ..bonus

-- @ limitations
-- @ recipe_name
function aswil.modules.hasLimitationRecipe(limitations, recipe_name)
	local has_it = false
	if next(limitations) ~= nil then
		for i, name in pairs(limitations) do
			if name == recipe_name then
				has_it = true
				break
			end
		end
	end
	return has_it
end

-- @ module
function aswil.modules.hasPositiveProductivity(module)
	local has_it = false	
	if module.effect then
		for effect_name, effect in pairs(module.effect) do
			if effect_name == "productivity" and effect.bonus > 0 then
				has_it = true
				break
			end
		end
	end
	return has_it
end

-- @ module
function aswil.modules.hasPositiveSpeed(module)
	local has_it = false	
	if module.effect then
		for effect_name, effect in pairs(module.effect) do
			if effect_name == "speed" and effect.bonus > 0 then
				has_it = true
				break
			end
		end
	end
	return has_it
end

-- @ module
function aswil.modules.hasPositiveEfficiency(module)
	local has_it = false	
	if module.effect then
		for effect_name, effect in pairs(module.effect) do
			if effect_name == "consumption" and effect.bonus < 0 then
				has_it = true
				break
			end
		end
	end
	return has_it
end

-- @ module
function aswil.modules.hasPositiveLessPollution(module)
	local has_it = false	
	if module.effect then
		for effect_name, effect in pairs(module.effect) do
			if effect_name == "pollution" and effect.bonus < 0 then
				has_it = true
				break
			end
		end
	end
	return has_it
end

-- @ recipe_name
function aswil.modules.addProductivityLimitation(recipe_name)
	for i, module in pairs(data.raw.module) do
		if aswil.modules.hasPositiveProductivity(module) then
			
			local has_it = false
			if module.limitation then
				has_it = aswil.modules.hasLimitationRecipe(module.limitation, recipe_name)
			else
				module.limitation = {}
			end
			
			if not has_it then
				table.insert(module.limitation, recipe_name)
				
				if not module.limitation_message_key then
					module.limitation_message_key = "production-module-limitation"
				end
			end
			
		end
	end
end

-- @ recipe_name
function aswil.modules.removeProductivityLimitation(recipe_name)
	local found = false
	for i, module in pairs(data.raw.module) do
		if aswil.modules.hasPositiveProductivity(module) then
			if module.limitation and next(module.limitation) ~= nil then
			
				for j, name in pairs(module.limitation) do
					if name == recipe_name then
						table.remove(module.limitation, j)
						found = true
					end
				end
				
				if next(module.limitation) == nil then
					module.limitation = nil
					module.limitation_message_key = nil
				end
				
			end		
		end
	end	
	return found
end

-- @ recipe_name
function aswil.modules.addSpeedLimitation(recipe_name)
	for i, module in pairs(data.raw.module) do
		if aswil.modules.hasPositiveSpeed(module) then
			
			local has_it = false
			if module.limitation then
				has_it = aswil.modules.hasLimitationRecipe(module.limitation, recipe_name)
			else
				module.limitation = {}
			end
			
			if not has_it then
				table.insert(module.limitation, recipe_name)
				
				if not module.limitation_message_key then
					module.limitation_message_key = "speed-module-limitation"
				end
			end			

		end
	end
end

-- @ recipe_name
function aswil.modules.removeSpeedLimitation(recipe_name)
	local found = false
	for i, module in pairs(data.raw.module) do
		if aswil.modules.hasPositiveSpeed(module) then
			if module.limitation and next(module.limitation) ~= nil then
			
				for j, name in pairs(module.limitation) do
					if name == recipe_name then
						table.remove(module.limitation, j)
						found = true
					end
				end
				
				if next(module.limitation) == nil then
					module.limitation = nil
					module.limitation_message_key = nil
				end
				
			end		
		end
	end
	return found
end

-- @ recipe_name
function aswil.modules.addEfficiencyLimitation(recipe_name)
	for i, module in pairs(data.raw.module) do		
		if aswil.modules.hasPositiveEfficiency(module) then
			
			local has_it = false
			if module.limitation then
				has_it = aswil.modules.hasLimitationRecipe(module.limitation, recipe_name)
			else
				module.limitation = {}
			end
			
			if not has_it then
				table.insert(module.limitation, recipe_name)
				
				if not module.limitation_message_key then
					module.limitation_message_key = "efficiency-module-limitation"
				end
			end
			
		end
	end
end

-- @ recipe_name
function aswil.modules.removeEfficiencyLimitation(recipe_name)
	local found = false
	for i, module in pairs(data.raw.module) do
		if aswil.modules.hasPositiveEfficiency(module) then
			if module.limitation and next(module.limitation) ~= nil then
			
				for j, name in pairs(module.limitation) do
					if name == recipe_name then
						table.remove(module.limitation, j)
						found = true
					end
				end
				
				if next(module.limitation) == nil then
					module.limitation = nil
					module.limitation_message_key = nil
				end
				
			end		
		end
	end
	return found
end

-- @ recipe_name
function aswil.modules.addLessPollutionLimitation(recipe_name)
	for i, module in pairs(data.raw.module) do
		if aswil.modules.hasPositiveLessPollution(module) then
		
			local has_it = false
			if module.limitation then
				has_it = aswil.modules.hasLimitationRecipe(module.limitation, recipe_name)
			else
				module.limitation = {}
			end
			
			if not has_it then
				table.insert(module.limitation, recipe_name)
				
				if not module.limitation_message_key then
					module.limitation_message_key = "pollution-only-module-limitation"
				end
			end
			
		end
	end
end

-- @ recipe_name
function aswil.modules.removeLessPollutionLimitation(recipe_name)
	local found = false
	for i, module in pairs(data.raw.module) do
		if aswil.modules.hasPositiveLessPollution(module) then
			if module.limitation and next(module.limitation) ~= nil then
			
				for j, name in pairs(module.limitation) do
					if name == recipe_name then
						table.remove(module.limitation, j)
						found = true
					end
				end
				
				if next(module.limitation) == nil then
					module.limitation = nil
					module.limitation_message_key = nil
				end
				
			end		
		end
	end
	return found
end
