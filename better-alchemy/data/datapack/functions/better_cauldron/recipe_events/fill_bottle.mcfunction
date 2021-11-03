summon item ~ ~0.5 ~ {PickupDelay:20, NoGravity:1b, Item:{id:"minecraft:potion", Count:1b, tag:{CustomPotionEffects:[{Id:-1b}]}}}

execute if entity @e[type=item, nbt={Item:{id:"minecraft:potion", tag:{CustomPotionEffects:[{Id:-1b}]}}}, limit=1, sort=nearest] run data modify entity @e[type=item, nbt={Item:{id:"minecraft:potion", tag:{CustomPotionEffects:[{Id:-1b}]}}}, limit=1, sort=nearest] Item set from entity @s ArmorItems[3].tag.Potions[0]

data remove entity @s ArmorItems[3].tag.Potions[0]
kill @e[type=item, nbt={Item:{id:"minecraft:glass_bottle"}}, limit=1, sort=nearest] 