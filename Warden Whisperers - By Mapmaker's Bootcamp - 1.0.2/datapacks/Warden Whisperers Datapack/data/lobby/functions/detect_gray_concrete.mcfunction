tellraw @s[tag=!spec] [{"text":"["},{"text":"!","color":"red","bold":true},{"text":"] ","color":"white","bold":false},{"text":"You will now be spectating.","color":"gray","bold":false}]
playsound minecraft:block.note_block.pling master @s[tag=!spec] ~ ~ ~ 1 0.5
tag @s add spec
team join spec @s