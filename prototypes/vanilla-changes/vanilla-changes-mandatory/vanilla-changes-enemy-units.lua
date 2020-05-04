-- -- -- Vanilla enemy units

-- -- Spawners spawn results rate

-- From evolution_factor 0.3 the weight for medium-biter is linearly rising from 0 to 0.3,
-- this means for example that when the evolution_factor is 0.45 the probability of spawning,
-- a small biter is 66% while probability for medium biter is 33%.
-- For evolution factor of 1 the spawning probabilities are: small-biter 0%, medium-biter 1/8, big-biter 4/8, behemoth biter 3/8.
spawn_rates =
{
	["small-biter"]      = {{0.0, 0.5}, {1.0, 0.1}},
	["medium-biter"]     = {{0.2, 0.0}, {0.6, 0.3}, {1.0, 0.1}},
	["big-biter"]        = {{0.5, 0.0}, {1.0, 0.5}},
	["behemoth-biter"]   = {{0.9, 0.0}, {1.0, 0.2}},
	["small-spitter"]    = {{0.25, 0.0}, {0.5, 0.3}, {1.0, 0.1}},
	["medium-spitter"]   = {{0.4, 0.0}, {0.7, 0.3}, {1.0, 0.1}},
	["big-spitter"]      = {{0.5, 0.0}, {1.0, 0.5}},
	["behemoth-spitter"] = {{0.9, 0.0}, {1.0, 0.2}}
}

for _, spawner in pairs(data.raw["unit-spawner"]) do
	local result_units = spawner.result_units
	if result_units then
		for _, result_unit in pairs(result_units) do
			if spawn_rates[result_unit[1]] then
				result_unit[2] = spawn_rates[result_unit[1]]
			end
		end
	end
end

-- -- Spawner stats

data.raw["unit-spawner"]["biter-spawner"].max_health = 1500
data.raw["unit-spawner"]["spitter-spawner"].max_health = 1500

-- -- Biters stats

data.raw["unit"]["medium-biter"].max_health = 100
data.raw["unit"]["big-biter"].max_health = 500
data.raw["unit"]["behemoth-biter"].max_health = 4500

data.raw["unit"]["behemoth-biter"].pollution_to_join_attack = 500

-- -- Spitters stats

data.raw["unit"]["medium-spitter"].max_health = 75
data.raw["unit"]["big-spitter"].max_health = 375
data.raw["unit"]["behemoth-spitter"].max_health = 3000

data.raw["unit"]["behemoth-spitter"].pollution_to_join_attack = 500

-- -- Worms stats

data.raw["turret"]["medium-worm-turret"].max_health = 750
data.raw["turret"]["big-worm-turret"].max_health = 3000
data.raw["turret"]["behemoth-worm-turret"].max_health = 7500
