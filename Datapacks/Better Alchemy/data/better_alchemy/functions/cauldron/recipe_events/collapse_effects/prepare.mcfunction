data modify storage vf:ba CycleItem set from entity @s ArmorItems[3].tag.Potions[0]
data remove entity @s ArmorItems[3].tag.Potions[0]

execute store result score *J Cycle run data get entity @s ArmorItems[3].tag.Potions
function better_alchemy:cauldron/recipe_events/collapse_effects/compare

data modify entity @s ArmorItems[3].tag.Potions append from storage vf:ba CycleItem

scoreboard players remove *I Cycle 1
execute if score *I Cycle matches 1.. run function better_alchemy:cauldron/recipe_events/collapse_effects/prepare