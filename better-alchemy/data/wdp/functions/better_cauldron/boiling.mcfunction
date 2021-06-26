function wdp:better_cauldron/particles/boiling

execute unless data entity @s {ArmorItems:[{},{},{},{tag:{IngredientsCount:3b}}]} as @e[type=minecraft:item, distance=..0.5, nbt={Item:{Count:1b}}] run function wdp:better_cauldron/events/ingredients/search