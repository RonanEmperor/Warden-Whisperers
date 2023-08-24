# Cycle through setting
scoreboard players add .challenge settings 1
execute if score .challenge settings matches 3.. run scoreboard players set .challenge settings 0

# Display text based on adjustment
execute if score .challenge settings matches 2 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold": false},{"text":"Challenge","color":"gray","underlined": true},{"text":" has been set to: ","underlined": false},{"text":"Only Sprinting","color":"green","bold": true},{"text":". (?)","color":"gray","bold": false,"hoverEvent": {"action": "show_text","value":[{"text":"There will be a penalty for not sprinting in game.","color":"gray","bold": false,"italic": true}]}}]
execute if score .challenge settings matches 1 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold": false},{"text":"Challenge","color":"gray","underlined": true},{"text":" has been set to: ","underlined": false},{"text":"No Sneaking","color":"green","bold": true},{"text":". (?)","color":"gray","bold": false,"hoverEvent": {"action": "show_text","value":[{"text":"There will be a penalty for sneaking in game.","color":"gray","bold": false,"italic": true}]}}]
execute if score .challenge settings matches 0 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold": false},{"text":"Challenges","color":"gray","underlined": true},{"text":" have been ","underlined": false},{"text":"disabled","color":"red","bold": true},{"text":". (?)","color":"gray","bold": false,"hoverEvent": {"action": "show_text","value":[{"text":"No challenges will be active in game.","color":"gray","bold": false,"italic": true}]}}]

# Update sign
function settings:update/challenge

# Sound feedback
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1