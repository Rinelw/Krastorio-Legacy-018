aswil.recipes = {}
aswil.recipes.recipes_groups = {}

-- -- -- GETTING(READ) FUNCTIONS

-- -- INGREDIENTS

-- -- normal

-- @ recipe_name
-- return a table
function aswil.recipes.getIngredients(recipe_name)
	local recipe = aswil.recipes.getRecipeFromName(recipe_name)
	if recipe then
		if recipe.ingredients then		
			return recipe.ingredients
		end
		if recipe.normal.ingredients then
			return recipe.normal.ingredients
		end
	end
	return {}
end

--

-- @ recipe_name
-- @ ingredient_name
-- return a boolean
function aswil.recipes.hasIngredient(recipe_name, ingredient_name)
	local ingredients = aswil.recipes.getIngredients(recipe_name)
	if next(ingredients) ~= nil then
		for i = 1, #ingredients do
			for _, value in pairs(ingredients[i]) do
				if value == ingredient_name then
					return true
				end
			end		
		end
	end	
	return false
end

--

-- @ recipe_name
-- @ ingredient_names
-- return a boolean
function aswil.recipes.hasIngredients(recipe_name, ingredient_names)
	local has_all = true
	for _, ingredient_name in pairs(ingredient_names) do
		has_all = has_all and aswil.recipes.hasIngredient(recipe_name, ingredient_name)
	end
	return has_all
end

-- @ recipe_name
-- return a boolean
function aswil.recipes.hasNoIngredients(recipe_name)
	return (next(aswil.recipes.getIngredients(recipe_name)) == nil)
end 

-- -- expensive

-- @ recipe_name
-- return a table
function aswil.recipes.getExpensiveIngredients(recipe_name)
	local recipe = aswil.recipes.getRecipeFromName(recipe_name)
	if recipe then
		if recipe.expensive then
			if recipe.expensive.ingredients then		
				return recipe.expensive.ingredients
			end
		end
	end
	return {}
end

--

-- @ recipe_name
-- @ ingredient_name
-- return a boolean
function aswil.recipes.hasExpensiveIngredient(recipe_name, ingredient_name)
	local expensive_ingredients = aswil.recipes.getExpensiveIngredients(recipe_name)
	if next(expensive_ingredients) ~= nil then
		for i = 1, #expensive_ingredients do
			for _, value in pairs(expensive_ingredients[i]) do
				if value == ingredient_name then
					return true
				end
			end		
		end
	end	
	return false
end

--

-- @ recipe_name
-- @ ingredient_names
-- return a boolean
function aswil.recipes.hasExpensiveIngredients(recipe_name, ingredient_names)
	local has_all = true
	for _, ingredient_name in pairs(ingredient_names) do
		has_all = has_all and aswil.recipes.hasExpensiveIngredient(recipe_name, ingredient_name)
	end
	return has_all
end

-- @ recipe_name
-- return a boolean
function aswil.recipes.hasNoExpensiveIngredients(recipe_name)
	return (next(aswil.recipes.getExpensiveIngredients(recipe_name)) == nil)
end 

-- -- PRODUCTS

-- @ recipe_name
function aswil.recipes.resultToResults(recipe_name)
	local recipe = aswil.recipes.getRecipeFromName(recipe_name)
	local results = nil
	
	if recipe.results then
		results = recipe.results
	elseif recipe.normal and recipe.normal.results then
		results = recipe.normal.results
	elseif recipe.expensive and recipe.expensive.results then	
		results = recipe.expensive.results
	end
		
	if not results then
		local result_count = 1
		if recipe.result then
			result_count = recipe.result_count or 1
			if type(recipe.result) == "string" then
				recipe.results = {{type = "item", name = recipe.result, amount = result_count}}
			elseif recipe.result.name then
				recipe.results = {recipe.result}
			elseif recipe.result[1] then
				result_count = recipe.result[2] or result_count
				recipe.results = {{type = "item", name = recipe.result[1], amount = result_count}}
			end
			recipe.result = nil
			results = recipe.results
		elseif recipe.normal and recipe.normal.result then
			result_count = recipe.normal.result_count or 1
			if type(recipe.normal.result) == "string" then
				recipe.normal.results = {{type = "item", name = recipe.normal.result, amount = result_count}}
			elseif recipe.normal.result.name then
				recipe.normal.results = {recipe.normal.result}
			elseif recipe.normal.result[1] then
				result_count = recipe.normal.result[2] or result_count
				recipe.normal.results = {{type = "item", name = recipe.normal.result[1], amount = result_count}}
			end
			recipe.normal.result = nil
			results = recipe.normal.results	
			recipe.expensive.results = recipe.normal.results		
		elseif recipe.expensive and recipe.expensive.result then
			result_count = recipe.expensive.result_count or 1
			if type(recipe.expensive.result) == "string" then
				recipe.expensive.results = {{type = "item", name = recipe.expensive.result, amount = result_count}}
			elseif recipe.expensive.result.name then
				recipe.expensive.results = {recipe.expensive.result}
			elseif recipe.expensive.result[1] then
				result_count = recipe.expensive.result[2] or result_count
				recipe.expensive.results = {{type = "item", name = recipe.expensive.result[1], amount = result_count}}
			end
			recipe.expensive.result = nil
			results = recipe.expensive.results
			recipe.normal.results = recipe.expensive.results					
		end
	end
	return results
end

-- @ recipe_name
-- return a table, with one ore more product
function aswil.recipes.getProducts(recipe_name)
	local recipe = aswil.recipes.getRecipeFromName(recipe_name)
	if recipe then		
		results = aswil.recipes.resultToResults(recipe_name) -- test
		if results == nil then
			results = {}
		end
		return results	
	end
	return {}
end

--

-- @ recipe_name
-- @ product_name
-- return a boolean
function aswil.recipes.hasProduct(recipe_name, product_name)
	local products = aswil.recipes.getProducts(recipe_name)
	if next(products) ~= nil then
		for i = 1, #products do
			for _, value in pairs(products[i]) do
				if value == product_name then
					return true
				end
			end		
		end
	end	
	return false
end

--

-- @ recipe_name
-- @ product_names
-- return a boolean
function aswil.recipes.hasProducts(recipe_name, product_names)
	local has_all = true
	for _, product_name in pairs(product_names) do
		has_all = has_all and aswil.recipes.hasProduct(recipe_name, product_name)
	end
	return has_all
end

-- -- OTHERS

-- wrapper
-- @ recipe_name
-- return a boolean
function aswil.recipes.exist(recipe_name)
	return aswil.recipes.getRecipeFromName(recipe_name) ~= nil 
end

-- @ recipe_name
-- return a recipe or nil
function aswil.recipes.getRecipeFromName(recipe_name)	
	if type(recipe_name) == "string" then
		for name, recipe in pairs(data.raw.recipe) do
			if name == recipe_name then 
				return recipe
			end
		end
	end
	return nil	
end

-- @ recipe_name
-- return a boolean
function aswil.recipes.isRecipeVanilla(recipe_name)
	return aswil_utils.recipes_backup_utils.isRecipeVanilla(recipe_name)
end

--

