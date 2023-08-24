# Cycle through setting
scoreboard players add .darkness settings 1
execute if score .darkness settings matches 2 run scoreboard players set .darkness settings 0

# Display text based on adjustment
execute if score .darkness settings matches 1 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Darkness","color":"gray","underlined":true},{"text":" has been ","underlined":false},{"text":"enabled","color":"green","bold":true},{"text":". (?)","color":"gray","bold":false,"hoverEvent": {"action": "show_text","value":[{"text":"Controls whether the Warden can give the darkness effect to players.","color":"gray","bold":false,"italic":true}]}}]
execute if score .darkness settings matches 0 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Darkness","color":"gray","underlined":true},{"text":" has been ","underlined":false},{"text":"disabled","color":"red","bold":true},{"text":". (?)","color":"gray","bold":false,"hoverEvent": {"action": "show_text","value":[{"text":"Controls whether the Warden can give the darkness effect to players.","color":"gray","bold":false,"italic":true}]}}]

# Update sign
function settings:update/darkness

# Sound feedback
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1