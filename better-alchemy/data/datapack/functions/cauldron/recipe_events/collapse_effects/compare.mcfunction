data modify storage vf:ba CycleItem2 set from entity @s ArmorItems[3].tag.Potions[0]
data remove entity @s ArmorItems[3].tag.Potions[0]

execute store result score *A V1 run data get storage vf:ba CycleItem.Id
execute store result score *B V1 run data get storage vf:ba CycleItem2.Id

execute unless score *A V1 = *B V1 run data modify entity @s ArmorItems[3].tag.Potions append from storage vf:ba CycleItem2
execute if score *A V1 = *B V1 run function datapack:cauldron/recipe_events/collapse_effects/compare_hit

scoreboard players remove *J Cycle 1
execute if score *J Cycle matches 1.. run function datapack:cauldron/recipe_events/collapse_effects/compare