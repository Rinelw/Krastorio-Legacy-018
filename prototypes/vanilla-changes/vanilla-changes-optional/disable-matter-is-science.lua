-- Disable the "matter is science" technology

if settings.startup["disable-matter-is-science"] and settings.startup["disable-matter-is-science"].value then

	aswil.technologies.disable("matter-is-science", true)
	
end
