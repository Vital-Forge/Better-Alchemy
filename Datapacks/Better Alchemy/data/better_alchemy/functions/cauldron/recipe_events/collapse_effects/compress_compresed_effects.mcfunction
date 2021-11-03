data modify entity @s ArmorItems[3].tag.Potions append from storage vf:ba CycleItem[0]
data remove storage vf:ba CycleItem[0]

execute if data storage vf:ba CycleItem[0] run function better_alchemy:cauldron/recipe_events/collapse_effects/compress_compresed_effects