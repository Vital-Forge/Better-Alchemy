data modify storage wdp:cycle Ingredient set from storage wdp Ingredients[0]

data modify storage wdp:cycle Buffer set from storage wdp:cycle Ingredient.Id
execute store result storage wdp:cycle Loop byte 1 run data modify storage wdp:cycle Buffer set from storage wdp Ingredient.Id

execute if data storage wdp:cycle {Loop:0b} store result score @s VAR1 run data get storage wdp:cycle Ingredient.Count
execute if data storage wdp:cycle {Loop:0b} run scoreboard players add @s VAR1 1
execute if data storage wdp:cycle {Loop:0b} store result storage wdp Ingredient.Count byte 1 run scoreboard players get @s VAR1
execute if data storage wdp:cycle {Loop:0b} run function wdp:better_cauldron/events/ingredients/compress

execute if data storage wdp:cycle {Loop:1b} run data modify storage wdp Result append from storage wdp:cycle Ingredient

data remove storage wdp Ingredients[0]
execute if data storage wdp Ingredients[0] run function wdp:better_cauldron/events/ingredients/multy