execute if block ~ ~ ~ minecraft:cauldron[level=1] run particle minecraft:dust 0.8 0.4 0.1 0.6 ~ ~0.55 ~ 0.08 0 0.08 0 20
execute if block ~ ~ ~ minecraft:cauldron[level=2] run particle minecraft:dust 0.8 0.4 0.1 0.6 ~ ~0.75 ~ 0.08 0 0.08 0 20
execute if block ~ ~ ~ minecraft:cauldron[level=3] run particle minecraft:dust 0.8 0.4 0.1 0.6 ~ ~0.95 ~ 0.08 0 0.08 0 20

data modify storage wdp Ingredient.Effect set value {Id:5, Duration:3600}

execute as @e[limit=1, distance=..0.5, tag=better_cauldron] run function wdp:better_cauldron/events/ingredients/add