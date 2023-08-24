# Cycle through setting
scoreboard players add .number_of_wardens settings 1
execute if score .number_of_wardens settings matches 3 run scoreboard players set .number_of_wardens settings 0

# Display text based on adjustment
execute if score .number_of_wardens settings matches 0 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Number of Wardens","color":"gray","underlined":true},{"text":" has been set to: ","underlined":false},{"text":"1","color":"green","bold":true},{"text":". (?)","color":"gray","bold":false,"hoverEvent": {"action": "show_text","value":[{"text":"Changes how many Wardens spawn at the beginning of the game.","color":"gray","bold":false,"italic":true}]}}]
execute if score .number_of_wardens settings matches 1 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Number of Wardens","color":"gray","underlined":true},{"text":" has been set to: ","underlined":false},{"text":"2","color":"green","bold":true},{"text":". (?)","color":"gray","bold":false,"hoverEvent": {"action": "show_text","value":[{"text":"Changes how many Wardens spawn at the beginning of the game.","color":"gray","bold":false,"italic":true}]}}]
execute if score .number_of_wardens settings matches 2 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Number of Wardens","color":"gray","underlined":true},{"text":" has been set to: ","underlined":false},{"text":"3","color":"green","bold":true},{"text":". (?)","color":"gray","bold":false,"hoverEvent": {"action": "show_text","value":[{"text":"Changes how many Wardens spawn at the beginning of the game.","color":"gray","bold":false,"italic":true}]}}]

# Update sign
function settings:update/number_of_wardens

# Sound feedback
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1