tellraw @s[tag=spec] [{"text":"["},{"text":"!","color":"green","bold":true},{"text":"] ","color":"white","bold":false},{"text":"You are no be playing.","color":"gray","bold":false}]
playsound minecraft:block.note_block.pling master @s[tag=spec] ~ ~ ~ 
tag @s remove spec
team join player @s