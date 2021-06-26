execute if block ~ ~-1 ~ #minecraft:campfires[lit=true] if score @s boiling matches ..1800 run scoreboard players add @s boiling 1
execute if block ~ ~-1 ~ #wdp:heat_blocks if score @s boiling matches ..1800 run scoreboard players add @s boiling 2

execute unless block ~ ~-1 ~ #wdp:heat_blocks unless block ~ ~-1 ~ #minecraft:campfires if score @s boiling matches 1.. run scoreboard players remove @s boiling 1
execute if block ~ ~-1 ~ #minecraft:ice if score @s boiling matches -70.. run scoreboard players remove @s boiling 2


execute if score @s boiling matches ..-20 run function wdp:better_cauldron/frize
execute if score @s boiling matches 800.. unless block ~ ~ ~ minecraft:cauldron[level=0] run function wdp:better_cauldron/boiling
execute if score @s boiling matches 1400.. unless block ~ ~ ~ minecraft:cauldron[level=0] run function wdp:better_cauldron/steaming

execute if data entity @s ArmorItems[3].tag.Ingredients[0] positioned ^0.425 ^1.1 ^-0.425 run function wdp:better_cauldron/particles/ingredients

execute if entity @e[distance=..0.5, nbt={Item:{id:"minecraft:glass_bottle"}}] if data entity @s ArmorItems[3].tag.Ingredients[0] run function wdp:better_cauldron/events/potion/summon