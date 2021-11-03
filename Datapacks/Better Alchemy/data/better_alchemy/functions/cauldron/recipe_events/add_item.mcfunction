# particles
execute at @e[type=item, limit=1, sort=nearest] align y run function better_alchemy:particles/cauldron/add_ingredient

data modify entity @s ArmorItems[3].tag.Items prepend from entity @e[type=item, limit=1, sort=nearest] Item

scoreboard players operation *A V1 = @s BoilingTime
scoreboard players add *A V1 1200

data modify entity @s ArmorItems[3].tag.Items[0].tag.charges set value 3b

execute store result entity @s ArmorItems[3].tag.Items[0].tag.BreakAtTime int 1 run scoreboard players get *A V1

kill @e[type=item, limit=1, sort=nearest]