-- @ recipe_name
-- return a string
function aswil.recipes.getCategory(recipe_name)
	local recipe = aswil.recipes.getRecipeFromName(recipe_name)
	if recipe then
		return recipe.category
	end
	return false
end

-- -- -- SETTING(WRITE) FUNCTIONS

-- -- -- GENERAL TOOL FUNCTIONS

-- return a copy
function aswil.recipes.getParsedItem(item)
	local parsed_item = {}
	if item.type then -- already well parsed
		parsed_item = aswil_utils.tables.fullCopy(item)
	else -- parsing item 			
		-- fixed mandatory property
		parsed_item.type = "item"	
		-- get mandatory property			
		if item.name then
			parsed_item.name = item.name
		end
		if item.amount then
			parsed_item.amount = item.amount
		end
		-- get optional property
		if item.catalyst_amount then
			parsed_item.catalyst_amount = item.catalyst_amount
		end
		if item.probability then
			parsed_item.probability = item.probability
		end
		if item.temperature then
			parsed_item.temperature = item.temperature
		end
		-- get mandatory property in case have no index strings
		if not parsed_item.name or not parsed_item.amount then
			for _, value in pairs(item) do		
				if type(value) == "string" then	
					parsed_item.name = value
				else
					parsed_item.amount = value
				end
			end		
		end
	end
	return parsed_item
end

function aswil.recipes.mergeParsedItems(item_a, item_b)
	local merged_item  = {}
	-- mandatory property
	merged_item.name   = item_b.name
	merged_item.amount = item_a.amount + item_b.amount
	merged_item.type   = item_b.type
	-- optional property (prioritized on second item)
	if item_b.catalyst_amount then
		merged_item.catalyst_amount = item_b.catalyst_amount
	elseif item_a.catalyst_amount then
		merged_item.catalyst_amount = item_a.catalyst_amount
	end
	if item_b.probability then
		merged_item.probability = item_b.probability
	elseif item_a.probability then
		merged_item.probability = item_a.probability
	end
	if item_b.temperature then
		merged_item.temperature = item_b.temperature
	elseif item_a.temperature then
		merged_item.temperature = item_a.temperature
	end
	return merged_item
end

function aswil.recipes.uniteDuplicateItems(items)	
	local count = #items
	for i=1, count do items[i]=aswil.recipes.getParsedItem(items[i]) end
	deduplicated_items = {}
	local united = false
	for _, item in pairs(items) do
		united = false
		for j, dedup_item in pairs(deduplicated_items) do
			if item.name == dedup_item.name then
				merged_item = aswil.recipes.mergeParsedItems(item, dedup_item)
				deduplicated_items[j] = merged_item
				united = true
				break
			end			
		end
		if not united then
			table.insert(deduplicated_items, item)
		end
	end
	for i=1, count do items[i]=nil end
	count = #deduplicated_items
	for i=1, count do table.insert(items, deduplicated_items[i]) end
end

function aswil.recipes.remove(items, item_name)	
	local removed = false
	for i, item in pairs(items) do
		local name = item.name or item[1]
		if name == item_name then
			table.remove(items, i)
			removed = true			
		end
	end
	return removed
end

function aswil.recipes.add(items, item)
	local ingredient_name = ""
	local ingredient_to_insert = nil
	if type(item) == "string" then
		ingredient_to_insert = {item, 1}
	elseif type(item) == "table" then
		ingredient_to_insert = item	
	else
		return false
	end
	table.insert(items, ingredient_to_insert)
	aswil.recipes.uniteDuplicateItems(items)	
	return true
end

function aswil.recipes.multiply(items, item_name, multiplier)	
	for i, ingredient in pairs(items) do
		local name = ingredient.name or ingredient[1]		
		if name == item_name then
			if ingredient.amount then
				items[i].amount = ingredient.amount * multiplier
			else
				items[i][2] = ingredient[2] * multiplier
			end
			return true
		end
	end	
	return false		
end

function aswil.recipes.replace(items, old_item_name, new_item)	
	for i, ingredient in pairs(items) do
		local name = ingredient.name or ingredient[1]
		if name == old_item_name then
			items[i] = new_item
			aswil.recipes.uniteDuplicateItems(items)
			return true
		end
	end	
	return false		
end

function aswil.recipes.addOrReplace(items, old_item_name, new_item)
	local added = aswil.recipes.replace(items, old_item_name, new_item)		
	if not added then
		added = aswil.recipes.add(items, new_item)
	end
	return added
end

function aswil.recipes.convert(items, old_item_name, new_item_name)
	for i, ingredient in pairs(items) do
		for j, value in pairs(items[i]) do
			if value == old_item_name then
				items[i][j] = new_item_name
				aswil.recipes.uniteDuplicateItems(items)	
				return true				
			end
		end
	end
	return false
end

-- -- INGREDIENTS

function aswil.recipes.overrideIngredients(recipe_name, new_ingredients)
	local ingredients = aswil.recipes.getIngredients(recipe_name)
	if next(ingredients) ~= nil then
		-- normal ingredients
		aswil_utils.tables.replace(ingredients, new_ingredients)	
		-- expensive ingredients		
		local expensive_ingredients = aswil.recipes.getExpensiveIngredients(recipe_name)
		if next(expensive_ingredients) ~= nil then
			aswil_utils.tables.replace(expensive_ingredients, new_ingredients)
		end
		return true
	end
	return false
end

-- -- remove

-- @ recipe_name
-- @ ingredient_name
-- return a boolean
function aswil.recipes.removeIngredient(recipe_name, ingredient_name)
	local ingredients = aswil.recipes.getIngredients(recipe_name)
	local removed = false
	-- normal
	if next(ingredients) ~= nil then
		removed = aswil.recipes.remove(ingredients, ingredient_name)			
		-- expensive
		local expensive_ingredients = aswil.recipes.getExpensiveIngredients(recipe_name)
		if next(expensive_ingredients) ~= nil then
			local removed_expensive = aswil.recipes.remove(expensive_ingredients, ingredient_name)
			removed = removed or removed_expensive
		end
	end	
	return removed
end

--

-- @ recipe_name
-- @ ingredient_names
-- return a boolean
function aswil.recipes.removeIngredients(recipe_name, ingredient_names)
	local removed_all = true
	local removed = false
	for _, ingredient_name in pairs(ingredient_names) do
		removed = aswil.recipes.removeIngredient(recipe_name, ingredient_name)
		removed_all = removed_all and removed
	end
	return removed_all
end

--

-- @ ingredient_name
-- return a interger
function aswil.recipes.removeIngredientFromAllRecipes(ingredient_name)
	local count = 0
	for name, recipe in pairs(data.raw.recipe) do
		if aswil.recipes.removeIngredient(name, ingredient_name) then
			count = count + 1
		end
	end
	return count
end

--

-- @ ingredient_names
function aswil.recipes.removeIngredientsFromAllRecipes(ingredient_names)
	local total_count = 0
	for _, ingredient_name in pairs(ingredient_names) do
		total_count = total_count + aswil.recipes.removeIngredientFromAllRecipes(ingredient_name)
	end
	return total_count
end

-- remove and remove prerequisites

