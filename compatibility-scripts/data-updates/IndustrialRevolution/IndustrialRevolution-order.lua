-- -- -- Item orders

-- -- Raw items
-- sand recipe
data.raw.recipe["sand-from-stone"].subgroup = "powder"
data.raw.recipe["sand-from-stone"].order = "aardvark-d-b-a"

-- krastorio coke (from coal)
data.raw.recipe["k-coke"].subgroup = "non-handcrafting"
data.raw.recipe["k-coke"].order = "aardvark-e3-y-v2"

-- quartz recipe
data.raw.recipe["sand-to-quartz"].subgroup = "non-handcrafting"
data.raw.recipe["sand-to-quartz"].order = "aardvark-e3-y-z2-a1"

-- sand filtration to dirty water
data.raw.recipe["sand-filtration"].subgroup = "non-handcrafting"
data.raw.recipe["sand-filtration"].order = "aardvark-e3-y-z2-a2"

-- silicon
data.raw.recipe["k-silicon"].subgroup = "non-handcrafting"
data.raw.recipe["k-silicon"].order = "aardvark-e3-y-z2-b"

-- gold plate
data.raw.item["gold-plate"].subgroup = "plate"
data.raw.item["gold-plate"].order = "aardvark-f-g-h-3"
data.raw.recipe["gold-plate"].subgroup = "plate"
data.raw.recipe["gold-plate"].order = "aardvark-f-g-h-3"
data.raw.recipe["gold-plate"].category = "crafting"

-- titanium plate
data.raw.recipe["k-titanium-plate"].subgroup = "ingot"
data.raw.recipe["k-titanium-plate"].order = "aardvark-e3-o-d"

data.raw.recipe["k-titanium-plate-2"].subgroup = "ingot"
data.raw.recipe["k-titanium-plate-2"].order = "aardvark-e3-o-d"

-- tantalum plate
data.raw.item["k-tantalum-plate"].subgroup = "ingot"
data.raw.item["k-tantalum-plate"].order = "aardvark-f-o-e4"
data.raw.recipe["k-tantalum-plate"].subgroup = "ingot"
data.raw.recipe["k-tantalum-plate"].order = "aardvark-f-o-e4"

data.raw.recipe["k-tantalum-plate"].subgroup = "ingot"
data.raw.recipe["k-tantalum-plate"].order = "aardvark-e3-p-e2"

data.raw.recipe["k-tantalum-plate-2"].subgroup = "ingot"
data.raw.recipe["k-tantalum-plate-2"].order = "aardvark-e3-p-e2"

-- enriched copper
data.raw.recipe["enriched-copper"].subgroup = "gravel"
data.raw.recipe["enriched-copper"].order = "aardvark-b-h-aa2"
data.raw.recipe["copper-plate-2"].subgroup = "ingots-1"
data.raw.recipe["copper-plate-2"].order = "aardvark-e3-d-d2"

-- enriched iron
data.raw.recipe["enriched-iron"].subgroup = "gravel"
data.raw.recipe["enriched-iron"].order = "aardvark-b-h-aa3"	
data.raw.recipe["iron-plate-2"].subgroup = "ingots-2"
data.raw.recipe["iron-plate-2"].order = "aardvark-e3-g-d2"

-- imersite glass
data.raw.recipe["imersite-glass"].subgroup = "non-handcrafting"
data.raw.recipe["imersite-glass"].order = "aardvark-f-i-e3[imersite-glass]"

-- krastorio silicon wafer
data.raw.recipe["k-silicon-wafer"].subgroup = "non-handcrafting"
data.raw.recipe["k-silicon-wafer"].order = "z2[k-silicon-wafer]"
 
-- krastorio menarite wafer
data.raw.recipe["menarite-wafer"].subgroup = "non-handcrafting"
data.raw.recipe["menarite-wafer"].order = "z3[menarite-wafer]"

-- lithium
data.raw.item["k-lithium"].subgroup = "non-handcrafting"
data.raw.item["k-lithium"].order = "z2[k-lithium]"

data.raw.recipe["k-lithium"].subgroup = "non-handcrafting"
data.raw.recipe["k-lithium"].order = "z2[k-lithium-chloride]"

-- lithium chloride
data.raw.item["k-lithium-chloride"].subgroup = "non-handcrafting"
data.raw.item["k-lithium-chloride"].order = "z3[k-lithium-chloride]"

