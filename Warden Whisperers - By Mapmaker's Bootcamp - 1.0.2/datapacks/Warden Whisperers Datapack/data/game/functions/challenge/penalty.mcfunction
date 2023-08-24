particle minecraft:note ~ ~2 ~ 0.5 0.5 0.5 1 1 force
playsound minecraft:block.bell.use master @a ~ ~ ~
summon snowball ~ ~ ~ {Tags:["penalty"]}
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @s UUID