-- @ recipe_name
-- @ ingredient_name
-- return a boolean
function aswil.recipes.removeIngredientWithPrerequisite(recipe_name, ingredient_name)
	aswil.technologies.removePrerequisite
	(
		aswil.technologies.getTechnologyThatUnlockRecipe(recipe_name), 
		aswil.technologies.getTechnologyThatUnlockRecipe(ingredient_name)
	)
	return aswil.recipes.removeIngredient(recipe_name, ingredient_name)
end

--

-- @ recipe_name
-- @ ingredient_names
-- return a boolean
function aswil.recipes.removeIngredientsWithPrerequisite(recipe_name, ingredient_names)
	local removed_all = true
	local removed = false
	for _, ingredient_name in pairs(ingredient_names) do
		removed = aswil.recipes.removeIngredientWithPrerequisite(recipe_name, ingredient_name)
		removed_all = removed_all and removed
	end
	return removed_all
end

--

-- @ ingredient_name
-- return a interger
function aswil.recipes.removeIngredientWithPrerequisiteFromAllRecipes(ingredient_name)
	local count = 0
	for name, recipe in pairs(data.raw.recipe) do
		if aswil.recipes.removeIngredientWithPrerequisite(name, ingredient_name) then
			count = count + 1
		end
	end
	return count
end

--

-- @ ingredient_names
function aswil.recipes.removeIngredientsWithPrerequisiteFromAllRecipes(ingredient_names)
	local total_count = 0
	for _, ingredient_name in pairs(ingredient_names) do
		total_count = total_count + aswil.recipes.removeIngredientWithPrerequisiteFromAllRecipes(ingredient_name)
	end
	return total_count
end

-- -- add

-- @ recipe_name
-- @ ingredient
function aswil.recipes.addIngredient(recipe_name, ingredient)
	local added = false
	-- normal
	local ingredients = aswil.recipes.getIngredients(recipe_name)
	if next(ingredients) ~= nil then
		added = aswil.recipes.add(ingredients, ingredient)
		-- expensive
		local expensive_ingredients = aswil.recipes.getExpensiveIngredients(recipe_name)
		if next(expensive_ingredients) ~= nil then
			local added_expensive = aswil.recipes.add(expensive_ingredients, ingredient)
			added = added or added_expensive
		end
	end
	return added
end

--

-- @ recipe_name
-- @ ingredients
function aswil.recipes.addIngredients(recipe_name, ingredients)
	local added_all = true
	local added = false
	for _, ingredient in pairs(ingredients) do
		added = aswil.recipes.addIngredient(recipe_name, aswil_utils.tables.fullCopy(ingredient))
		added_all = added_all and added
	end
	return added_all
end

--

-- @ ingredient
function aswil.recipes.addIngredientToAllRecipes(ingredient)
	local count = 0
	if next(ingredient) ~= nil then	
		for name, recipe in pairs(data.raw.recipe) do
			if aswil.recipes.addIngredient(name, aswil_utils.tables.fullCopy(ingredient)) then
				count = count + 1
			end
		end
	end
	return count
end

--

-- @ ingredients
function aswil.recipes.addIngredientsToAllRecipes(ingredients)
	local total_count = 0
	for _, ingredient in pairs(ingredients) do
		total_count = total_count + aswil.recipes.addIngredientToAllRecipes(ingredient)
	end
	return total_count
end

-- -- multiply

-- @ recipe_name
-- @ ingredient_name
-- @ multiplier
function aswil.recipes.multiplyIngredient(recipe_name, ingredient_name, multiplier)
	local multiply = false
	-- normal
	local ingredients = aswil.recipes.getIngredients(recipe_name)
	if next(ingredients) ~= nil then
		multiply = aswil.recipes.multiply(ingredients, ingredient_name, multiplier)
		-- expensive
		local expensive_ingredients = aswil.recipes.getExpensiveIngredients(recipe_name)
		if next(expensive_ingredients) ~= nil then
			local multiply_expensive = aswil.recipes.multiply(expensive_ingredients, ingredient_name, multiplier)
			multiply = multiply or multiply_expensive
		end
	end
	return multiply
end

--

-- @ recipe_name
-- @ ingredient_names
-- @ multiplier
function aswil.recipes.multiplyIngredients(recipe_name, ingredient_names, multiplier)
	local multiply_all = true
	local multiply = false
	for _, ingredient_name in pairs(ingredient_names) do
		multiply = aswil.recipes.multiplyIngredient(recipe_name, ingredient_name, multiplier)
		multiply_all = multiply_all and multiply
	end
	return multiply_all
end

--

-- @ ingredient_name
-- @ multiplier
function aswil.recipes.multiplyIngredientToAllRecipes(ingredient_name, multiplier)
	local count = 0
	if ingredient_name ~= nil then	
		for name, recipe in pairs(data.raw.recipe) do
			if aswil.recipes.multiplyIngredient(name, ingredient_name, multiplier) then
				count = count + 1
			end
		end
	end
	return count
end

--

-- @ ingredient_names
-- @ multiplier
function aswil.recipes.multiplyIngredientsToAllRecipes(ingredient_names, multiplier)
	local total_count = 0
	for _, ingredient_name in pairs(ingredient_names) do
		total_count = total_count + aswil.recipes.multiplyIngredientToAllRecipes(ingredient_name, multiplier)
	end
	return total_count
end

-- replace

-- @ recipe_name
-- @ old_ingredient_name
-- @ new_ingredient
function aswil.recipes.replaceIngredient(recipe_name, old_ingredient_name, new_ingredient)
	local ingredients = aswil.recipes.getIngredients(recipe_name)
	local replaced = false
	if next(ingredients) ~= nil then
		replaced = aswil.recipes.replace(ingredients, old_ingredient_name, new_ingredient)	
		local expensive_ingredients = aswil.recipes.getExpensiveIngredients(recipe_name)
		if next(expensive_ingredients) ~= nil then	
			local expensive_replaced = aswil.recipes.replace(expensive_ingredients, old_ingredient_name, new_ingredient)	
			replaced = replaced or expensive_replaced
		end
	end
	return replaced		
end

--

-- @ recipe_name
-- @ old_ingredient_names
-- @ new_ingredients
function aswil.recipes.replaceIngredients(recipe_name, old_ingredient_names, new_ingredients)
	if type(old_ingredient_names) ~= "table" or type(new_ingredients) ~= "table" then return false end
	local replaced_all = true
	local replaced = false
	local i, old_ingredient_name = next(old_ingredient_names, nil)
	local j, ingredient          = next(new_ingredients, nil)
	while i and j and type(ingredient) == "table" do
		replaced = aswil.recipes.replaceIngredient(recipe_name, old_ingredient_name, aswil_utils.tables.fullCopy(ingredient))
		replaced_all = replaced_all and replaced
		i, old_ingredient_name = next(old_ingredient_names, i)
		j, ingredient          = next(new_ingredients, j)
	end
	return replaced_all
end

--

