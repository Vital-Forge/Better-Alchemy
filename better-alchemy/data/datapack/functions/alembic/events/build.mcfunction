# particles
execute at @e[type=armor_stand, limit=1, tag=vfba_AlembicBuilder, sort=nearest] unless block ~ ~ ~ air align y positioned ~ ~0.5 ~ run function datapack:particles/blocked_block
execute at @e[type=armor_stand, limit=1, tag=vfba_AlembicBuilder, sort=nearest] unless block ~ ~1 ~ air align y positioned ~ ~1.5 ~ run function datapack:particles/blocked_block

execute at @e[type=armor_stand, limit=1, tag=vfba_AlembicBuilder, sort=nearest] unless block ~ ~ ~ air run scoreboard players set *A V1 1
execute at @e[type=armor_stand, limit=1, tag=vfba_AlembicBuilder, sort=nearest] unless block ~ ~1 ~ air run scoreboard players set *A V1 1



execute if score *A V1 matches 1 as @e[type=armor_stand, limit=1, tag=vfba_AlembicBuilder, sort=nearest] at @s run function datapack:alembic/events/cant_build
execute unless score *A V1 matches 1 as @e[type=armor_stand, limit=1, tag=vfba_AlembicBuilder, sort=nearest] at @s run function datapack:alembic/events/building

scoreboard players reset *A V1

advancement revoke @s only datapack:build_created/alembic