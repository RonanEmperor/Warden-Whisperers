# Apply ability cooldown
scoreboard players operation @s ability_cooldown_stun = .stun_cooldown_max settings

# Particle feedback
execute at @s run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 50 normal @a

# Tellraw feedback message for user
tellraw @s [{"text":"["},{"text":"▶","color":"light_purple"},{"text":"]","color":"white"},{"text":" You used your ","color":"gray"},{"text":"Quick Getaway","color":"light_purple","underlined":true},{"text":" ability!","color":"gray","underlined":false}]

# Sound effects for user
execute at @s as @s run playsound minecraft:block.brewing_stand.brew master @a
execute at @s as @s run playsound minecraft:entity.zombie_villager.convert master @a ~ ~ ~ 1 2

# Quick Getaway ability
effect give @s minecraft:speed 10 1 true
execute as @e[type=minecraft:warden,tag=warden,sort=nearest] run data merge entity @s {anger: {suspects: []}}