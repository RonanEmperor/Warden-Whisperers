## Function that tries to start a game if there is enough players
# Counts players set to play the game
scoreboard players set .count players 0
execute as @a[team=player] run scoreboard players add .count players 1

# Begin game if there are more than 1 players
execute unless score .count players < .threshold players run function lobby:start_countdown

# Game start failed - send feedback message and play sound
execute if score .count players < .threshold players run tellraw @s [{"text":"["},{"text":"!","color":"red","bold":true},{"text":"]","color":"white","bold":false},{"text":" 2 or more ","color":"gray"},{"text":"players","color":"green","underlined": true},{"text":" are required to start the game!","color":"gray","underlined": false}]
execute if score .count players < .threshold players run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.5
execute if block 0 65 19 minecraft:warped_button[powered=true] run advancement revoke @a only lobby:start_button_pressed
execute if block 0 65 19 minecraft:warped_button[powered=true] run setblock 0 65 19 warped_button[powered=false,facing=south,face=floor]