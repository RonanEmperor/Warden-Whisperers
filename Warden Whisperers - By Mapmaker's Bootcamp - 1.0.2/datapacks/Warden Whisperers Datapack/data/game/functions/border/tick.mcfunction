# Store worldborder size to scoreboard
execute store result score .worldborder_size constants run worldborder get

# Ticking for the center of the worldborder
execute as @e[type=minecraft:marker,tag=worldborder_centre] at @s run function game:border/tick_centre






