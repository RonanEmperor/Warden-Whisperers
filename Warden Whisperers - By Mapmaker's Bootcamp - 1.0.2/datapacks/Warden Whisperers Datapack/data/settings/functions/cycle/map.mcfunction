# Cycle through setting
scoreboard players add .map settings 1
execute if score .map settings matches 4 run scoreboard players set .map settings 1

# Display text based on adjustment
execute if score .map settings matches 1 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Selected Map","color":"gray","underlined":true},{"text":" has been set to: ","underlined":false},{"text":"Ancient City Ruins","color":"green","bold":true}]
execute if score .map settings matches 3 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Selected Map","color":"gray","underlined":true},{"text":" has been set to: ","underlined":false},{"text":"Mushroom Valley","color":"green","bold":true}]
execute if score .map settings matches 2 run tellraw @s [{"text":"["},{"text":"⛏","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Selected Map","color":"gray","underlined":true},{"text":" has been set to: ","underlined":false},{"text":"Nether Quarry","color":"green","bold":true}]


# Update sign
function settings:update/map

# Sound feedback
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1