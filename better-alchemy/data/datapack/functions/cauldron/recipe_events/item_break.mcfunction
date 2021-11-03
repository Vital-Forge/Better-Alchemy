execute store result score *A V1 run data get entity @s ArmorItems[3].tag.Items[0].tag.BreakAtTime

execute if score *A V1 > @s BoilingTime run data modify entity @s ArmorItems[3].tag.Items append from entity @s ArmorItems[3].tag.Items[0]
data remove entity @s ArmorItems[3].tag.Items[0]

scoreboard players remove *I Cycle 1
execute if score *I Cycle matches 1.. run function datapack:cauldron/recipe_events/item_break