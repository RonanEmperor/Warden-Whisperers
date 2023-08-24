# Teleporting and spawnpoint setting
spawnpoint @a 100 69 80
spreadplayers 100 80 10 25 under 65 false @a

# Setup map markers
summon minecraft:marker 100 69 80 {Tags:["map_marker"]}

# Fix brewing stands
data modify block 75 70 109 Items set value [{Slot: 0b, id: "minecraft:glass_bottle", Count: 1b}, {Slot:1b, id: "minecraft:glass_bottle", Count: 1b}, {Slot: 2b, id: "minecraft:glass_bottle", Count: 1b}]
data modify block 74 71 109 Items set value [{Slot: 0b, id: "minecraft:glass_bottle", Count: 1b}, {Slot:1b, id: "minecraft:glass_bottle", Count: 1b}, {Slot: 2b, id: "minecraft:glass_bottle", Count: 1b}]


# Worldborder setup
worldborder center 100 80
worldborder set 64
summon marker 100 69 80 {Tags:["worldborder_centre","has_generated"]}
summon marker 103 69 80 {Tags:["worldborder_marker"]}

# Setup End Crystals
function game:map2/end_crystals