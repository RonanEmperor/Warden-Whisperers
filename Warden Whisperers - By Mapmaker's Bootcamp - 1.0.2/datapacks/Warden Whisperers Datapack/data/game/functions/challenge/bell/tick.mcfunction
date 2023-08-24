tp @s ~-0.5 ~2.5 ~-0.5
execute as @e[type=minecraft:block_display,tag=bell] at @s unless entity @p[distance=..8] run kill @s

execute if score .challenge settings matches 1 if score @p sneak_time matches 15.. run data merge entity @s {view_range: 1, Glowing: true}
execute if score .challenge settings matches 1 unless score @p sneak_time matches 15.. run data merge entity @s {view_range: 0, Glowing: false}

execute if score .challenge settings matches 2 if score @p sprint_time matches 30.. run data merge entity @s {view_range: 1, Glowing: true}
execute if score .challenge settings matches 2 unless score @p sprint_time matches 30.. run data merge entity @s {view_range: 0, Glowing: false}
