# Cycle through setting
scoreboard players add .regen settings 1
execute if score .regen settings matches 2 run scoreboard players set .regen settings 0

# Display text based on adjustment
execute if score .regen settings matches 0 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Natural Regeneration","color":"gray","underlined":true},{"text":" has been ","underlined":false},{"text":"disabled","color":"red","bold":true},{"text":". (?)","color":"gray","bold":false,"hoverEvent": {"action": "show_text","value":[{"text":"If disabled, players will not have the ability to regenerate health.","color":"gray","bold":false,"italic":true}]}}]
execute if score .regen settings matches 1 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Natural Regeneration","color":"gray","underlined":true},{"text":" has been ","underlined":false},{"text":"enabled","color":"green","bold":true},{"text":". (?)","color":"gray","bold":false,"hoverEvent": {"action": "show_text","value":[{"text":"If disabled, players will not have the ability to regenerate health.","color":"gray","bold":false,"italic":true}]}}]

# Update sign
function settings:update/regen

# Sound feedback
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1