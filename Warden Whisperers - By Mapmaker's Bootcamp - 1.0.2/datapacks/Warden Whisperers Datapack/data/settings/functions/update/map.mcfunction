kill @e[type=armor_stand,tag=map_display]
execute if score .map settings matches 1 run clone -28 62 -4 -33 71 4 -26 62 -4
execute if score .map settings matches 1 run summon minecraft:armor_stand -19 63 0 {Invulnerable: 1b, Invisible: 1b, Tags: ["map","map_display"], CustomName: '{"bold":true,"color":"green","text":"Ancient City Ruins"}', CustomNameVisible: 1b, NoGravity:1b}

execute if score .map settings matches 2 run clone -28 62 6 -33 71 14 -26 62 -4
execute if score .map settings matches 2 run summon minecraft:armor_stand -19 63 0 {Invulnerable: 1b, Invisible: 1b, Tags: ["map","map_display"], CustomName: '{"bold":true,"color":"green","text":"Nether Quarry"}', CustomNameVisible: 1b, NoGravity:1b}

execute if score .map settings matches 3 run clone -28 62 -14 -33 71 -6 -26 62 -4
execute if score .map settings matches 3 run summon minecraft:armor_stand -19 63 0 {Invulnerable: 1b, Invisible: 1b, Tags: ["map","map_display"], CustomName: '{"bold":true,"color":"green","text":"Mushroom Valley"}', CustomNameVisible: 1b, NoGravity:1b}