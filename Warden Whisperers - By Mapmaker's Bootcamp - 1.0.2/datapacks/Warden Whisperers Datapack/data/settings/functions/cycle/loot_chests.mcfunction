# Cycle through setting
scoreboard players add .loot_chests settings 1
execute if score .loot_chests settings matches 2 run scoreboard players set .loot_chests settings 0

# Display text based on adjustment
execute if score .loot_chests settings matches 0 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Loot Chests","color":"gray","underlined":true},{"text":" have been ","underlined":false},{"text":"disabled","color":"red","bold":true},{"text":". (?)","color":"gray","bold":false,"hoverEvent": {"action": "show_text","value":[{"text":"Loot Chests spawn throughout a game providing additional items.","color":"gray","bold":false,"italic":true}]}}]
execute if score .loot_chests settings matches 1 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Loot Chests","color":"gray","underlined":true},{"text":" have been ","underlined":false},{"text":"enabled","color":"green","bold":true},{"text":". (?)","color":"gray","bold":false,"hoverEvent": {"action": "show_text","value":[{"text":"Loot Chests spawn throughout a game providing additional items.","color":"gray","bold":false,"italic":true}]}}]

# Update sign
function settings:update/loot_chests

# Sound feedback
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1