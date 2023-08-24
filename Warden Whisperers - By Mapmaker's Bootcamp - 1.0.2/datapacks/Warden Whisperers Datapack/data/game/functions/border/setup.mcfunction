# Shrink worldborder
execute if score .shrink_time settings matches 1 run worldborder set 12 120
execute if score .shrink_time settings matches 2 run worldborder set 12 180
execute if score .shrink_time settings matches 3 run worldborder set 12 240
execute if score .shrink_time settings matches 4 run worldborder set 12 300
execute if score .shrink_time settings matches 5 run worldborder set 12 360

# Play sound effect
execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~

# Tellraw message
tellraw @a [{"text":"["},{"text":"!","color":"red","bold":true},{"text":"]","color":"white","bold":false},{"text":" The border has began to shrink!","color":"gold","bold":false}]