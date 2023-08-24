scoreboard players add .global ingame_id 1
execute as @r[tag=init,scores={ingame_id=0}] at @s run scoreboard players operation @s ingame_id = .global ingame_id
execute as @e[tag=bell,type=minecraft:block_display,limit=1,sort=random,scores={ingame_id=0}] run scoreboard players operation @s ingame_id = .global ingame_id
tag @e[scores={ingame_id=1..},tag=init] remove init
scoreboard players remove .global_count ingame_id 1
execute if score .global_count ingame_id matches 1.. run schedule function game:challenge/bell/setup_loop 1t