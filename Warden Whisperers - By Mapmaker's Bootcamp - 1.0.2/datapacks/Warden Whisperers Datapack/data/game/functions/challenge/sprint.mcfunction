execute as @s unless predicate game:sprint run scoreboard players add @s sprint_time 1
execute as @s if predicate game:sneak run scoreboard players add @s sprint_time 1
execute as @s[scores={sprint_time=30},predicate=!game:sprint] run title @s subtitle {"text":"Keep sprinting!","color":"red"}
execute as @s[scores={sprint_time=30},predicate=!game:sprint] run title @s title ""
execute as @s[scores={sprint_time=30},predicate=!game:sprint] run tellraw @s [{"text": "["}, {"text": "!", "color": "red", "bold": true}, {"text": "]", "color": "white", "bold": false}, {"text": " Keep sprinting to avoid detection from the Warden!", "color": "red"}]
execute as @s[scores={sprint_time=30},predicate=!game:sprint] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.5
execute if predicate game:sprint unless predicate game:sneak run scoreboard players remove @s[scores={sprint_time=1..}] sprint_time 1
execute if score @s sprint_time matches 45.. run scoreboard players set @s sprint_time 45