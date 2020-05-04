-- -- -- Vanilla entity next upgrade to Krastorio superior entity

-- Inserters
data.raw.inserter["stack-inserter"].next_upgrade = "superior-inserter"
data.raw.inserter["long-handed-inserter"].next_upgrade = "superior-long-inserter"
data.raw.inserter["long-handed-inserter"].fast_replaceable_group = "inserter"
data.raw.inserter["stack-filter-inserter"].next_upgrade = "superior-filter-inserter"

-- Solar panles
data.raw["solar-panel"]["solar-panel"].next_upgrade = "imersite-solar-panel"

-- Accumulators
data.raw["accumulator"]["accumulator"].next_upgrade = "imersite-accumulator"

-- Belts
data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "k-transport-belt"
data.raw["splitter"]["express-splitter"].next_upgrade = "k-splitter"
data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "k-underground-belt"

-- Walls
data.raw.wall["stone-wall"].next_upgrade = "k-wall"

--Mining drills
data.raw["mining-drill"]["electric-mining-drill"].next_upgrade = "electric-mining-drill-mk2"

--Pump
data.raw.pump["pump"].fast_replaceable_group = "pump"
data.raw.pump["pump"].next_upgrade = "steel-pump"

--Pipes
data.raw.pipe["pipe"].fast_replaceable_group = "pipe"
data.raw.pipe["pipe"].next_upgrade = "steel-pipe"

--Underground pipes
data.raw["pipe-to-ground"]["pipe-to-ground"].fast_replaceable_group = "pipe-to-ground"
data.raw["pipe-to-ground"]["pipe-to-ground"].next_upgrade = "steel-pipe-to-ground"