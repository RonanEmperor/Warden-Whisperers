scoreboard players operation @s ability_cooldown_teleportation = .teleportation_cooldown_max settings
execute at @s run particle minecraft:witch ~ ~ ~ 1 1 1 0.1 50 normal @a

tellraw @s [{"text":"["},{"text":"▶","color":"light_purple"},{"text":"]","color":"white"},{"text":" You used your ","color":"gray"},{"text":"Random Teleportation","color":"light_purple","underlined":true},{"text":" ability!","color":"gray","underlined":false}]

execute at @s as @a run playsound minecraft:entity.zombie_villager.convert master @s ~ ~ ~ 1 2
effect give @s slowness 1 10 true

# Teleport to random player
tag @s add tp_used
tag @a remove tp_selected
execute at @s run tag @r[tag=!tp_used,scores={ingame=1},gamemode=!spectator] add tp_selected
summon marker 0 0 0 {Tags:["tp_marker"]}

# Save the players coordinates to the scoreboard
data modify entity @e[type=minecraft:marker,tag=tp_marker,limit=1] Pos[0] set from entity @p[tag=tp_selected] Pos[0]
data modify entity @e[type=minecraft:marker,tag=tp_marker,limit=1] Pos[1] set from entity @p[tag=tp_selected] Pos[1]
data modify entity @e[type=minecraft:marker,tag=tp_marker,limit=1] Pos[2] set from entity @p[tag=tp_selected] Pos[2]

# Tellraw feedback message for targetted player
tellraw @a[tag=tp_selected] [{"text":"["},{"text":"▶","color":"light_purple"},{"text":"] ","color":"white"},{"text":"You have swapped places with ","color":"gray"},{"selector":"@a[tag=tp_used,gamemode=adventure]","color":"yellow","underlined":true}]

# Tellraw feedback message for ability user
tellraw @a[tag=tp_used] [{"text":"["},{"text":"▶","color":"light_purple"},{"text":"] ","color":"white"},{"text":"You have swapped places with ","color":"gray"},{"selector":"@a[tag=tp_selected,gamemode=adventure]","color":"yellow","underlined":true}]

# Give slowness and temporary cooldown to targetted player
effect give @a[tag=tp_selected] slowness 1 10 true
scoreboard players add @a[tag=tp_selected,scores={ability_cooldown_teleportation=0..200}] ability_cooldown_teleportation 200

# Execute teleportation and cleanup
execute at @s run tp @p[tag=tp_selected] ~ ~ ~
execute at @a[tag=tp_selected] run particle minecraft:witch ~ ~ ~ 1 1 1 0.1 50 normal @a
execute at @e[type=minecraft:marker,tag=tp_marker] run tp @s ~ ~ ~

tag @a remove tp_used
kill @e[type=minecraft:marker,tag=tp_marker]
execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~