execute if entity @e[type=item, distance=..0.5, nbt=!{Item:{id:"minecraft:glass_bottle"}}] unless data entity @s ArmorItems[3].tag.Items[99] run function datapack:cauldron/recipe_events/add_item
execute if entity @e[type=item, distance=..0.5, nbt={Item:{id:"minecraft:glass_bottle"}}] if data entity @s ArmorItems[3].tag.Items[0] run function datapack:cauldron/recipe_events/fill_bottle