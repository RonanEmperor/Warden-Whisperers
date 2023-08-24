worldborder set 10000
team leave @a
tellraw @a [{"text":"["},{"text":"!","color":"red","bold":true},{"text":"]","color":"white","bold":false},{"text":" Returning to lobby...","color":"gray"}]
execute as @a run function lobby:setup_player
scoreboard players set .state state 0
scoreboard players reset * lobby
scoreboard objectives setdisplay sidebar lobby
function game:loot/clear_loot