-- @ old_ingredient_name
-- @ new_ingredient
function aswil.recipes.replaceIngredientToAllRecipes(old_ingredient_name, new_ingredient)
	local count = 0
	if next(new_ingredient) ~= nil then	
		for name, recipe in pairs(data.raw.recipe) do
			if aswil.recipes.replaceIngredient(name, old_ingredient_name, aswil_utils.tables.fullCopy(new_ingredient)) then
				count = count + 1
			end
		end
	end
	return count
end

--

-- @ old_ingredient_names
-- @ new_ingredients
function aswil.recipes.replaceIngredientsToAllRecipes(old_ingredient_names, new_ingredients)
	if type(old_ingredient_names) ~= "table" or type(new_ingredients) ~= "table" then return false end
	local total_count = 0
	local i, old_ingredient_name = next(old_ingredient_names, nil)
	local j, ingredient          = next(new_ingredients, nil)
	while i and j and next(ingredient) ~= nil do
		total_count = total_count + aswil.recipes.replaceIngredientToAllRecipes(old_ingredient_name, ingredient)
		i, old_ingredient_name = next(old_ingredient_names, i)
		j, ingredient          = next(new_ingredients, j)
	end
	return total_count
end

-- -- add or replace

-- @ recipe_name
-- @ old_ingredient_name
-- @ new_ingredient
function aswil.recipes.addOrReplaceIngredient(recipe_name, old_ingredient_name, new_ingredient)
	if old_ingredient_name == nil then
		return aswil.recipes.addIngredient(recipe_name, new_ingredient)
	end
	local added = false
	-- normal
	local ingredients = aswil.recipes.getIngredients(recipe_name)
	if next(ingredients) ~= nil then		
		added = aswil.recipes.addOrReplace(ingredients, old_ingredient_name, new_ingredient)
		-- expensive
		local expensive_ingredients = aswil.recipes.getExpensiveIngredients(recipe_name)
		if next(expensive_ingredients) ~= nil then	
			local added_expensive = aswil.recipes.addOrReplace(expensive_ingredients, old_ingredient_name, new_ingredient)
			added = added or added_expensive
		end
	end	
	return added
end

--

-- @ recipe_name
-- @ old_ingredient_names
-- @ new_ingredients
function aswil.recipes.addOrReplaceIngredients(recipe_name, old_ingredient_names, new_ingredients)
	if type(old_ingredient_names) ~= "table" or type(new_ingredients) ~= "table" then return false end
	local i, old_ingredient_name = next(old_ingredient_names, nil)
	local j, ingredient          = next(new_ingredients, nil)
	while j and type(ingredient) == "table" do
		if not old_ingredient_name then
			aswil.recipes.addIngredient(recipe_name, aswil_utils.tables.fullCopy(ingredient))
		else
			aswil.recipes.addOrReplaceIngredient(recipe_name, old_ingredient_name, aswil_utils.tables.fullCopy(ingredient))
		end
		i, old_ingredient_name = next(old_ingredient_names, i)
		j, ingredient          = next(new_ingredients, j)
	end
end

--

-- @ old_ingredient_name
-- @ new_ingredient
function aswil.recipes.addOrReplaceIngredientToAllRecipes(old_ingredient_name, new_ingredient)
	for name, recipe in pairs(data.raw.recipe) do
		aswil.recipes.addOrReplaceIngredient(name, old_ingredient_name, aswil_utils.tables.fullCopy(new_ingredient))
	end
end

--

-- @ old_ingredient_names
-- @ new_ingredients
function aswil.recipes.addOrReplaceIngredientsToAllRecipes(old_ingredient_names, new_ingredients)
	if type(old_ingredient_names) ~= "table" or type(new_ingredients) ~= "table" then return false end
	local i, old_ingredient_name = next(old_ingredient_names, nil)
	local j, ingredient          = next(new_ingredients, nil)
	while j and type(ingredient) == "table" do
		aswil.recipes.addOrReplaceIngredientToAllRecipes(old_ingredient_name, ingredient)
		i, old_ingredient_name = next(old_ingredient_names, i)
		j, ingredient          = next(new_ingredients, j)
	end
end

-- convert

-- @ recipe_name
-- @ old_ingredient_names
-- @ new_ingredients
function aswil.recipes.convertIngredient(recipe_name, old_ingredient_name, new_ingredient_name)
	local ingredients = aswil.recipes.getIngredients(recipe_name)
	local converted = false
	if next(ingredients) ~= nil then
		-- normal
		converted = aswil.recipes.convert(ingredients, old_ingredient_name, new_ingredient_name)
		-- expensive
		local expensive_ingredients = aswil.recipes.getExpensiveIngredients(recipe_name)
		if next(expensive_ingredients) ~= nil then	
			converted_expensive = aswil.recipes.convert(expensive_ingredients, old_ingredient_name, new_ingredient_name)
			converted = converted or converted_expensive
		end
	end
	return converted
end

-- @ recipe_name
-- @ old_ingredient_names
-- @ new_ingredients
function aswil.recipes.convertIngredients(recipe_name, old_ingredient_names, new_ingredient_names)
	if type(old_ingredient_names) ~= "table" or type(new_ingredient_names) ~= "table" then return false end
	local converted_all = true
	local converted     = false
	local i, old_ingredient_name = next(old_ingredient_names, nil)
	local j, ingredient_name     = next(new_ingredient_names, nil)
	while i and j and type(ingredient_name) == "table" do
		converted = aswil.recipes.convertIngredient(recipe_name, old_ingredient_name, ingredient_name)
		converted_all = converted_all and converted
		i, old_ingredient_name = next(old_ingredient_names, i)
		j, ingredient_name     = next(new_ingredients, j)
	end
	return converted_all
end

-- @ old_ingredient_name
-- @ new_ingredient
function aswil.recipes.convertIngredientFromAllRecipes(old_ingredient_name, new_ingredient_name)
	local count = 0	
	for name, recipe in pairs(data.raw.recipe) do
		if aswil.recipes.convertIngredient(name, old_ingredient_name, new_ingredient_name) then
			count = count + 1
		end
	end	
	return count
end

-- @ old_ingredient_names
-- @ new_ingredients
function aswil.recipes.convertIngredientsFromAllRecipes(old_ingredient_names, new_ingredient_names)
	if type(old_ingredient_names) ~= "table" or type(new_ingredient_names) ~= "table" then return false end
	local total_count = 0
	local i, old_ingredient_name = next(old_ingredient_names, nil)
	local j, new_ingredient_name = next(new_ingredient_names, nil)
	while i and j and new_ingredient_name ~= nil do
		total_count = total_count + aswil.recipes.convertIngredientFromAllRecipes(old_ingredient_name, new_ingredient_name)
		i, old_ingredient_name = next(old_ingredient_names, i)
		j, new_ingredient_name = next(new_ingredient_names, j)
	end
	return total_count
end

-- -- GROUP INGREDIENTS

-- @ group_name
-- @ ingredient_name
function aswil.recipes.removeIngredientFromGroup(group_name, ingredient_name)
	if aswil.recipes.recipes_groups[group_name] then
		for _, recipe_name in pairs(aswil.recipes.recipes_groups[group_name]) do
			aswil.recipes.removeIngredient(recipe_name, ingredient_name)
		end
		return true
	end
	return false
end

