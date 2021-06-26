execute unless data storage wdp:cycle Ingredients[0] run data modify storage wdp:cycle Ingredients set from entity @s ArmorItems[3].tag.Ingredients
data modify storage wdp:cycle Ingredient set from storage wdp:cycle Ingredients[0]

data modify storage wdp Effects append from storage wdp:cycle Ingredient.Effect

data remove storage wdp:cycle Ingredients[0]
execute if data storage wdp:cycle Ingredients[0] run function wdp:better_cauldron/events/potion/get_effects 