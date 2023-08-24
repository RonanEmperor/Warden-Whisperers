# Cycle through setting
scoreboard players add .pvp settings 1
execute if score .pvp settings matches 2 run scoreboard players set .pvp settings 0

# Display text based on adjustment
execute if score .pvp settings matches 0 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"PvP","color":"gray","underlined":true},{"text":" has been ","underlined":false},{"text":"disabled","color":"red","bold":true},{"text":". (?)","color":"gray","bold":false,"hoverEvent": {"action": "show_text","value":[{"text":"Allows players to punch eachother during the game.","color":"gray","bold":false,"italic":true}]}}]
execute if score .pvp settings matches 1 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"PvP","color":"gray","underlined":true},{"text":" has been ","underlined":false},{"text":"enabled","color":"green","bold":true},{"text":". (?)","color":"gray","bold":false,"hoverEvent": {"action": "show_text","value":[{"text":"Allows players to punch eachother during the game.","color":"gray","bold":false,"italic":true}]}}]

# Update sign
function settings:update/pvp

# Sound feedback
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1