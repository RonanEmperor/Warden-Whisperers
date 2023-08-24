tag @a[scores={ingame=1..}] add init 
scoreboard players set .global_count ingame_id 0
scoreboard players set @a[tag=init] ingame_id 0
execute as @a[tag=init] run scoreboard players add .global_count ingame_id 1
scoreboard players set .global ingame_id 0
kill @e[type=minecraft:block_display,tag=bell]
execute as @a[tag=init] at @s run summon block_display ~ ~ ~ {Tags: ["bell", "init"], block_state: {Name: "minecraft:flower_pot"}, view_range: 0, Glowing: 0, Team: "bell"}
team join bell @e[type=minecraft:block_display,tag=bell]
execute as @e[type=minecraft:block_display,tag=bell] run scoreboard players set @s ingame_id 0
function game:challenge/bell/setup_loop