-- @ group_name
-- @ ingredient
function aswil.recipes.addIngredientToGroup(group_name, ingredient)
	if aswil.recipes.recipes_groups[group_name] then
		for _, recipe_name in pairs(aswil.recipes.recipes_groups[group_name]) do
			aswil.recipes.addIngredient(recipe_name, ingredient)
		end		
		return true
	end
	return false
end

-- @ group_name
-- @ old_ingredient_name
-- @ new_ingredient
function aswil.recipes.replaceIngredientToGroup(group_name, old_ingredient_name, new_ingredient)
	if aswil.recipes.recipes_groups[group_name] then
		for _, recipe_name in pairs(aswil.recipes.recipes_groups[group_name]) do
			aswil.recipes.replaceIngredient(recipe_name, old_ingredient_name, new_ingredient)
		end		
		return true
	end
	return false
end

-- @ group_name
-- @ old_ingredient_name
-- @ new_ingredient
function aswil.recipes.addOrReplaceIngredientToGroup(group_name, old_ingredient_name, new_ingredient)
	if aswil.recipes.recipes_groups[group_name] then
		for _, recipe_name in pairs(aswil.recipes.recipes_groups[group_name]) do
			aswil.recipes.addOrReplaceIngredient(recipe_name, old_ingredient_name, new_ingredient)
		end		
		return true
	end
	return false
end

-- @ group_name
-- @ old_ingredient_name
-- @ new_ingredient_name
function aswil.recipes.convertIngredientToGroup(group_name, old_ingredient_name, new_ingredient_name)
	if aswil.recipes.recipes_groups[group_name] then
		for _, recipe_name in pairs(aswil.recipes.recipes_groups[group_name]) do
			aswil.recipes.convertIngredient(recipe_name, old_ingredient_name, new_ingredient_name)
		end		
		return true
	end
	return false
end

-- -- PRODUCTS

-- -- remove

-- @ recipe_name
-- @ product_name
function aswil.recipes.removeProduct(recipe_name, product_name)
	local products = aswil.recipes.getProducts(recipe_name)
	if next(products) ~= nil then
		return aswil.recipes.remove(products, product_name)	
	end	
	return false
end

--

-- @ recipe_name
-- @ product_names
function aswil.recipes.removeProducts(recipe_name, product_names)
	local removed_all = true
	local removed = false
	for _, product_name in pairs(product_names) do
		removed     = aswil.recipes.removeProduct(recipe_name, product_name)
		removed_all = removed_all and removed
	end
	return removed_all
end

--

-- @ product_name
function aswil.recipes.removeProductFromAllRecipes(product_name)
	local count = 0
	for name, recipe in pairs(data.raw.recipe) do
		if aswil.recipes.removeProduct(name, product_name) then
			count = count + 1
		end
	end
	return count	
end

--

-- @ product_names
function aswil.recipes.removeProductsFromAllRecipes(product_names)
	local total_count = 0
	for _, product_name in pairs(product_names) do
		total_count = total_count + aswil.recipes.removeProductFromAllRecipes(product_name)
	end
	return total_count	
end

-- -- add

