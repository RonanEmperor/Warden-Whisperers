# Kill existing Wardens
kill @e[type=minecraft:warden]

#> Player Setup
# Basic setup for players, map and settings
team join alive @a[team=player]
xp set @a 0 levels
xp set @a 0 points
clear @a
effect clear @a
effect give @a saturation infinite 0 true
gamemode adventure @a[team=alive]
gamemode spectator @a[team=spec]
time set midnight
tag @a remove parkour

# Scoreboard setup
scoreboard players set .ticks ticks 0
scoreboard players set .count players 0
execute as @a[team=alive] run scoreboard players add .count players 1
scoreboard players reset * ingame
scoreboard players reset @a death
scoreboard players reset @a right_click_detect
scoreboard players set @a snowball 0
scoreboard players reset @a sprint_time
scoreboard players reset @a sneak_time
scoreboard players set @a[team=alive] ingame 1
scoreboard players set .state state 2
scoreboard players set .loot_count loot_count 3
scoreboard players set @a ability_cooldown_stun 0
scoreboard players set @a ability_cooldown_teleportation 0
scoreboard players set @a ability_cooldown_health_boost 0
scoreboard players set @a shot_crossbow 0
advancement revoke @a only game:ancient_crossbow
scoreboard objectives setdisplay sidebar ingame

# Map setup
function game:loot/clear_loot
kill @e[type=minecraft:marker,tag=worldborder_centre]
kill @e[type=minecraft:marker,tag=worldborder_marker]
kill @e[type=minecraft:marker,tag=map_marker]
execute if score .map settings matches 1 run function game:map1/setup
execute if score .map settings matches 2 run function game:map2/setup
execute if score .map settings matches 3 run function game:map3/setup

# Inventory management
item replace entity @a[team=alive] hotbar.0 with stick{Enchantments:[{id:"minecraft:knockback",lvl:3}],display:{Name:'{"text":"Knockback Stick","color":"aqua"}'}}
item replace entity @a[team=alive] hotbar.8 with snowball 16
item replace entity @a[team=alive] weapon.offhand with minecraft:shield{Unbreakable:1b}

# Give ability items
execute if score .quick_getaway_ability settings matches 1 run give @a[team=alive] minecraft:carrot_on_a_stick{Unbreakable:1, Damage:10, CustomModelData:1,display:{Name:'[{"text":"Quick Getaway","color":"light_purple","bold":true,"italic":false},{"text":" Ability","color":"gray","bold":false}]', Lore:['{"text":"Confuses the Warden, so you can make a quick getaway.","color":"gray"}']}}
execute if score .health_boost_ability settings matches 1 run give @a[team=alive] minecraft:carrot_on_a_stick{Unbreakable:1, Damage:16, CustomModelData:2,display:{Name:'[{"text":"Health Boost","color":"light_purple","bold":true,"italic":false},{"text":" Ability","color":"gray","bold":false}]', Lore:['{"text":"Grants the 20 absorption hearts for 1 minute.","color":"gray"}']}}
execute if score .teleportation_ability settings matches 1 run give @a[team=alive] minecraft:carrot_on_a_stick{Unbreakable:1, Damage:24, CustomModelData:3,display:{Name:'[{"text":"Random Teleportation","color":"light_purple","bold":true,"italic":false},{"text":" Ability","color":"gray","bold":false}]', Lore:['{"text":"Swaps your position with a random player.","color":"gray"}']}}

# Title, text, and sound
execute if score .number_of_wardens settings matches 0 run tellraw @a [{"text":"["},{"text":"!","color":"red","bold":true},{"text":"]","color":"white","bold":false},{"text":" Warning! The Warden will be released in ","color":"gold","bold":false},{"text":"10 seconds.","underlined":true,"color":"gold"}]
execute if score .number_of_wardens settings matches 1.. run tellraw @a [{"text":"["},{"text":"!","color":"red","bold":true},{"text":"]","color":"white","bold":false},{"text":" Warning! The Wardens will be released in ","color":"gold","bold":false},{"text":"10 seconds.","underlined":true,"color":"gold"}]
title @a subtitle {"text":"Last One Standing Wins!","color":"light_purple"}
title @a title {"text":"Warden Whisperers","color":"light_purple"}
execute as @a at @s run playsound minecraft:entity.warden.death hostile @a ~ ~ ~ 

execute if score .challenge settings matches 1 run tellraw @s [{"text":"["},{"text":"⛏","color":"red","bold": false},{"text":"]","color":"white","bold":false},{"text":" The ","color":"gray","bold":false},{"text":"No Sneaking", "underlined": true, "color": "red"}, {"text": " game challenge is active.", "color": "gray", "underlined": false}]

execute if score .challenge settings matches 2 run tellraw @s [{"text":"["},{"text":"⛏","color":"red","bold": false},{"text":"]","color":"white","bold":false},{"text":" The ","color":"gray","bold":false},{"text":"Only Sprinting", "underlined": true, "color": "red"}, {"text": " game challenge is active.", "color": "gray", "underlined": false}]

# Begin Loop Schedule
schedule function game:begin 10s
schedule function #game:main_loops 1t
schedule function game:loop_20s 20s
execute unless score .shrink_time settings matches 0 run schedule function game:border/setup 30s
execute if score .shrink_time settings matches 0 run scoreboard players set .loot_count loot_count 3
execute if score .loot_chests settings matches 1 run schedule function game:loot/create_loot_markers 59s
execute if score .loot_chests settings matches 1 run schedule function game:loot/generate_loot_schedule 60s

# Adjust game settings and gamerules
execute if score .regen settings matches 0 run gamerule naturalRegeneration false
execute if score .regen settings matches 1 run gamerule naturalRegeneration true

execute if score .pvp settings matches 1 run team modify alive friendlyFire true
execute if score .pvp settings matches 0 run team modify alive friendlyFire false

execute if score .highlight_players settings matches 1 run effect give @a[team=alive] glowing infinite 0 true

execute if score .challenge settings matches 1.. as @p[team=alive] run schedule function game:challenge/bell/setup 1s