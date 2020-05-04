-- Equip

table.insert(data.raw["generator-equipment"]["burner-generator-equipment"].categories, "universal-equipment")
table.insert(data.raw["generator-equipment"]["iron-burner-generator-equipment"].categories, "universal-equipment")
table.insert(data.raw["roboport-equipment"]["bronze-roboport-equipment"].categories, "universal-equipment")
table.insert(data.raw["generator-equipment"]["battery-discharge-equipment"].categories, "universal-equipment")

data.raw["generator-equipment"]["burner-generator-equipment"].order = "a1[energy-source]-a2[burner-generator-equipment]"
data.raw.recipe["burner-generator-equipment"].order = "a1[energy-source]-a2[burner-generator-equipment]"
data.raw["generator-equipment"]["iron-burner-generator-equipment"].order = "a1[energy-source]-a3[iron-burner-generator-equipment]"
data.raw.recipe["iron-burner-generator-equipment"].order = "a1[energy-source]-a3[iron-burner-generator-equipment]"