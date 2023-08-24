tellraw @a [{"text":"["},{"text":"!","color":"red","bold":true},{"text":"] ","color":"white","bold":false},{"text":"Game startup has been stopped!","color":"red","bold":false}]
scoreboard players set .state state 0
setblock 0 64 19 minecraft:sculk_catalyst
execute if block 0 65 19 minecraft:warped_button[powered=true] run advancement revoke @a only lobby:start_button_pressed
execute if block 0 65 19 minecraft:warped_button[powered=true] run setblock 0 65 19 warped_button[powered=false,facing=south,face=floor]
execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.5
title @a subtitle {"text":"Game stopped!","color":"red"}
title @a title {"text":""}