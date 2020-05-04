
aswil_utils.log = {}
aswil_utils.inspect = require("inspect")
aswil_utils.log.enable = true

--[[ Level number and type:
	INFO    <=1
	CONFIG    2
	WARNING   3
	ERROR     4
	SEVERE  >=5
]]-- 

function aswil_utils.log.disableLogs()
	aswil_utils.log.enable = false
end

function aswil_utils.log.enableLogs()
	aswil_utils.log.enable = true
end

-- @ txt
function aswil_utils.log.info(txt)
	if aswil_utils.log.enable then
		return aswil_utils.log._(txt, "INFO")
	end
end

-- @ txt
function aswil_utils.log.config(txt)
	if aswil_utils.log.enable then
		return aswil_utils.log._(txt, "CONFIG")
	end
end

-- @ txt
function aswil_utils.log.warning(txt)
	if aswil_utils.log.enable then
		return aswil_utils.log._(txt, "WARNING")
	end
end

-- @ txt
function aswil_utils.log.error(txt)
	if aswil_utils.log.enable then
		return aswil_utils.log._(txt, "ERROR")
	end
end

-- @ txt
function aswil_utils.log.severe(txt)
	if aswil_utils.log.enable then
		return aswil_utils.log._(txt, "SEVERE")
	end
end

-- @ level
-- @ txt
function aswil_utils.log.write(level, txt)
	if level then
		if type(level) == "string" then
			if string.lower(level) == "info" then
				return aswil_utils.log.info(txt)
			elseif string.lower(level) == "config" then
				return aswil_utils.log.config(txt)
			elseif string.lower(level) == "warning" then
				return aswil_utils.log.warning(txt)
			elseif string.lower(level) == "error" then
				return aswil_utils.log.error(txt)
			else 
				return aswil_utils.log.severe(txt)
			end
		end
		if type(level) == "number" then
			if level <= 1 then
				return aswil_utils.log.info(txt)
			elseif level == 2 then
				return aswil_utils.log.config(txt)
			elseif level == 3 then
				return aswil_utils.log.warning(txt)
			elseif level == 4 then
				return aswil_utils.log.error(txt)
			else
				return aswil_utils.log.severe(txt)
			end
		end
	end
	return false
end

-- Private

function aswil_utils.log._(txt, message_level)
	local base_level = 1
	if debug.getinfo(3) then
		base_level = 2
	end
	local out_file, out_function_name, out_line = debug.getinfo(base_level+1).short_src, debug.getinfo(base_level+1).name, debug.getinfo(base_level+1).currentline
	local in_file, in_function_name, in_line = debug.getinfo(base_level).short_src, debug.getinfo(base_level).name, debug.getinfo(base_level).currentline
	
	log("ASWIL|LogLevel:" .. message_level)
	if in_function_name then
		log("From ASWIL->file:" .. in_file .. "->function:" .. in_function_name .. "->line:" .. in_line) 
	else
		log("From ASWIL->file:" .. in_file .. "->line:" .. in_line)  
	end	
	if out_function_name then
		log("Called in->file:" .. out_file .. "->function:" .. out_function_name .. "->line:" .. out_line)  
	else
		log("Called in->file:" .. out_file .. "->line:" .. out_line)  
	end
	log("Message: " .. aswil_utils.inspect(txt))
	
	return true
end