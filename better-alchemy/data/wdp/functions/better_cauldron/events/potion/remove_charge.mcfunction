execute unless data storage wdp:cycle Ingredients[0] run data modify storage wdp:cycle Ingredients set from entity @s ArmorItems[3].tag.Ingredients
data modify storage wdp:cycle Ingredient set from storage wdp:cycle Ingredients[0]

execute store result score @s VAR1 run data get storage wdp:cycle Ingredient.Charges
scoreboard players remove @s VAR1 1
execute store result storage wdp:cycle Ingredient.Charges byte 1 run scoreboard players get @s VAR1

execute if score @s VAR1 matches 0.. run data modify storage wdp Result append from storage wdp:cycle Ingredient
data remove storage wdp Result[{Charges:0b}]

data remove storage wdp:cycle Ingredients[0]
execute if data storage wdp:cycle Ingredients[0] run function wdp:better_cauldron/events/potion/remove_charge 