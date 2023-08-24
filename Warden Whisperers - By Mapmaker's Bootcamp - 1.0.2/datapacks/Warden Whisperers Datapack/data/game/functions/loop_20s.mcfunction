# Try spawn ancient crossbow loot chests if worldborder is disabled
execute if score .shrink_time settings matches 0 run scoreboard players remove .loot_count loot_count 1
execute if score .shrink_time settings matches 0 if score .loot_count loot_count matches ..0 if predicate game:66_percent as @e[type=minecraft:marker,tag=worldborder_marker] at @e[type=warden,tag=warden,limit=1,sort=random] run function game:loot/ancient_crossbow/artificially_move_marker

# Recall function after 20 seconds
schedule function game:loop_20s 20s

# Check how many wardens there are
execute store result score .warden_count warden_count run execute if entity @e[type=minecraft:warden,tag=warden]
scoreboard players remove .warden_count warden_count 1
execute if score .warden_count warden_count < .number_of_wardens settings run function game:warden/respawn