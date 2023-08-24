execute as @a[tag=parkour] run scoreboard players add @s parkour_time 1
execute as @a[tag=parkour] run scoreboard players add @s parkour_time_ticks 1

function lobby:parkour/display

execute as @a[scores={stored_y=..66},tag=parkour] run title @s actionbar [{"text":"Parkour failed!","color":"red","bold":true}]
execute as @a[scores={stored_y=..66},tag=parkour] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.5
execute as @a[scores={stored_y=..66}] run tag @s remove parkour

execute as @a[gamemode=!adventure,tag=parkour] run title @s actionbar [{"text":"Parkour failed!","color":"red","bold":true}]
execute as @a[gamemode=!adventure,tag=parkour] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.5
execute as @a[gamemode=!adventure] run tag @s remove parkour

scoreboard players add @s[scores={parkour_time=2..}] parkour_time_ms 1
scoreboard players remove @s[scores={parkour_time=2..}] parkour_time 2

scoreboard players add @s[scores={parkour_time_ms=10..}] parkour_time_secs 1
scoreboard players remove @s[scores={parkour_time_ms=10..}] parkour_time_ms 10

scoreboard players add @s[scores={parkour_time_secs=60..}] parkour_time_mins 1
scoreboard players remove @s[scores={parkour_time_secs=60..}] parkour_time_secs 60