execute if block ~ ~ ~ water_cauldron[level=3] run particle rain ~ ~1 ~ 0.05 0 0.05 0.01 6
execute if block ~ ~ ~ water_cauldron[level=2] run particle rain ~ ~0.85 ~ 0.05 0 0.05 0.01 6
execute if block ~ ~ ~ water_cauldron[level=1] run particle rain ~ ~0.65 ~ 0.05 0 0.05 0.01 6

execute if block ~ ~ ~ lava_cauldron run particle lava ~ ~0.75 ~ 0.1 0 0.1 0.001 3

execute if block ~ ~ ~ powder_snow_cauldron[level=3] run particle block snow_block ~ ~0.95 ~ 0.1 0 0.1 0.1 10
execute if block ~ ~ ~ powder_snow_cauldron[level=2] run particle block snow_block ~ ~0.75 ~ 0.1 0 0.1 0.1 10
execute if block ~ ~ ~ powder_snow_cauldron[level=1] run particle block snow_block ~ ~0.55 ~ 0.1 0 0.1 0.1 10