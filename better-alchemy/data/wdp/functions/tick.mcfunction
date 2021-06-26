execute as @e[tag=better_cauldron_creator] at @s run function wdp:better_cauldron/events/create
execute as @e[tag=better_cauldron] at @s run function wdp:better_cauldron/main
execute as @e[tag=better_cauldron] at @s unless block ~ ~ ~ minecraft:cauldron run function wdp:better_cauldron/events/remove

execute as @e[tag=better_cauldron_creator] at @s run function wdp:better_cauldron/events/create