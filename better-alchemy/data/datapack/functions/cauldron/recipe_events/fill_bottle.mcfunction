execute store result score *I Cycle run data get entity @s ArmorItems[3].tag.Items
function datapack:cauldron/recipe_events/item_break

execute store result score *I Cycle run data get entity @s ArmorItems[3].tag.Items
function datapack:cauldron/recipe_events/create_potions

function datapack:cauldron/recipe_events/collapse_effects/start


summon item ~ ~1 ~ {Item:{id:"minecraft:potion", Count:1b}, PickupDelay:40, NoGravity:1b}
data modify entity @e[type=item, limit=1, sort=nearest, nbt={Item:{id:"minecraft:potion"}}, nbt=!{Item:{tag:{CustomPotionEffects:[]}}}] Item.tag.CustomPotionEffects set from entity @s ArmorItems[3].tag.Potions

data remove entity @s ArmorItems[3].tag.Potions

kill @e[type=item, limit=1, sort=nearest, nbt={Item:{id:"minecraft:glass_bottle"}}]