# Move centre of worldborder to the marker
worldborder center ~ ~

# Check if the worldborder has reached its destination
execute if entity @e[type=minecraft:marker,distance=..0.25,tag=worldborder_marker] run function game:border/reached_location

# Move worldborder centre in the direction of its destination
execute if score .worldborder_size constants matches ..25 facing entity @e[type=minecraft:marker,distance=0.01..,tag=worldborder_marker] feet run tp @s ^ ^ ^0.03 ~ 0