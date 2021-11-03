execute unless data storage vf:ba CycleItems[0] run data modify storage vf:ba CycleItems set from entity @s ArmorItems[3].tag.Items

data modify storage vf:ba CycleItem set from storage vf:ba CycleItems[0]
data remove storage vf:ba CycleItems[0]


execute store result storage vf:ba CycleItem.portions byte 1.0001 run data get storage vf:ba CycleItem.portions 0.9999
execute unless data storage vf:ba CycleItem{portions:0b} run data modify storage vf:ba CycleResult append from storage vf:ba CycleItem
execute if data storage vf:ba CycleItem{portions:0b} run data modify storage vf:ba CycleResult set value []


execute unless data storage vf:ba CycleItems[0] run data modify entity @s ArmorItems[3].tag.Items set from storage vf:ba CycleResult
execute unless data storage vf:ba CycleItems[0] run data remove storage vf:ba CycleResult
execute if data storage vf:ba CycleItems[0] run function datapack:better_cauldron/recipe_events/remove_item
