tag @e[type=minecraft:shulker,tag=loot_shulker] add removed
execute if score .map settings matches 1 run function game:map1/clear_loot
execute if score .map settings matches 2 run function game:map2/clear_loot
execute if score .map settings matches 3 run function game:map3/clear_loot
execute as @e[type=minecraft:shulker,tag=loot_shulker] run function game:loot/remove_shulker

tp @e[type=minecraft:shulker,tag=loot_shulker] 0 -128 0
kill @e[type=minecraft:marker,tag=loot]
kill @e[type=minecraft:item]