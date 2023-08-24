# Cycle through setting
scoreboard players add .health_boost_ability settings 1
execute if score .health_boost_ability settings matches 2 run scoreboard players set .health_boost_ability settings 0

# Display text based on adjustment
execute if score .health_boost_ability settings matches 0 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Health Boost","color":"gray","underlined":true},{"text":" has been ","underlined":false},{"text":"disabled","color":"red","bold":true},{"text":". (?)","color":"gray","bold":false,"hoverEvent": {"action": "show_text","value":[{"text":"Controls whether the Health Boost ability is available in game.","color":"gray","bold":false,"italic":true}]}}]
execute if score .health_boost_ability settings matches 1 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Health Boost","color":"gray","underlined":true},{"text":" has been ","underlined":false},{"text":"enabled","color":"green","bold":true},{"text":". (?)","color":"gray","bold":false,"hoverEvent": {"action": "show_text","value":[{"text":"Controls whether the Health Boost ability is available in game.","color":"gray","bold":false,"italic":true}]}}]

# Update sign
function settings:update/health_boost_ability

# Sound feedback
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1