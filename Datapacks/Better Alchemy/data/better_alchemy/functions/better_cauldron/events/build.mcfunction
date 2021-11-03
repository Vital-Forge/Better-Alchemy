execute as @e[type=armor_stand, limit=1, tag=vfba_BetterCauldronBuilder, sort=nearest] at @s unless block ~ ~ ~ air run function better_alchemy:better_cauldron/events/cant_build
execute as @e[type=armor_stand, limit=1, tag=vfba_BetterCauldronBuilder, sort=nearest] at @s if block ~ ~ ~ air run function better_alchemy:better_cauldron/events/create_building

advancement revoke @s only better_alchemy:build_created/better_cauldron