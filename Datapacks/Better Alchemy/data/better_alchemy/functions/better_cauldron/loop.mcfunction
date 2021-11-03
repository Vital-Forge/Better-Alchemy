# particles
function better_alchemy:particles/cauldron/flame


execute if entity @e[type=item, distance=..1.25, nbt={Item:{id:"minecraft:glass_bottle"}}] run function better_alchemy:better_cauldron

execute if entity @s[scores={Temperature=300..899}] run function better_alchemy:better_cauldron/events/boiling
execute if entity @s[scores={Temperature=900..1200}] run function better_alchemy:better_cauldron/events/blast
execute if entity @s[scores={Temperature=..-100}] run function better_alchemy:better_cauldron/events/frizing

execute if block ~ ~-1 ~ magma_block run scoreboard players add @s Temperature 1


execute if entity @p[scores={RightClick=1..}, distance=..1.25] run function better_alchemy:better_cauldron/recipe_events/create
execute if entity @e[type=item, nbt={Item:{id:"minecraft:glass_bottle"}}, limit=1, sort=nearest, distance=..0.5] if data entity @s ArmorItems[3].tag.Potions[0] align xyz positioned ~0.5 ~0.5 ~0.5 run function better_alchemy:better_cauldron/recipe_events/fill_bottle
execute if entity @e[type=item, limit=1, sort=nearest, distance=..0.5, nbt=!{Item:{id:"minecraft:glass_bottle"}}] unless data entity @s ArmorItems[3].tag.Items[2] run function better_alchemy:better_cauldron/recipe_events/add_item