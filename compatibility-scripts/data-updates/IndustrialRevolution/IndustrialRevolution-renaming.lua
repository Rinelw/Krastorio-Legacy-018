-- -- -- Name changing

-- Revert vanilla steel plate renaming to "iron beam"

data.raw.item["steel-plate"].localised_name={"item-name.steel-plate"}
data.raw.item["steel-plate"].localised_description={"item-description.steel-plate"}

data.raw.recipe["copper-plate-2"].localised_description=data.raw.recipe["copper-ingot-from-pure"].localised_description
data.raw.recipe["iron-plate-2"].localised_description=data.raw.recipe["iron-ingot-from-pure"].localised_description

-- Revert vanilla steel chest renaming to "reinforced iron chest"

data.raw.container["steel-chest"].localised_name=nil -- {"entity-name.steel-chest"}
data.raw.item["steel-chest"].localised_name=nil -- {"entity-name.steel-chest"}
data.raw.recipe["steel-chest"].localised_description=nil -- {"entity-name.steel-chest"}

-- filtration plant

data.raw.technology["k-filtration-plant"].localised_name = {"item-name.advanced-water-filtration-plant"}
data.raw.item["k-filtration-plant"].localised_name = {"item-name.advanced-water-filtration-plant"}
data.raw.recipe["k-filtration-plant"].localised_name = {"item-name.advanced-water-filtration-plant"}
data.raw["assembling-machine"]["k-filtration-plant"].localised_name = {"item-name.advanced-water-filtration-plant"}

-- advanced furnace

data.raw.technology["k-advanced-furnace"].localised_name = {"item-name.superior-furnace"}
data.raw.item["k-advanced-furnace"].localised_name = {"item-name.superior-furnace"}
data.raw.recipe["k-advanced-furnace"].localised_name = {"item-name.superior-furnace"}
data.raw["assembling-machine"]["k-advanced-furnace"].localised_name = {"item-name.superior-furnace"}