-- @ recipe_name
-- @ product
function aswil.recipes.addProduct(recipe_name, product)
	local products = aswil.recipes.getProducts(recipe_name)
	if next(products) ~= nil then
		local added = aswil.recipes.add(products, product)
		local recipe = aswil.recipes.getRecipeFromName(recipe_name)
		if added and ( #products > 1 and ( not(recipe.icon and recipe.subgroup) or recipe.main_product ) )then 
			local i, product = next(products)
			recipe.main_product = product.name
			aswil_utils.log.write(3, string.format("Maybe %s recipe needs the icon to be set correctly.", recipe.name))
		end
		return added
	end
	return false	
end

--

-- @ recipe_name
-- @ products
function aswil.recipes.addProducts(recipe_name, products)
	local added_all = true
	local added = false
	for _, product in pairs(products) do
		added = aswil.recipes.addProduct(recipe_name, aswil_utils.tables.fullCopy(product))
		added_all = added_all and added
	end
	return added_all
end

--

-- @ product
function aswil.recipes.addProductToAllRecipes(product)
	local count = 0
	if next(product) ~= nil then	
		for name, recipe in pairs(data.raw.recipe) do
			if aswil.recipes.addProduct(name, aswil_utils.tables.fullCopy(product)) then
				count = count + 1
			end
		end
	end
	return count	
end

--

-- @ products
function aswil.recipes.addProductsToAllRecipes(products)
	local total_count = 0
	for _, product in pairs(products) do
		total_count = total_count + aswil.recipes.addProductToAllRecipes(product)
	end
	return total_count	
end

-- multiply

-- @ recipe_name
-- @ product_name
-- @ multiplier
function aswil.recipes.multiplyProduct(recipe_name, product_name, multiplier)
	local multiplied = false
	local products = aswil.recipes.getProducts(recipe_name)
	if next(products) ~= nil then
		multiplied = aswil.recipes.multiply(products, product_name, multiplier)
	end
	return multiplied	
end

-- @ recipe_name
-- @ product_names
-- @ multiplier
function aswil.recipes.multiplyProducts(recipe_name, product_names, multiplier)
	local multiplied_all = true
	local multiplied = false
	for _, product_name in pairs(product_names) do
		multiplied = aswil.recipes.multiplyProduct(recipe_name, product_name, multiplier)
		multiplied_all = multiplied_all and multiplied
	end
	return multiplied_all
end

--

-- @ product_name
-- @ multiplier
function aswil.recipes.multiplyProductToAllRecipes(product_name, multiplier)
	local count = 0
	if product_name ~= nil then	
		for name, recipe in pairs(data.raw.recipe) do
			if aswil.recipes.multiplyProduct(name, product_name, multiplier) then
				count = count + 1
			end
		end
	end
	return count	
end

--

-- @ product_names
-- @ multiplier
function aswil.recipes.multiplyProductsToAllRecipes(product_names, multiplier)
	local total_count = 0
	for _, product_name in pairs(product_names) do
		total_count = total_count + aswil.recipes.multiplyProductToAllRecipes(product_name, multiplier)
	end
	return total_count	
end

-- replace

-- @ recipe_name
-- @ old_product_name
-- @ new_product
function aswil.recipes.replaceProduct(recipe_name, old_product_name, new_product)
	local products = aswil.recipes.getProducts(recipe_name)
	if next(products) ~= nil then
		return aswil.recipes.replace(products, old_product_name, new_product)	
	end
	return false	
end

--

-- @ recipe_name
-- @ old_product_names
-- @ new_products
function aswil.recipes.replaceProducts(recipe_name, old_product_names, new_products)
	if type(old_product_names) ~= "table" or type(new_products) ~= "table" then return false end
	local replaced_all = true
	local replaced = false
	local i, old_product_name = next(old_product_names, nil)
	local j, product          = next(new_products, nil)
	while i and j and type(product) == "table" do
		replaced = aswil.recipes.replaceProduct(recipe_name, old_product_name, aswil_utils.tables.fullCopy(product))
		replaced_all = replaced_all and replaced
		i, old_product_name = next(old_product_names, i)
		j, product          = next(new_products, j)
	end
	return replaced_all	
end

--

-- @ old_product_name
-- @ new_product
function aswil.recipes.replaceProductToAllRecipes(old_product_name, new_product)
	local count = 0
	if next(new_product) ~= nil then	
		for name, recipe in pairs(data.raw.recipe) do
			if aswil.recipes.replaceProduct(name, old_product_name, aswil_utils.tables.fullCopy(new_product)) then
				count = count + 1
			end
		end
	end
	return count	
end

--

-- @ old_product_names
-- @ new_products
function aswil.recipes.replaceProductsToAllRecipes(old_product_names, new_products)
	if type(old_product_names) ~= "table" or type(new_products) ~= "table" then return false end
	local total_count = 0
	local i, old_product_name = next(old_product_names, nil)
	local j, product          = next(new_products, nil)
	while i and j and next(product) ~= nil do
		total_count = total_count + aswil.recipes.replaceProductToAllRecipes(old_product_name, product)
		i, old_product_name = next(old_product_names, i)
		j, product          = next(new_products, j)
	end
	return total_count	
end

-- -- add or replace

-- @ recipe_name
-- @ old_product_name
-- @ new_product
function aswil.recipes.addOrReplaceProduct(recipe_name, old_product_name, new_product)
	if old_product_name == nil then
		return aswil.recipes.addProduct(recipe_name, new_product)
	end
	local products = aswil.recipes.getProducts(recipe_name)
	if next(products) ~= nil then		
		local added = aswil.recipes.addOrReplace(products, old_product_name, new_product)
		local recipe = aswil.recipes.getRecipeFromName(recipe_name)
		if #products > 1 and ( not(recipe.icon and recipe.subgroup) or recipe.main_product )then 
			local i, product = next(products)
			recipe.main_product = product.name
			aswil_utils.log.write(3, string.format("Maybe %s recipe needs the icon to be set correctly.", recipe.name))
		end
		return added
	end	
	return false	
end

--

-- @ recipe_name
-- @ old_product_names
-- @ new_products
function aswil.recipes.addOrReplaceProducts(recipe_name, old_product_names, new_products)
	if type(old_product_names) ~= "table" or type(new_products) ~= "table" then return false end
	local i, old_product_name = next(old_product_names, nil)
	local j, product          = next(new_products, nil)
	while j and type(product) == "table" do
		if not old_product_name then
			aswil.recipes.addProduct(recipe_name, aswil_utils.tables.fullCopy(product))
		else
			aswil.recipes.addOrReplaceProduct(recipe_name, old_product_name, aswil_utils.tables.fullCopy(product))
		end
		i, old_product_name = next(old_product_names, i)
		j, product          = next(new_products, j)
	end	
end

--

-- @ old_product_name
-- @ new_product
function aswil.recipes.addOrReplaceProductToAllRecipes(old_product_name, new_product)
	for name, recipe in pairs(data.raw.recipe) do
		aswil.recipes.addOrReplaceProduct(name, old_product_name, aswil_utils.tables.fullCopy(new_product))
	end	
end

--

-- @ old_product_names
-- @ new_products
function aswil.recipes.addOrReplacProductsToAllRecipes(old_product_names, new_products)
	if type(old_product_names) ~= "table" or type(new_products) ~= "table" then return false end
	local i, old_product_name = next(old_product_names, nil)
	local j, product          = next(new_products, nil)
	while j and type(product) == "table" do
		aswil.recipes.addOrReplaceProductToAllRecipes(old_product_name, product)
		i, old_product_name = next(old_product_names, i)
		j, product          = next(new_products, j)
	end	
end

-- convert

-- @ recipe_name
-- @ old_product_name
-- @ new_product
function aswil.recipes.convertProduct(recipe_name, old_product_name, new_product_name)
	local products = aswil.recipes.getProducts(recipe_name)
	if next(products) ~= nil then
		return aswil.recipes.convert(products, old_product_name, new_product_name)
	end
	return false
end

--

-- @ recipe_name
-- @ old_product_names
-- @ new_products
function aswil.recipes.convertProducts(recipe_name, old_product_names, new_product_names)
	if type(old_product_names) ~= "table" or type(new_product_names) ~= "table" then return false end
	local converted_all = true
	local converted     = false
	local i, old_product_name = next(old_product_names, nil)
	local j, new_product_name = next(new_product_names, nil)
	while i and j and new_product_name ~= nil do
		converted     = aswil.recipes.convertProduct(recipe_name, old_product_name, new_product_name)
		converted_all = converted_all and converted
		i, old_product_name = next(old_product_names, i)
		j, new_product_name = next(new_product_names, j)
	end
	return converted_all	
end

--

-- @ old_product_name
-- @ new_product
function aswil.recipes.convertProductFromAllRecipes(old_product_name, new_product_name)
	local count = 0	
	for name, recipe in pairs(data.raw.recipe) do
		if aswil.recipes.convertProduct(name, old_product_name, new_product_name) then
			count = count + 1
		end
	end	
	return count	
end

--

-- @ old_product_names
-- @ new_products
function aswil.recipes.convertProductsFromAllRecipes(old_product_names, new_product_names)
	if type(old_product_names) ~= "table" or type(new_product_names) ~= "table" then return false end
	local total_count = 0
	local i, old_product_name = next(old_product_names, nil)
	local j, new_product_name = next(new_product_names, nil)
	while i and j and new_product_name ~= nil do
		total_count = total_count + aswil.recipes.convertProductFromAllRecipes(old_product_name, new_product_name)
		i, old_product_name = next(old_product_names, i)
		j, new_product_name = next(new_product_names, j)
	end
	return total_count	
end

-- -- GROUP PRODUCTS

-- @ group_name
-- @ product_name
function aswil.recipes.removeProductFromGroup(group_name, product_name)
	if aswil.recipes.recipes_groups[group_name] then
		for _, recipe_name in pairs(aswil.recipes.recipes_groups[group_name]) do
			aswil.recipes.removeProduct(recipe_name, product_name)
		end
		return true
	end
	return false
end

-- @ group_name
-- @ product
function aswil.recipes.addProductToGroup(group_name, product)
	if aswil.recipes.recipes_groups[group_name] then
		for _, recipe_name in pairs(aswil.recipes.recipes_groups[group_name]) do
			aswil.recipes.addProduct(recipe_name, product)
		end		
		return true
	end
	return false
end

-- @ group_name
-- @ old_product_name
-- @ new_product
function aswil.recipes.replaceProductToGroup(group_name, old_product_name, new_product)
	if aswil.recipes.recipes_groups[group_name] then
		for _, recipe_name in pairs(aswil.recipes.recipes_groups[group_name]) do
			aswil.recipes.replaceProduct(recipe_name, old_product_name, new_product)
		end		
		return true
	end
	return false
end

-- @ group_name
-- @ old_product_name
-- @ new_product
function aswil.recipes.addOrReplaceProductToGroup(group_name, old_product_name, new_product)
	if aswil.recipes.recipes_groups[group_name] then
		for _, recipe_name in pairs(aswil.recipes.recipes_groups[group_name]) do
			aswil.recipes.addOrReplaceProduct(recipe_name, old_product_name, new_product)
		end		
		return true
	end
	return false
end

-- @ group_name
-- @ old_product_name
-- @ new_product_name
function aswil.recipes.convertProductToGroup(group_name, old_product_name, new_product_name)
	if aswil.recipes.recipes_groups[group_name] then
		for _, recipe_name in pairs(aswil.recipes.recipes_groups[group_name]) do
			aswil.recipes.convertProduct(recipe_name, old_product_name, new_product_name)
		end		
		return true
	end
	return false
end

-- -- -- OTHERS

-- @ recipe
function aswil.recipes.addWithOverrideSafeNewRecipe(recipe)
	if recipe.type == "recipe" and recipe.name then
		if data.raw.recipe[recipe.name] then		
			if not recipe.localised_name then
				if recipe.result then
					recipe.localised_name = {"item-name."..recipe.result}
				else
					recipe.localised_name = {"recipe-name."..recipe.name}
				end
			end
			local suffix = 2
			while data.raw.recipe[recipe.name.."-"..suffix] do
				suffix = suffix + 1
			end
			-- log activity
			aswil_utils.log.write(3, string.format("Avoided recipe override chaning recipe name from %s to %s", recipe.name, recipe.name.."-"..suffix))			
			recipe.name = recipe.name.."-"..suffix
		end
		data:extend({recipe})
	end
end

-- @ recipe_name
-- @ multiplier
function aswil.recipes.multiplyRecipeStat(recipe_name, multiplier, only_ingredients)

	local recipe = aswil.recipes.getRecipeFromName(recipe_name)
		
	if recipe ~= nil and recipe ~= false then
	
		-- ingredients
		local ingredients = aswil.recipes.getIngredients(recipe_name)
		if next(ingredients) ~= nil then
			for i, ingredient in pairs(ingredients) do
				if ingredient.amount then
					ingredients[i].amount = ingredient.amount * multiplier
				else
					ingredients[i][2] = ingredient[2] * multiplier
				end				
			end
		end
		
		local expensive_ingredients = aswil.recipes.getExpensiveIngredients(recipe_name)
		if expensive_ingredients and next(expensive_ingredients) ~= nil then
			for i, ingredient in pairs(expensive_ingredients) do
				if ingredient.amount then
					expensive_ingredients[i].amount = ingredient.amount * multiplier
				else
					expensive_ingredients[i][2] = ingredient[2] * multiplier
				end				
			end
		end
		
		-- products
		if not only_ingredients or only_ingredients ~= true then
			local products = aswil.recipes.getProducts(recipe_name)
			if next(products) ~= nil then
				for i, product in pairs(products) do
					if product.amount then
						products[i].amount = product.amount * multiplier
					else
						products[i][2] = product[2] * multiplier
					end			
				end
			end	
		end

		-- energy required/time to craft
		if not recipe.energy_required and not (recipe.normal and recipe.normal.energy_required) and not (recipe.expensive and recipe.expensive.energy_required) then
			if recipe and recipe.ingredients then
				recipe.energy_required = recipe.energy_required * multiplier
			end
			if recipe.normal ~= nil and recipe.normal.ingredients then
				recipe.normal.energy_required = recipe.normal.energy_required * multiplier
			end
			if recipe.expensive ~= nil and recipe.expensive.ingredients then
				recipe.expensive.energy_required = recipe.expensive.energy_required * multiplier
			end			
		else	
			if recipe.energy_required ~= nil and recipe.ingredients then
				recipe.energy_required = recipe.energy_required * multiplier
			end
			if recipe.normal ~= nil and recipe.normal.ingredients and recipe.normal.energy_required ~= nil then
				recipe.normal.energy_required = recipe.normal.energy_required * multiplier
			end
			if recipe.expensive ~= nil and recipe.expensive.ingredients and recipe.expensive.energy_required ~= nil then
				recipe.expensive.energy_required = recipe.expensive.energy_required * multiplier
			end	
		end
		
	end	

end

-- @ recipe_name
-- @ category_name
-- return a category
function aswil.recipes.existRecipesCategory(category_name)
	if type(recipe_name) == "string" then
		for name, category in pairs(data.raw["recipe-category"]) do
			if name == category_name then 
				return category
			end
		end
	end
	return false
end

-- @ recipe_name
-- @ category_name
function aswil.recipes.setCategoryIfExist(recipe_name, category_name)
	local category = aswil.recipes.existRecipesCategory(category_name)
	if category then
		local recipe = aswil.recipes.getRecipeFromName(recipe_name)
		if recipe then
			recipe.category = category
		end	
	end
end

-- @ old_category_name
-- @ new_category_name
function aswil.recipes.migrateCategory(old_category_name, new_category_name)
	-- remove old category
	if data.raw["recipe-category"][old_category_name] then
		data.raw["recipe-category"][old_category_name] = nil
	end
	-- create new category if not exist
	if data.raw["recipe-category"][new_category_name] then
		data:extend
		({
			{
			   type = "recipe-category",
			   name = new_category_name
			}
		})
	end
	-- change category in machines
	for _, prototypes_type in pairs({"assembling-machine", "furnace"}) do
		for _, prototype in pairs(data.raw[prototypes_type]) do
			for i, category in pairs(prototype.crafting_categories) do
				if category == old_category_name then
					table.remove(prototype.crafting_categories, i)
					table.insert(prototype.crafting_categories, new_category_name)
				end
			end
		end
	end
	-- change in recipes
	for _, recipe in pairs(data.raw.recipe) do
		if recipe.category == old_category_name then
			recipe.category = new_category_name
		end
	end
end

-- @ recipe_name
-- @ group_name
function aswil.recipes.addRecipeToGroup(recipe_name, group_name)
	if not aswil.recipes.recipes_groups[group_name] then
		aswil.recipes.recipes_groups[group_name] = {}
	end	
	table.insert(aswil.recipes.recipes_groups[group_name], recipe_name)
end

-- @ recipe_name
-- @ group_name
function aswil.recipes.removeRecipeFromGroup(recipe_name, group_name)
	if aswil.recipes.recipes_groups[group_name] then
		if aswil.recipes.recipes_groups[group_name][recipe_name] then 
			table.remove(aswil.recipes.recipes_groups[group_name], recipe_name)
			if not next(aswil.recipes.recipes_groups[group_name]) then
				table.remove(aswil.recipes.recipes_groups, group_name)
			end
		end
	end
end

-- @ recipe_name
-- @ energy_cost
function aswil.recipes.setRecipeEnergyCost(recipe_name, energy_cost, expensive_cost)
	local recipe = aswil.recipes.getRecipeFromName(recipe_name)
		
	if recipe ~= nil then
		local effective_expensive_cost = expensive_cost or energy_cost
		if not recipe.energy_required and not (recipe.normal and recipe.normal.energy_required) and not (recipe.expensive and recipe.expensive.energy_required) then
			if recipe and recipe.ingredients then
				recipe.energy_required = energy_cost
			end
			if recipe.normal ~= nil and recipe.normal.ingredients then
				recipe.normal.energy_required = energy_cost
			end
			if recipe.expensive ~= nil and recipe.expensive.ingredients then
				recipe.expensive.energy_required = effective_expensive_cost
			end			
		else	
			if recipe.energy_required ~= nil and recipe.ingredients then
				recipe.energy_required = energy_cost
			end
			if recipe.normal ~= nil and recipe.normal.ingredients and recipe.normal.energy_required ~= nil then
				recipe.normal.energy_required = energy_cost
			end
			if recipe.expensive ~= nil and recipe.expensive.ingredients and recipe.expensive.energy_required ~= nil then
				recipe.expensive.energy_required = effective_expensive_cost
			end	
		end
	end
end

-- @ recipe_name
-- @ result_count
function aswil.recipes.setRecipeResultCount(recipe_name, result_count)
	local recipe = aswil.recipes.getRecipeFromName(recipe_name)
	
	if recipe ~= nil then
		if not recipe.result_count and not (recipe.normal and recipe.normal.result_count) and not (recipe.expensive and recipe.expensive.result_count) then
			if recipe and recipe.ingredients then
				recipe.result_count = result_count
			end
			if recipe.normal ~= nil and recipe.normal.ingredients then
				recipe.normal.result_count = result_count
			end
			if recipe.expensive ~= nil then
				recipe.expensive.result_count = result_count
			end			
		else
			if recipe.result_count ~= nil then
				recipe.result_count = result_count
			end
			if recipe.normal ~= nil and recipe.normal.ingredients and recipe.normal.result_count ~= nil then
				recipe.normal.result_count = result_count
			end
			if recipe.expensive ~= nil and recipe.expensive.ingredients and recipe.expensive.result_count ~= nil then
				recipe.expensive.result_count = result_count
			end			
		end
	end
end

-- @ recipe_name
function aswil.recipes.restoreRecipeToVanilla(recipe_name)
	aswil_utils.recipes_backup_utils.restoreRecipeToVanilla(recipe_name)
end

-- @ recipe_name
function aswil.recipes.uniteDuplicateItemsOfRecipe(recipe_name)	
	local ingredients = aswil.recipes.getIngredients(recipe_name)
	if next(ingredients) ~= nil then
		aswil.recipes.uniteDuplicateItems(ingredients)
		local expensive_ingredients = aswil.recipes.getExpensiveIngredients(recipe_name)
		if next(expensive_ingredients) ~= nil then
			aswil.recipes.uniteDuplicateItems(expensive_ingredients)
		end
	end
end

-- -- ENABLE/DISABLE

-- @ recipe_name
-- @ state
function aswil.recipes.changeEnabledState(recipe_name, state)
	local recipe = aswil.recipes.getRecipeFromName(recipe_name)
	if recipe then
		if recipe.normal then
			recipe.normal.enabled = state or false
			recipe.expensive.enabled = state or false
		else
			recipe.enabled = state or false
		end		
	end	
end

-- @ recipe_name
function aswil.recipes.enable(recipe_name)
	aswil.recipes.changeEnabledState(recipe_name, true)
end

--

-- @ recipe_name
function aswil.recipes.disable(recipe_name)
	aswil.recipes.changeEnabledState(recipe_name, false)
end

-- -- DEBUG

function aswil.recipes.findNotUnlockableRecipes()
	-- list all disabled recipes
	local all_recipes = {}
	local recipe_name = nil
	for index_name, recipe in pairs(data.raw.recipe) do
		if recipe.enabled == false or
		   (recipe.normal and recipe.normal.enabled == false) or
		   (recipe.expensive and recipe.expensive.enabled == false) then
			recipe_name = recipe.name or index_name
			all_recipes[recipe_name] = true
		end
	end
	-- remove what compair in tech
	for _, tech in pairs(data.raw.technology) do
		if tech.effects then
			for _, effect in pairs(tech.effects) do
				if effect.type == "unlock-recipe" and effect.recipe then
				  all_recipes[effect.recipe] = nil
				end
			end
		end
	end
	-- remove recipes that is unlockable by default
	local default_locked_vanilla_recipes = { "loader", "railgun-dart", "player-port", "railgun", "fast-loader", "express-loader", "small-plane", "electric-energy-interface" }
	for _, recipe_name in pairs(default_locked_vanilla_recipes) do
		all_recipes[recipe_name] = nil
	end	
	local default_locked_creative_mod = { "creative-mod_creative-chest", "creative-mod_creative-provider-chest", "creative-mod_autofill-requester-chest", "creative-mod_duplicating-chest", "creative-mod_duplicating-provider-chest", "creative-mod_void-requester-chest", "creative-mod_void-storage-chest", "creative-mod_super-loader", "creative-mod_creative-cargo-wagon", "creative-mod_duplicating-cargo-wagon", "creative-mod_void-cargo-wagon", "creative-mod_super-logistic-robot", "creative-mod_super-construction-robot", "creative-mod_super-roboport", "creative-mod_fluid-source", "creative-mod_fluid-void", "creative-mod_super-boiler", "creative-mod_super-cooler", "creative-mod_configurable-super-boiler", "creative-mod_heat-source", "creative-mod_heat-void", "creative-mod_item-source", "creative-mod_duplicator", "creative-mod_item-void", "creative-mod_random-item-source", "creative-mod_creative-lab", "creative-mod_active-electric-energy-interface-output", "creative-mod_passive-electric-energy-interface", "creative-mod_active-electric-energy-interface-input", "creative-mod_energy-source", "creative-mod_passive-energy-source", "creative-mod_energy-void", "creative-mod_passive-energy-void", "creative-mod_super-electric-pole", "creative-mod_super-substation", "creative-mod_energy-absorption", "creative-mod_magic-wand-creator", "creative-mod_magic-wand-healer", "creative-mod_magic-wand-modifier", "creative-mod_super-radar", "creative-mod_super-radar-2", "creative-mod_alien-attractor-small", "creative-mod_alien-attractor-medium", "creative-mod_alien-attractor-large", "creative-mod_super-beacon", "creative-mod_super-speed-module", "creative-mod_super-effectivity-module", "creative-mod_super-productivity-module", "creative-mod_super-clean-module", "creative-mod_super-slow-module", "creative-mod_super-consumption-module", "creative-mod_super-pollution-module", "infinity-chest", "creative-mod_belt-immunity-equipment", "creative-mod_super-fusion-reactor-equipment", "creative-mod_super-personal-roboport-equipment" }
	for _, recipe_name in pairs(default_locked_creative_mod) do
		all_recipes[recipe_name] = nil
	end	
	-- gettin remain results
	local not_unlockable_recipe_names = {}
	for recipe_name, _ in pairs(all_recipes) do
		table.insert(not_unlockable_recipe_names, recipe_name)
	end	
	-- print result in log before return the list
	if next(not_unlockable_recipe_names) == nil then
		aswil_utils.log.write(1, string.format("All recipes are unlockable."))
	else
		local inspect = require("__KrastorioPorted__/aswil_lib/utils/inspect")
		aswil_utils.log.write(3, string.format("This recipes is not unlockable, maybe is an error: %s [from findNotUnlockableRecipes()]", inspect(not_unlockable_recipe_names)))
	end
	return not_unlockable_recipe_names
end

--