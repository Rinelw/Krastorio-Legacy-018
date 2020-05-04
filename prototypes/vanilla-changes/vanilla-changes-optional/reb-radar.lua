-- Rebalancing of radar
if settings.startup["reb-radar"] and settings.startup["reb-radar"].value then

data.raw["radar"]["radar"].max_health = 350
data.raw["radar"]["radar"].max_distance_of_sector_revealed = 20
data.raw["radar"]["radar"].max_distance_of_nearby_sector_revealed = 8
data.raw["radar"]["radar"].energy_per_sector = "1.5MJ"
data.raw["radar"]["radar"].energy_per_nearby_scan = "250kJ"
data.raw["radar"]["radar"].energy_usage = "1.8MW"

end