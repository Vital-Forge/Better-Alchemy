execute as @e[type=armor_stand, tag=vfba_CauldronBuilder] at @s if block ~ ~ ~ air run function datapack:cauldron/events/create_building
execute as @e[type=armor_stand, tag=vfba_CauldronBuilder] at @s unless block ~ ~ ~ air run function datapack:cauldron/events/cant_build

advancement revoke @s only datapack:build_created/cauldron