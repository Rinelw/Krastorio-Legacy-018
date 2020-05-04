-- -- -- Mod assertions

krastorio_assertions =
{
	"incompatible mod combination"
}

-- Can't be used IndustrialRevolution and aai-industry at the same time with Krastorio
if mods["IndustrialRevolution"] and mods["aai-industry"] then
	aswil.general.printWarningMessage(krastorio_assertions[1], "Industrial Revolution and AAI Industry can't be used at the same time with Krastorio!")
end