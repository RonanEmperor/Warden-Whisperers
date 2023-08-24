execute at @e[type=minecraft:marker,tag=worldborder_centre] at @p[scores={ingame=1}] run summon minecraft:marker ~ ~ ~ {Tags:["warden_respawner"]}
execute as @e[type=minecraft:marker,tag=warden_respawner] at @s run spreadplayers ~ ~ 2 3 under 70 false @s
execute at @e[type=minecraft:marker,tag=warden_respawner] run function game:warden/summon
kill @e[type=minecraft:marker,tag=warden_respawner]