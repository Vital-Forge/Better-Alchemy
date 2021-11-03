data modify storage vf:ba Item set from entity @e[type=item, limit=1, sort=nearest] Item

data modify storage vf:ba Item.portions set value 3b
# normal
execute if entity @s[scores={Temperature=-99..299}] run data modify storage vf:ba Item.cycle set value 0b
# boiling
execute if entity @s[scores={Temperature=300..899}] run data modify storage vf:ba Item.cycle set value 1b
# blast
execute if entity @s[scores={Temperature=900..1200}] run data modify storage vf:ba Item.cycle set value 2b
# frizing
execute if entity @s[scores={Temperature=..-100}] run data modify storage vf:ba Item.cycle set value 3b

execute unless data entity @s ArmorItems[3].tag.Items[0] run data modify storage vf:ba Item.num set value 0b
execute if data entity @s ArmorItems[3].tag.Items[0] run data modify storage vf:ba Item.num set value 1b
execute if data entity @s ArmorItems[3].tag.Items[1] run data modify storage vf:ba Item.num set value 2b


data modify entity @s ArmorItems[3].tag.Items append from storage vf:ba Item

# particles
execute at @e[type=item, limit=1, sort=nearest] align y run function better_alchemy:particles/cauldron/add_ingredient

kill @e[type=item, limit=1, sort=nearest]