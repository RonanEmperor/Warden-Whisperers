# Become player detection
execute as @a at @s if block ~ ~-1 ~ lime_concrete run function lobby:detect_lime_concrete

# Become spectator detection
execute as @a at @s if block ~ ~-1 ~ light_gray_concrete run function lobby:detect_gray_concrete

# Remove glowing effect
effect clear @a glowing

schedule clear game:loot/create_loot_markers

# Detect start game
execute positioned 0 65 19 as @p[advancements={lobby:start_button_pressed=true}] if entity @a[tag=admin] if entity @s[tag=admin] if block 0 65 19 minecraft:warped_button[powered=true] if score .state state matches 1 run function lobby:cancel_start
execute positioned 0 65 19 as @p[advancements={lobby:start_button_pressed=true}] if entity @a[tag=admin] if entity @s[tag=admin] if block 0 65 19 minecraft:warped_button[powered=true] if score .state state matches 0 run function lobby:try_start

execute positioned 0 65 19 as @p[advancements={lobby:start_button_pressed=true}] if entity @a[tag=admin] if entity @s[tag=!admin,] if block 0 65 19 minecraft:warped_button[powered=true] if score .state state matches 1 run function settings:permission_fail
execute positioned 0 65 19 as @p[advancements={lobby:start_button_pressed=true}] if entity @a[tag=admin] if entity @s[tag=!admin] if block 0 65 19 minecraft:warped_button[powered=true] if score .state state matches 0 run function settings:permission_fail

execute unless entity @a[tag=admin] positioned 0 65 19 as @p if block 0 65 19 minecraft:warped_button[powered=true] if score .state state matches 1 run function lobby:cancel_start
execute unless entity @a[tag=admin] positioned 0 65 19 as @p if block 0 65 19 minecraft:warped_button[powered=true] if score .state state matches 0 run function lobby:try_start

# Fix dripleaf
fill 11 70 -13 14 75 -15 minecraft:big_dripleaf[tilt=none,facing=south] replace minecraft:big_dripleaf
fill -9 64 -10 -11 66 -14 minecraft:big_dripleaf[tilt=none,facing=east] replace minecraft:big_dripleaf

# Players in scoreboard
scoreboard players set @a[team=player] lobby 1
scoreboard players set @a[team=spec] lobby 0

# Parkour tick
execute as @a at @s if block ~ ~ ~ minecraft:light_weighted_pressure_plate run function lobby:parkour/handling
execute as @a[tag=parkour] run function lobby:parkour/tick

# Countdown detection
execute if score .state state matches 0 run scoreboard players set .start_countdown ticks -1
execute if score .start_countdown ticks matches 100 run title @a subtitle [{"text":"[ 5 ]","color":"green"}]
execute if score .start_countdown ticks matches 80 run title @a subtitle [{"text":"[ 4 ]","color":"yellow"}]
execute if score .start_countdown ticks matches 60 run title @a subtitle [{"text":"[ 3 ]","color":"gold"}]
execute if score .start_countdown ticks matches 40 run title @a subtitle [{"text":"[ 2 ]","color":"red"}]
execute if score .start_countdown ticks matches 20 run title @a subtitle [{"text":"[ 1 ]","color":"dark_red"}]
execute if score .start_countdown ticks matches 100 run title @a title [{"text":""}]
execute if score .start_countdown ticks matches 80 run title @a title [{"text":""}]
execute if score .start_countdown ticks matches 60 run title @a title [{"text":""}]
execute if score .start_countdown ticks matches 40 run title @a title [{"text":""}]
execute if score .start_countdown ticks matches 20 run title @a title [{"text":""}]
execute if score .start_countdown ticks matches 0 run setblock 0 64 19 minecraft:sculk_catalyst
execute if score .start_countdown ticks matches 0 run function game:setup

execute if score .start_countdown ticks matches 100 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5
execute if score .start_countdown ticks matches 80 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5
execute if score .start_countdown ticks matches 60 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5
execute if score .start_countdown ticks matches 40 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5
execute if score .start_countdown ticks matches 20 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5

execute if score .start_countdown ticks > .0 constants run scoreboard players remove .start_countdown ticks 1