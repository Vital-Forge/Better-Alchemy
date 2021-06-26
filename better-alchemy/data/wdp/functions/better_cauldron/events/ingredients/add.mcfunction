data modify storage wdp Item set from entity @e[limit=1, sort=nearest, type=item] Item
data modify storage wdp Ingredients set from entity @s ArmorItems[3].tag.Ingredients

data modify storage wdp Ingredient.Id set from storage wdp Item.id
data modify storage wdp Ingredient.Count set from storage wdp Item.Count
data modify storage wdp Ingredient.Charges set value 3b

execute if data storage wdp Ingredients[0] run function wdp:better_cauldron/events/ingredients/multy
execute unless data storage wdp Ingredients[0] run data modify storage wdp Result append from storage wdp Ingredient

data modify entity @s ArmorItems[3].tag.Ingredients set from storage wdp Result


kill @e[limit=1, sort=nearest, type=item]

execute store result score @s VAR1 run data get entity @s ArmorItems[3].tag.IngredientsCount
scoreboard players add @s VAR1 1
execute store result entity @s ArmorItems[3].tag.IngredientsCount byte 1 run scoreboard players get @s VAR1

data remove storage wdp Item
data remove storage wdp Ingredient
data remove storage wdp Ingredients
data remove storage wdp Result
data remove storage wdp:cycle Ingredients
data remove storage wdp:cycle Ingredient