execute if score .shrink_time settings matches 1.. if score .loot_count loot_count matches ..0 if block ~ ~-1 ~ #game:loot_spawnable if block ~ ~ ~ air if entity @s[tag=has_generated] run function game:loot/ancient_crossbow/generate_loot

execute if score .shrink_time settings matches 1.. if score .loot_count loot_count matches ..0 if block ~ ~-1 ~ #game:loot_spawnable if block ~ ~ ~ air if entity @s[tag=!has_generated] if predicate game:33_percent run function game:loot/ancient_crossbow/generate_loot

execute if score .shrink_time settings matches 0 if block ~ ~-1 ~ #game:loot_spawnable if block ~ ~ ~ air run function game:loot/ancient_crossbow/generate_loot