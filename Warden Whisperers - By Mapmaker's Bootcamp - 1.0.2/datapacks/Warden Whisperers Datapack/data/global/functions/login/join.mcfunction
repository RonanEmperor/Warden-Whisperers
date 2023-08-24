effect clear @s

# Test if player is the only player online
scoreboard players set .count players 0
execute as @a run scoreboard players add .count players 1
execute if score .count players matches 1 run function global:reset

# If game is running, become a spectator to the current game.
execute if score .state state matches 2 run function global:login/spectate
execute if score .state state matches 0 run function lobby:setup_player

# Tellraw text and sound welcome
tellraw @s [{"text":"Welcome to ","color":"gray"},{"text":"Warden Whisperers","color":"light_purple","bold":true,"italic":false},{"text":"!","color":"gray","bold":false}]
tellraw @s [{"text":"Created by: ","color":"gray"},{"text":"RonanEmperor","color":"light_purple","italic":false},{"text":", ","color":"gray"},{"text":"Lazoh","color":"light_purple","italic":false},{"text":" and ","color":"gray"},{"text":"thayus","color":"light_purple","italic":false},{"text":".","color":"gray"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~