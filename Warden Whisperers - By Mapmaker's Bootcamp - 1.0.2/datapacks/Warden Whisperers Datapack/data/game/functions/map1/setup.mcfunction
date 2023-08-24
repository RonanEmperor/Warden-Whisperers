# Teleporting and spawnpoint setting
spawnpoint @a 100 65 0
spreadplayers 100 0 10 25 under 65 false @a

# Setup map markers
summon minecraft:marker 100 65 0 {Tags:["map_marker"]}

# Worldborder setup
worldborder center 100 0
worldborder set 60
summon marker 100 65 0 {Tags:["worldborder_centre","has_generated"]}
summon marker 103 65 0 {Tags:["worldborder_marker"]}

# Setup End Crystals
function game:map1/end_crystals
execute as @e[type=minecraft:end_crystal] run data merge entity @s {BeamTarget:{X:100,Y:63,Z:0}}