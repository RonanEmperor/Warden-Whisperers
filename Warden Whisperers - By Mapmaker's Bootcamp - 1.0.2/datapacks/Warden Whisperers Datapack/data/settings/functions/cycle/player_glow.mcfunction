# Cycle through setting
scoreboard players add .player_glow settings 1
execute if score .player_glow settings matches 2 run scoreboard players set .player_glow settings 0

# Display text based on adjustment
execute if score .player_glow settings matches 1 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Highlighted Players","color":"gray","underlined":true},{"text":" has been ","underlined":false},{"text":"enabled","color":"green","bold":true},{"text":". (?)","color":"gray","bold":false,"hoverEvent": {"action": "show_text","value":[{"text":"Controls whether players will be affected by Glowing during the game.","color":"gray","bold":false,"italic":true}]}}]
execute if score .player_glow settings matches 0 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Highlighted Players","color":"gray","underlined":true},{"text":" has been ","underlined":false},{"text":"disabled","color":"red","bold":true},{"text":". (?)","color":"gray","bold":false,"hoverEvent": {"action": "show_text","value":[{"text":"Controls whether players will be affected by Glowing during the game.","color":"gray","bold":false,"italic":true}]}}]

# Update sign
function settings:update/player_glow

# Sound feedback
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1