execute if block ~ ~ ~ powder_snow_cauldron run particle dust_color_transition 1 1 1 1 0 0.4 0.8 ~ ~0.8 ~ 0.2 0.2 0.2 0 6
execute if block ~ ~ ~ powder_snow_cauldron run team modify cauldron color white

execute if block ~ ~ ~ lava_cauldron run particle dust_color_transition 1 0.25 0 1 0 0 0 ~ ~0.8 ~ 0.2 0.2 0.2 0 6
execute if block ~ ~ ~ lava_cauldron run team modify cauldron color gold

execute if block ~ ~ ~ water_cauldron run particle dust_color_transition 0 0.4 0.8 1 1 1 1 ~ ~0.8 ~ 0.2 0.2 0.2 0 6
execute if block ~ ~ ~ water_cauldron run team modify cauldron color blue

execute if block ~ ~ ~ cauldron run team modify cauldron color gray

execute unless entity @e[type=falling_block, distance=..0.1] run summon falling_block ~ ~-0.01 ~ {Time:580, Glowing:1b, NoGravity:1b, DropItem:0b, BlockState:{Name:"minecraft:cauldron"}}
team join cauldron @e[type=falling_block, limit=1, sort=nearest]