data modify storage vf:ba CycleItem set from entity @s ArmorItems[3].tag.Potions[0].CustomPotionEffects
data remove entity @s ArmorItems[3].tag.Potions[0]

execute if data storage vf:ba CycleItem[1] run function better_alchemy:cauldron/recipe_events/collapse_effects/compress_compresed_effects
execute unless data storage vf:ba CycleItem[1] run data modify entity @s ArmorItems[3].tag.Potions append from storage vf:ba CycleItem[0]

scoreboard players remove *I Cycle 1
execute if score *I Cycle matches 1.. run function better_alchemy:cauldron/recipe_events/collapse_effects/compress_effects