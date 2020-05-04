-- -- -- Sorting changes to vanilla items

-- Logistics
data.raw.item["logistic-chest-passive-provider"].subgroup = "k-logistics"
data.raw.item["logistic-chest-active-provider"].subgroup = "k-logistics"
data.raw.item["logistic-chest-storage"].subgroup = "k-logistics"
data.raw.item["logistic-chest-buffer"].subgroup = "k-logistics"
data.raw.item["logistic-chest-requester"].subgroup = "k-logistics"

-- Nuclear
data.raw.item["rocket-fuel"].order = "z01[rocket-fuel]"
data.raw.item["nuclear-fuel"].order = "z02[uranium-rocket-fuel]"

-- Barrels
data.raw.item["empty-barrel"].order = "07[empty-barrel]"

-- Beacon
data.raw.item["beacon"].subgroup = "k-machines"
data.raw.item["beacon"].order = "7[beacon]"

-- Mining drills
data.raw.item["electric-mining-drill"].order = "a[items]-b1[electric-mining-drill]"

-- Pipes
data.raw.item["pipe"].order = "a[pipes]-a1[pipe]"
data.raw.pipe["pipe"].next_upgrade = "steel-pipe"
data.raw.item["pipe-to-ground"].order = "a[pipes]-b1[pipe-to-ground]"
data.raw["pipe-to-ground"]["pipe-to-ground"].next_upgrade = "steel-pipe-to-ground"

-- Pump
data.raw.item["pump"].order = "a[pipes]-c1[pump]"
data.raw.pump["pump"].next_upgrade = "steel-pump"