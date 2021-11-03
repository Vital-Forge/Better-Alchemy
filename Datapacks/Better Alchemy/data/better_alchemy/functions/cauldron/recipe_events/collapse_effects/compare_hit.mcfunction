execute store result score *B V1 run data get storage vf:ba CycleItem.Duration
execute store result score *C V1 run data get storage vf:ba CycleItem2.Duration

scoreboard players operation *B V1 += *C V1

execute store result storage vf:ba CycleItem.Duration int 1 run scoreboard players get *B V1