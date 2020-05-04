aswil.recipes.findNotUnlockableRecipes()
-- -- Generical compatibility

-- Finalize vanilla changes adding ammo damage bonuses to technologies
require("prototypes.vanilla-changes.vanilla-changes-mandatory.vanilla-changes-damage-technologies-bonuses")
-- Apply the choosen science pack recipes
require("prototypes.vanilla-changes.vanilla-changes-optional.modify-science-packs")

-- Krastorio science pack collection
aswil.technologies.addSciencePackCollection("Krastorio",
{
	"automation-research-data",
	"logistic-research-data",
	"military-research-data",
	"chemical-research-data",
	"scientific-research-data",
	"matter-research-data",
	"optimization-research-data"
})

-- sanitize Krastorio Technologies
aswil.technologies.sanitizeUnitsOfAllTechnologiesInPacks("Krastorio", false)

-- -- Apply compatibility scripts (data-final-fixes-phase)
----------------------------------------------------------
local scripts_path = "compatibility-scripts.data-final-fixes."
require(scripts_path .. "aai-industry")
require(scripts_path .. "aircraft")
require(scripts_path .. "aai-vehicles-hauler")
require(scripts_path .. "hovercrafts")
require(scripts_path .. "space-exploration")
require(scripts_path .. "rampant")
require(scripts_path .. "realistic-electric-trains")
require(scripts_path .. "expanded-rocket-payloads")
-- Deadlocks
require(scripts_path .. "deadlock-beltboxes-loaders")
require(scripts_path .. "deadlock-crating")
require(scripts_path .. "IndustrialRevolution")
-- require("compatibility-scripts.data-final-fixes.DeadlockLargerLamp")
-- Pyanodons
require(scripts_path .. "Pyanodon")
----------------------------------------------------------
