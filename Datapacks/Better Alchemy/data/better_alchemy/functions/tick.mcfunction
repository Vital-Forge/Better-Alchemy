execute as @e[type=armor_stand, tag=vfba_BetterCauldron] at @s run function better_alchemy:better_cauldron/loop
execute as @e[type=armor_stand, tag=vfba_Cauldron] at @s run function better_alchemy:cauldron/loop

execute as @e[type=player, scores={RightClick=1..}] run scoreboard players reset @s RightClick