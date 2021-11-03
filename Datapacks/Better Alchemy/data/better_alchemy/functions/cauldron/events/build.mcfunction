execute as @e[type=armor_stand, tag=vfba_CauldronBuilder] at @s if block ~ ~ ~ air run function better_alchemy:cauldron/events/create_building
execute as @e[type=armor_stand, tag=vfba_CauldronBuilder] at @s unless block ~ ~ ~ air run function better_alchemy:cauldron/events/cant_build

advancement revoke @s only better_alchemy:build_created/cauldron