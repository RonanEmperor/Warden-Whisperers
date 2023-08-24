# Setup Warden
execute at @e[type=minecraft:marker,tag=map_marker,limit=1] run function game:warden/summon

# Titles and Sound
execute if score .number_of_wardens settings matches 0 run tellraw @a [{"text": "["}, {"text": "!", "color": "red", "bold": true}, {"text": "]", "color": "white", "bold": false},{"text": " The Warden has been released!", "color": "gold", "bold": false}]
execute if score .number_of_wardens settings matches 1.. run tellraw @a [{"text": "["}, {"text": "!", "color": "red", "bold": true}, {"text": "]", "color": "white", "bold": false},{"text": " The Wardens have been released!", "color": "gold", "bold": false}]
execute as @a at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~

# Clear end crystals
kill @e[type=minecraft:end_crystal]