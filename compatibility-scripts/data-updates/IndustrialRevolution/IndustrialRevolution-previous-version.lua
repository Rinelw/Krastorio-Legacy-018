local version = mods["IndustrialRevolution"]

aswil_utils.log.info(aswil.general.isVersionLesserThan(version, "0.99.4"))
if aswil.general.isVersionLesserThan(version, "0.99.4")  then

	require("__IndustrialRevolution__/code/functions/functions-icons")
	data:extend(
	{
		{
			type = "item-group",
			name = "deadlock-disassembly",
			order = "z",
			icon = get_icon_path("disassembly", 128),
			icon_size = 128
		},
		{
			type = "item-subgroup",
			name = "scrapping",
			group = "deadlock-disassembly",
			order = "whatever"
		},
		{
			type = "item-subgroup",
			name = "scrap",
			group = "deadlock-disassembly",
			order = "whatever"
		}
	})
	
	require("__Krastorio__/compatibility-scripts/data-updates/IndustrialRevolution/IndustrialRevolution-recycle-recipes")
	
end