setblock ~ ~ ~ minecraft:cauldron
execute rotated as @p run summon minecraft:armor_stand ~ ~ ~ {Pose:{Head:[0f, 90f, 0f]}, NoAI:1b,  NoGravity:1b, Invisible:1b, Marker:1b, Tags:["better_cauldron"], ArmorItems:[{},{},{},{id:"diamond_hoe", Count:1b, tag:{CustomModelData:11001, Ingredients:[], IngredientsCount:0b}}]}
data modify entity @e[limit=1, tag=better_cauldron, sort=nearest] Rotation[0] set from entity @s Rotation[0]
data modify storage wdp Rotation set from entity @e[limit=1, tag=better_cauldron, sort=nearest] Rotation[0]

execute if data storage wdp {Rotation:-45.0f} run data modify storage wdp Rotation set value 0.0f
execute if data storage wdp {Rotation:45.0f} run data modify storage wdp Rotation set value 90.0f
execute if data storage wdp {Rotation:135.0f} run data modify storage wdp Rotation set value 180.0f
execute if data storage wdp {Rotation:-135.0f} run data modify storage wdp Rotation set value 360.0f

data modify entity @e[limit=1, tag=better_cauldron, sort=nearest] Pose.Head[1] set from storage wdp Rotation
scoreboard players set @e[limit=1, tag=better_cauldron, sort=nearest] boiling 0

kill