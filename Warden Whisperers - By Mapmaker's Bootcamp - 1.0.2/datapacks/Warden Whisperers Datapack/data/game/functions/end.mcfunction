# Title, text and sound
title @a subtitle ""
team leave @a[gamemode=adventure]
execute if score .alive_count players matches 1 run title @a subtitle {"text":"won the game!","color":"gold"}
execute if score .alive_count players matches 1 run title @a title [{"selector":"@a[gamemode=adventure]","color":"gold"},{"text":""}]
execute if score .alive_count players matches 0 run title @a title {"text":"It's a Draw!","color":"gold"}
execute if score .alive_count players matches 1 run tellraw @a [{"text":""},{"text":"\n>> "},{"selector":"@a[gamemode=adventure]","color":"gold","bold":true},{"text":" has won the game!","bold":false,"color":"gold"},{"text":"\n"}]
execute if score .alive_count players matches 0 run tellraw @a [{"text":""},{"text":"\n>> "},{"text":" The game has ended in a draw!","bold":false,"color":"gold"},{"text":"\n"}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~
team join winner @a[gamemode=adventure]

# Kill warden and become spectator
gamemode spectator @a
tp @e[type=warden,tag=warden] 1000 -128 0
kill @e[type=warden,tag=warden]
kill @e[type=marker,tag=worldborder_centre]
kill @e[type=block_display,tag=bell]

# Clear the schedule and return to lobby
schedule clear game:loop_1s
schedule clear game:loop_10s
schedule clear game:loop_1t
schedule clear game:loop_20s
schedule clear game:border/setup
schedule clear game:begin
schedule clear game:loot/create_loot_markers
schedule clear game:loot/generate_loot
schedule function game:tp_to_lobby 7s