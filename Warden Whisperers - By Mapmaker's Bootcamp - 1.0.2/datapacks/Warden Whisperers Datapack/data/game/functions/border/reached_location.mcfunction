# Move the worldborder marker to a new location
execute at @e[type=minecraft:warden,limit=1,sort=random] run spreadplayers ~ ~ 2 3 under 69 false @e[type=minecraft:marker,tag=worldborder_marker]

# Check to see if an ancient crossbow should be summoned
scoreboard players remove .loot_count loot_count 1
execute if entity @e[type=minecraft:warden,tag=warden] if score .ancient_crossbow_ability settings matches 1 as @e[type=minecraft:marker,tag=worldborder_marker] at @s run function game:loot/ancient_crossbow/check