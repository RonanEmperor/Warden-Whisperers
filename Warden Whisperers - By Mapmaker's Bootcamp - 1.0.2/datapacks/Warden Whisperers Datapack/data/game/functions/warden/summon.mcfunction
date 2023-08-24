# Summon the wardens at map centres.
summon minecraft:warden ~ ~ ~ {Brain: {memories: {"minecraft:is_emerging": {value:{}, ttl:120L}}, "minecraft:dig_cooldown": {value: {}, ttl:1000000L}},Tags:["warden", "init"]}
execute if score .ticks ticks matches ..450 if score .number_of_wardens settings matches 1.. run summon minecraft:warden ~1 ~ ~1 {Brain: {memories: {"minecraft:is_emerging": {value:{}, ttl:120L}}, "minecraft:dig_cooldown": {value: {}, ttl:1000000L}},Tags:["warden", "init"]}
execute if score .ticks ticks matches ..450 if score .number_of_wardens settings matches 2.. run summon minecraft:warden ~-1 ~ ~-1 {Brain: {memories: {"minecraft:is_emerging": {value:{}, ttl:120L}}, "minecraft:dig_cooldown": {value: {}, ttl:1000000L}},Tags:["warden", "init"]}

# Setup wardens
execute as @e[type=minecraft:warden,tag=warden,tag=init] run function game:warden/setup