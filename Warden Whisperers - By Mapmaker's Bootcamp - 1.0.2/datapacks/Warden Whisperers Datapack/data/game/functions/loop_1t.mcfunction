## Function calls every game-tick
# Loop function
schedule function game:loop_1t 1t

# Real time player count
scoreboard players set .alive_count players 0
execute as @a[gamemode=adventure,scores={ingame=1}] run scoreboard players add .alive_count players 1

# Detect game end and call function
execute if score .alive_count players < .threshold players run function game:end

# Add tick counter
scoreboard players add .ticks ticks 1

# Remove darkness effect if effect is disabled in settings
execute if score .darkness settings matches 0 run effect clear @a darkness

# Detect for player death
execute as @a[scores={death=1..}] run function game:death

# Detect use of ability
execute as @a[scores={right_click_detect=1..},nbt={SelectedItem: {id:"minecraft:carrot_on_a_stick"}}] run function game:ability/detect_use

# Display ability cooldown
execute as @a[nbt={SelectedItem: {id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 1}}}] store result score @s ability_cooldown_general run scoreboard players get @s ability_cooldown_stun
execute as @a[nbt={SelectedItem: {id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 2}}}] store result score @s ability_cooldown_general run scoreboard players get @s ability_cooldown_health_boost
execute as @a[nbt={SelectedItem: {id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 3}}}] store result score @s ability_cooldown_general run scoreboard players get @s ability_cooldown_teleportation

execute as @a[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick"}},gamemode=!spectator] run function game:ability/cooldown_display
execute as @a unless entity @s[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick"}}] run title @s actionbar {"text": ""}

# Cooldown abilities
execute as @a[scores={ability_cooldown_stun=1..}] run scoreboard players remove @s ability_cooldown_stun 1
execute as @a[scores={ability_cooldown_health_boost=1..}] run scoreboard players remove @s ability_cooldown_health_boost 1
execute as @a[scores={ability_cooldown_teleportation=1..}] run scoreboard players remove @s ability_cooldown_teleportation 1

# Map specific ticking
execute if score .map settings matches 1 run function game:map1/tick
execute if score .map settings matches 2 run function game:map2/tick
execute if score .map settings matches 3 run function game:map3/tick

# Loot tick
execute as @a[gamemode=!spectator] at @s as @e[type=shulker,tag=loot_shulker,distance=..5,tag=!removed,scores={ticks_alive=5..}] run function game:loot/remove_shulker
execute as @e[type=shulker,tag=loot_shulker] run scoreboard players add @s ticks_alive 1

# Worldborder tick
execute if score .shrink_time settings matches 1.. run function game:border/tick

# Ancient Crossbow tick
execute as @e[type=arrow,nbt={inGround:1b}] run kill @s
clear @a crossbow{Charged:false}

# Challenge tick
execute if score .challenge settings matches 1 as @a[scores={ingame=1..},gamemode=adventure] run function game:challenge/no_sneak
execute if score .challenge settings matches 2 as @a[scores={ingame=1..},gamemode=adventure] run function game:challenge/sprint
execute if score .ticks ticks matches 20.. as @a[scores={ingame=1..},gamemode=adventure] at @s as @e[tag=bell,type=block_display] if score @s ingame_id = @p ingame_id run function game:challenge/bell/tick
execute as @a[gamemode=!adventure] at @s as @e[tag=bell,type=block_display] if score @s ingame_id = @p ingame_id run kill @s

# Other
clear @a glass_bottle