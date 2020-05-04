-- -- -- GLOBAL VARIABLES
aswil = {}
-- -- -- ADDING UTILS FOR FUNCTIONS
require("aswil_lib.utils.aswil_utils")
require("aswil_lib.utils.vanilla_data_backups.recipes_backup_utils")
-- -- -- ADDING FUNCTIONS
require("aswil_lib.entities")
require("aswil_lib.equipments")
require("aswil_lib.items")
require("aswil_lib.recipes")
require("aswil_lib.technologies")
require("aswil_lib.general")
require("aswil_lib.icons")
require("aswil_lib.modules")

-- -- Checking Krastorio assertions before load the mod
----------------------------------------------------------
require("compatibility-scripts.data.mod-assertions")
----------------------------------------------------------

-- -- Adding Krastorio paths
----------------------------------------------------------
require("lib.paths")
----------------------------------------------------------

-- -- Utils
----------------------------------------------------------
require("prototypes.entity.pipes-overlay")
----------------------------------------------------------

-- -- Adding new categories
----------------------------------------------------------
require("prototypes.categories.ammo-category")
require("prototypes.categories.fuel-category")
require("prototypes.categories.recipe-category")
----------------------------------------------------------

-- -- Adding new entities
----------------------------------------------------------
require("prototypes.entity.battle-tank")
require("prototypes.entity.entity")
require("prototypes.entity.explosions")
require("prototypes.entity.projectiles")
require("prototypes.entity.remnants")
require("prototypes.entity.resources")
require("prototypes.entity.superior-inserters")
require("prototypes.entity.steel-pipecovers")
require("prototypes.entity.pipes")
----------------------------------------------------------

-- -- Adding new fluids
----------------------------------------------------------
require("prototypes.fluid.fluid")
----------------------------------------------------------

-- -- Adding new items
----------------------------------------------------------
require("prototypes.item.ammo")
require("prototypes.item.gun")
require("prototypes.item.item")
require("prototypes.item.item-groups")
require("prototypes.item.tank-guns")
----------------------------------------------------------

-- -- Adding new recipes
----------------------------------------------------------
require("prototypes.recipe.recipe")
----------------------------------------------------------

-- -- Adding new technologies
----------------------------------------------------------
require("prototypes.technology.technology")
----------------------------------------------------------

-- -- Adding new tiles
----------------------------------------------------------
require("prototypes.tile.tiles")
----------------------------------------------------------

-- -- Adding new signals
----------------------------------------------------------
require("prototypes.signals")
----------------------------------------------------------

-- -- Optional mod parts
----------------------------------------------------------
require("prototypes.entity.loaders")
require("prototypes.technology.loader-technology")	
require("prototypes.princessorio")
----------------------------------------------------------

-- -- Apply compatibility scripts (data-phase)
----------------------------------------------------------
local scripts_path = "compatibility-scripts.data."
require(scripts_path .. "aircraft")
require(scripts_path .. "squeak_through_fix")
-- Deadlocks
require(scripts_path .. "deadlock-beltboxes-loaders")
require(scripts_path .. "deadlock-crating")
----------------------------------------------------------

-- -- Test stuff
-- Nothing actually...
