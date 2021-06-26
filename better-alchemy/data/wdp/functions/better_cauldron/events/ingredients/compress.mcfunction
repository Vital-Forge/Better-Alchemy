execute store result score @s VAR2 run data get storage wdp Ingredient.Effect.Duration

scoreboard players operation @s VAR2 *= @s VAR1

execute store result storage wdp Ingredient.Effect.Duration int 1 run scoreboard players get @s VAR2

scoreboard players reset @s VAR1
scoreboard players reset @s VAR2