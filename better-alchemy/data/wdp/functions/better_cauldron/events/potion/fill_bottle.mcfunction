execute run data merge entity @s {Item:{id:"minecraft:potion", tag:{Potion:"minecraft:water"}}}
execute if entity @s[nbt={Item:{tag:{CustomModelData:11001}}}] run data merge entity @s {Item:{id:"minecraft:splash_potion", tag:{Potion:"minecraft:water"}}}
execute if entity @s[nbt={Item:{tag:{CustomModelData:11002}}}] run data merge entity @s {Item:{id:"minecraft:lingering_potion", tag:{Potion:"minecraft:water"}}}

data merge entity @s {Motion:[0.0d, 0.4d, 0.0d], tag:{Display:{Name:'Лучшее зелье'}}}

execute if data storage wdp Effects[{Id:3}] run summon item ~ ~ ~ {Item:{id:"minecraft:glass_bottle"}}

data modify entity @s Item.tag.CustomPotionEffects set from storage wdp Effects