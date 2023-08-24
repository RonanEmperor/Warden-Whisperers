# Play the warden damage sound for all the players
execute as @a at @s run playsound minecraft:entity.warden.hurt master @s ~ ~ ~

# Damage the warden as the targetted player
execute at @s run damage @e[type=minecraft:warden,limit=1,sort=nearest] 0 minecraft:player_attack by @s

# Tellraw feedback message for the ability user 
tellraw @a[scores={shot_crossbow=1..}] [{"text": "["},{"text": "▶", "color": "light_purple"},{"text":"] ", "color": "white"},{"text": "You shot ", "color": "gray"},{"selector": "@s", "color": "yellow", "underlined": true},{"text":" with an ","color":"gray"}, {"text": "Ancient Crossbow", "color": "light_purple", "underlined": true}, {"text": "!", "underlined": false, "color": "gray"}]

# Tellraw feedback message for the targetted player
tellraw @s [{"text": "["}, {"text": "▶", "color": "red"}, {"text": "]", "color": "white", "bold": false}, {"text": " You were shot with an ", "color": "red"}, {"text": "Ancient Crossbow", "color": "light_purple", "underlined": true}, {"text": "!", "underlined": false, "color": "red"}]

# Reset for future ability uses
scoreboard players set @a shot_crossbow 0
clear @a[scores={shot_crossbow=1..}] crossbow 
advancement revoke @a only game:ancient_crossbow