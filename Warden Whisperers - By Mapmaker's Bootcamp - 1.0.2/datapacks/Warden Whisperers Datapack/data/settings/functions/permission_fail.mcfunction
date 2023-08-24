tellraw @s [{"text": "["},{"text": "!", "color": "red", "bold": true}, {"text": "]", "color": "white", "bold":  false}, {"text": " You must have admin permissions to do this.", "color": "red"}]
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~
scoreboard players set @s setting_trigger 0
execute if block 0 65 19 minecraft:warped_button[powered=true] run advancement revoke @a only lobby:start_button_pressed
setblock 0 65 19 warped_button[powered=false,facing=south,face=floor]