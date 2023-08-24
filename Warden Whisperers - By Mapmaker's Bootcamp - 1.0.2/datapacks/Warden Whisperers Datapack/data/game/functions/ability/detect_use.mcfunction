## Ability right click detection
# Stun ability
execute as @s[team=alive,scores={ability_cooldown_stun=..1},nbt={SelectedItem: {tag: {CustomModelData:1}}}] at @s if entity @e[type=minecraft:warden,distance=..10] run function game:ability/stun

execute as @s[team=alive,scores={ability_cooldown_health_boost=..1},nbt={SelectedItem :{tag: {CustomModelData:2}}}] run function game:ability/health_boost

execute as @s[team=alive,scores={ability_cooldown_teleportation=..1},nbt={SelectedItem: {tag: {CustomModelData:3}}}] unless score .alive_count players matches ..1 run function game:ability/teleportation

# Detect if ability cannot be used
execute as @s[scores={ability_cooldown_stun=..1},nbt={SelectedItem: {tag: {CustomModelData:1}}}] at @s unless entity @e[type=minecraft:warden,distance=..10] run tellraw @s [{"text":"["},{"text":"▶","color":"red"},{"text":"] ","color":"white"},{"text":"Quick Getaway","color":"light_purple","underlined":true},{"text":" can only be used within 10 blocks of the Warden!", "color": "red", "underlined": false}]

execute as @s[scores={ability_cooldown_teleportation=..3},nbt={SelectedItem: {tag: {CustomModelData:3}}}] at @s if score .alive_count players matches ..1 run tellraw @s [{"text":"["},{"text":"▶","color":"red"},{"text":"] ","color":"white"},{"text":"Unable to find anyone to swap places with!", "color": "red", "underlined": false}]

execute as @s[scores={ability_cooldown_stun=..1},nbt={SelectedItem: {tag: {CustomModelData:1}}}] at @s unless entity @e[type=minecraft:warden,distance=..10] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.5

execute as @s[scores={ability_cooldown_teleportation=..1},nbt={SelectedItem: {tag: {CustomModelData:3}}}] at @s if score .alive_count players matches ..1 run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.5

# Reset right click detection scoreboard
scoreboard players set @a right_click_detect 0