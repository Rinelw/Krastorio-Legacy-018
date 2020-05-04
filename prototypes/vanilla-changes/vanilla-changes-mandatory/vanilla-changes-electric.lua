-- -- -- Accumulator and solar panel modification

data.raw["accumulator"]["accumulator"].fast_replaceable_group = "accumulator"

data.raw["accumulator"]["accumulator"].energy_source.buffer_capacity = "25MJ"
data.raw["accumulator"]["accumulator"].energy_source.input_flow_limit = "500kW"
data.raw["accumulator"]["accumulator"].energy_source.output_flow_limit = "1000kW"

data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel"

data.raw["solar-panel"]["solar-panel"].production = "60kW"

data.raw["lamp"]["small-lamp"].glow_size = 8