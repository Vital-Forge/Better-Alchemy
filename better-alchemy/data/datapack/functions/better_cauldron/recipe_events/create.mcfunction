execute if block ~ ~ ~ water_cauldron run function datapack:better_cauldron/recipe_events/water_cauldron
execute if block ~ ~ ~ lava_cauldron run function datapack:better_cauldron/recipe_events/lava_cauldron
execute if block ~ ~ ~ powder_snow_cauldron run function datapack:better_cauldron/recipe_events/powder_snow_cauldron

function datapack:better_cauldron/recipe_events/remove_item

# particles
function datapack:particles/cauldron/recipe_created
execute unless data entity @s ArmorItems[3].tag.Potions[0] if data entity @s ArmorItems[3].tag.Items[0] run function datapack:particles/better_cauldron/fail_recipe

execute if data entity @s ArmorItems[3].tag.Items[0] run function datapack:better_cauldron/recipe_events/create