data.raw.recipe["k-lithium-chloride"].subgroup = "non-handcrafting"
data.raw.recipe["k-lithium-chloride"].order = "z3[k-lithium-chloride]"

-- Moving fluid recipes
data.raw.recipe["water-filtration"].subgroup = "fluid-recipes"
data.raw.recipe["salt-water-production"].subgroup = "fluid-recipes"
data.raw.recipe["dirty-water-filtration-1"].subgroup = "fluid-recipes"
data.raw.recipe["dirty-water-filtration-2"].subgroup = "fluid-recipes"

 
data.raw.recipe["k-air-separation"].subgroup = "fluid-recipes-2"
data.raw.recipe["salt-water-electrolysis"].subgroup = "fluid-recipes-2"
data.raw.recipe["pure-water-electrolysis"].subgroup = "fluid-recipes-2"
data.raw.recipe["k-ammonia"].subgroup = "fluid-recipes-2"
data.raw.recipe["k-hydrogen-chloride"].subgroup = "fluid-recipes-2"
data.raw.recipe["k-nitric-acid"].subgroup = "fluid-recipes-2"

-- Moving to processing krastorio mining recipes
data.raw["item-subgroup"]["k2-raw-resource"].group = "deadlock-processing"
--[[
is like	-- >
data.raw.recipe["k-stone-processing"].group = "deadlock-processing"
data.raw.recipe["raw-chunk-sorting"].group = "deadlock-processing"
data.raw.recipe["raw-minerals-processing"].group = "deadlock-processing"
data.raw.recipe["raw-ores-processing"].group = "deadlock-processing"
data.raw.recipe["raw-menarite-processing-1"].group = "deadlock-processing"
data.raw.recipe["raw-menarite-processing-2"].group = "deadlock-processing"
data.raw.recipe["raw-imersite-processing-1"].group = "deadlock-processing"
data.raw.recipe["raw-imersite-processing-2"].group = "deadlock-processing"
--]] 

data.raw.item["steel-gear-wheel"].subgroup = "gear-wheel"
data.raw.item["steel-gear-wheel"].order = "aardvark-k-g-g[steel-gear-wheel]"
data.raw.recipe["steel-gear-wheel"].subgroup = "gear-wheel"
data.raw.recipe["steel-gear-wheel"].order = "aardvark-k-g-g[steel-gear-wheel]"

-- ores
data.raw.recipe["imersite"].subgroup = "non-handcrafting"
data.raw.recipe["menarite"].subgroup = "non-handcrafting"

-- intermediate

-- ammo
data.raw.ammo["imersite-rounds-magazine"].order = "aardvark-a-o-h2"
data.raw.recipe["imersite-rounds-magazine"].order = "aardvark-a-o-h2"

-- pcb circuit board
data.raw.item["k-circuit-board"].subgroup = "deadlock-electronics"
data.raw.item["k-circuit-board"].order = "h1[k-circuit-board]"
data.raw.recipe["k-circuit-board"].subgroup = "deadlock-electronics"
data.raw.recipe["k-circuit-board"].order = "h1[k-circuit-board]"

-- integrated circuit
data.raw.item["integrated-circuit"].subgroup = "deadlock-electronics"
data.raw.item["integrated-circuit"].order = "h1[integrated-circuit]"
data.raw.recipe["integrated-circuit"].subgroup = "deadlock-electronics"
data.raw.recipe["integrated-circuit"].order = "h1[integrated-circuit]"

-- ram
data.raw.item["k-ram"].subgroup = "deadlock-electronics"
data.raw.item["k-ram"].order = "h2[k-ram]"
data.raw.recipe["k-ram"].subgroup = "deadlock-electronics"
data.raw.recipe["k-ram"].order = "h2[k-ram]"

-- krastorio processor
data.raw.item["k-processor"].subgroup = "deadlock-electronics"
data.raw.item["k-processor"].order = "i[k-processor]"
data.raw.recipe["k-processor"].subgroup = "deadlock-electronics"
data.raw.recipe["k-processor"].order = "i[k-processor]"

-- krastorio menarite processor
data.raw.item["menarite-processor"].subgroup = "deadlock-electronics"
data.raw.item["menarite-processor"].order = "k[menarite-processor]"
data.raw.recipe["menarite-processor"].subgroup = "deadlock-electronics"
data.raw.recipe["menarite-processor"].order = "k[menarite-processor]"

-- imersite battery
data.raw.item["imersite-battery"].subgroup = "intermediate-product"
