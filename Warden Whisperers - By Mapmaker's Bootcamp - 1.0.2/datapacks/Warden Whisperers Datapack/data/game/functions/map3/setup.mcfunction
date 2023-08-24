# Teleporting and spawnpoint setting
spawnpoint @a 100 69 -80
spreadplayers 100 -80 10 25 under 70 false @a

# Setup map markers
summon minecraft:marker 100 69 -80 {Tags:["map_marker"]}

# Worldborder setup
worldborder center 100 -80
worldborder set 60
summon marker 100 69 -80 {Tags:["worldborder_centre","has_generated"]}
summon marker 103 69 -80 {Tags:["worldborder_marker"]}

# Setup End Crystals
function game:map3/end_crystals