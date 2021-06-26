function wdp:better_cauldron/events/potion/get_effects

execute as @e[limit=1, type=item, nbt={Item:{id:"minecraft:glass_bottle"}}] at @s run function wdp:better_cauldron/events/potion/fill_bottle

function wdp:better_cauldron/events/potion/remove_charge
data modify entity @s ArmorItems[3].tag.Ingredients set from storage wdp Result

data merge entity @s {NoGravity:1b}
data merge entity @s {Motion:[0.0d, 1.0d, 0.0d]}

execute store result score @s VAR1 run data get entity @s ArmorItems[3].tag.IngredientsCount
scoreboard players remove @s VAR1 1
execute store result entity @s ArmorItems[3].tag.IngredientsCount byte 1 run scoreboard players get @s VAR1

data remove storage wdp Effects
data remove storage wdp:cycle Ingredients
data remove storage wdp Result