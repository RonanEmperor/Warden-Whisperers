scoreboard players operation @s ability_cooldown_health_boost = .health_boost_cooldown_max settings
execute at @s run particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 0.1 50 normal @a

tellraw @s [{"text":"["},{"text":"▶","color":"light_purple"},{"text":"]","color":"white"},{"text":" You used your ","color":"gray"},{"text":"Health Boost","color":"light_purple","underlined":true},{"text":" ability!","color":"gray","underlined":false}]

execute at @s as @s run playsound minecraft:block.brewing_stand.brew master @a
execute at @s as @s run playsound minecraft:entity.splash_potion.break master @a ~ ~ ~ 1 2

# Health boost
effect give @s minecraft:absorption 60 9 true