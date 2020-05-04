-- -- -- Icons	

data.raw.recipe["sand-from-stone"].icon = "__IndustrialRevolution__/graphics/icons/64/sand.png"
data.raw.recipe["sand-from-stone"].icon_size = 64
data.raw.item["sand"].icon = "__IndustrialRevolution__/graphics/icons/64/sand.png"
data.raw.item["sand"].icon_size = 64
data.raw.item["sand"].pictures =
{
  { size = 64, filename = "__IndustrialRevolution__/graphics/icons/64/sand.png", scale = 0.25, mipmap_count = 4 }
}

data.raw.recipe["gold-plate"].icon = "__IndustrialRevolution__/graphics/icons/64/gold-plate.png"
data.raw.recipe["gold-plate"].icon_size = 64
data.raw.item["gold-plate"].icon = "__IndustrialRevolution__/graphics/icons/64/gold-plate.png"
data.raw.item["gold-plate"].icon_size = 64
data.raw.item["gold-plate"].pictures =
{
  { size = 64, filename = "__IndustrialRevolution__/graphics/icons/64/gold-plate.png", scale = 0.25, mipmap_count = 4 }
}

data.raw.recipe["k-titanium-plate"].icon = "__IndustrialRevolution__/graphics/icons/64/titanium-ingot.png"
data.raw.recipe["k-titanium-plate"].icon_size = 64
data.raw.recipe["k-titanium-plate-2"].icon = "__IndustrialRevolution__/graphics/icons/64/titanium-ingot.png"
data.raw.recipe["k-titanium-plate-2"].icon_size = 64

data.raw.item["k-tantalum-plate"].icon = "__Krastorio__/graphics/compatibility/IndustrialRevolution/tantalum-plate.png"
data.raw.item["k-tantalum-plate"].icon_size = 64
data.raw.item["k-tantalum-plate"].pictures =
{
  { size = 64, filename = "__Krastorio__/graphics/compatibility/IndustrialRevolution/tantalum-plate.png", scale = 0.25, mipmap_count = 4 }
}
data.raw.recipe["k-tantalum-plate"].icon = "__Krastorio__/graphics/compatibility/IndustrialRevolution/tantalum-ingot.png"
data.raw.recipe["k-tantalum-plate"].icon_size = 64
data.raw.recipe["k-tantalum-plate-2"].icon = "__Krastorio__/graphics/compatibility/IndustrialRevolution/tantalum-ingot.png"
data.raw.recipe["k-tantalum-plate-2"].icon_size = 64

data.raw.ammo["imersite-rounds-magazine"].icon = "__Krastorio__/graphics/compatibility/IndustrialRevolution/imersite-magazine.png"
data.raw.ammo["imersite-rounds-magazine"].icon_size = 64
data.raw.recipe["imersite-rounds-magazine"].icon = "__Krastorio__/graphics/compatibility/IndustrialRevolution/imersite-magazine.png"
data.raw.recipe["imersite-rounds-magazine"].icon_size = 64

data.raw.item["imersite-battery"].icon = "__Krastorio__/graphics/compatibility/IndustrialRevolution/imersite-battery.png"
data.raw.item["imersite-battery"].icon_size = 64
data.raw.recipe["imersite-battery"].icon = "__Krastorio__/graphics/compatibility/IndustrialRevolution/imersite-battery.png"
data.raw.recipe["imersite-battery"].icon_size = 64


-- -- Overlay additions

data.raw.recipe["copper-plate-2"].icons = 
aswil.icons.createOverlappedIcon
(
	1, 
	"__IndustrialRevolution__/graphics/icons/64/copper-ingot.png", 
	64, 
	"__Krastorio__/graphics/k.png", 
	64
)
data.raw.recipe["copper-plate-2"].icon = nil
data.raw.recipe["copper-plate-2"].icon_size = nil
data.raw.recipe["copper-plate-2"].always_show_made_in = true
data.raw.recipe["copper-plate-2"].always_show_products = true
data.raw.recipe["copper-plate-2"].show_amount_in_title = false

data.raw.recipe["iron-plate-2"].icons = 
aswil.icons.createOverlappedIcon
(
	1, 
	"__IndustrialRevolution__/graphics/icons/64/iron-ingot.png", 
	64, 
	"__Krastorio__/graphics/k.png", 
	64
)
data.raw.recipe["iron-plate-2"].icon = nil
data.raw.recipe["iron-plate-2"].icon_size = nil
data.raw.recipe["iron-plate-2"].always_show_made_in = true
data.raw.recipe["iron-plate-2"].always_show_products = true
data.raw.recipe["iron-plate-2"].show_amount_in_title = false

data.raw.recipe["k-titanium-plate"].icons = 
aswil.icons.createOverlappedIcon
(
	1, 
	"__IndustrialRevolution__/graphics/icons/64/titanium-ingot.png", 
	64, 
	"__Krastorio__/graphics/k.png", 
	64
)
data.raw.recipe["k-titanium-plate"].icon = nil
data.raw.recipe["k-titanium-plate"].icon_size = nil
data.raw.recipe["k-titanium-plate"].always_show_made_in = true
data.raw.recipe["k-titanium-plate"].always_show_products = true
data.raw.recipe["k-titanium-plate"].show_amount_in_title = false

data.raw.recipe["k-titanium-plate-2"].icons = 
aswil.icons.createOverlappedIcon
(
	1, 
	"__IndustrialRevolution__/graphics/icons/64/titanium-ingot.png", 
	64, 
	"__Krastorio__/graphics/k.png", 
	64
)
data.raw.recipe["k-titanium-plate-2"].icon = nil
data.raw.recipe["k-titanium-plate-2"].icon_size = nil
data.raw.recipe["k-titanium-plate-2"].always_show_made_in = true
data.raw.recipe["k-titanium-plate-2"].always_show_products = true
data.raw.recipe["k-titanium-plate-2"].show_amount_in_title = false

data.raw.recipe["steel-gear-wheel"].icon = "__IndustrialRevolution__/graphics/icons/64/steel-gear-wheel-2.png"
data.raw.recipe["steel-gear-wheel"].icon_size = 64
data.raw.item["steel-gear-wheel"].icon = "__IndustrialRevolution__/graphics/icons/64/steel-gear-wheel-2.png"
data.raw.item["steel-gear-wheel"].icon_size = 64