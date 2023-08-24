execute as @s if predicate game:sneak run scoreboard players add @s sneak_time 1
execute as @s[scores={sneak_time=15}] if predicate game:sneak run title @s subtitle {"text":"No sneaking!","color":"red"}
execute as @s[scores={sneak_time=15},predicate=game:sneak] run title @s title ""
execute as @s[scores={sneak_time=15},predicate=game:sneak] run tellraw @s [{"text": "["}, {"text": "!", "color": "red", "bold": true}, {"text": "]", "color": "white", "bold": false}, {"text": " Stop sneaking to avoid detection from the Warden!", "color": "red"}]
execute as @s[scores={sneak_time=15},predicate=game:sneak] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.5
execute as @s unless predicate game:sneak run scoreboard players remove @s[scores={sneak_time=1..}] sneak_time 1
execute if score @s sneak_time matches 30.. run scoreboard players set @s sneak_time 30