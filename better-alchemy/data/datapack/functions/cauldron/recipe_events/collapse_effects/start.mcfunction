execute store result score *I Cycle run data get entity @s ArmorItems[3].tag.Potions
function datapack:cauldron/recipe_events/collapse_effects/compress_effects
execute store result score *I Cycle run data get entity @s ArmorItems[3].tag.Potions
execute if score *I Cycle matches 2.. run function datapack:cauldron/recipe_events/collapse_effects/prepare
tellraw @a {"nbt":"ArmorItems[3].tag.Potions", "entity" :"@s"}  