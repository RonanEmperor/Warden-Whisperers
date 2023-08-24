# Reset Scoreboards
function global:objectives
scoreboard players reset .onlineTicks ticks
scoreboard players reset .ticks ticks
scoreboard players reset @a first_login
scoreboard players set .state state 0
scoreboard players set .count players 0
scoreboard players set .threshold players 2
scoreboard players set .start_countdown ticks -1
scoreboard players reset * lobby
scoreboard objectives setdisplay sidebar lobby

# Setup gamerules
gamerule doImmediateRespawn true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
gamerule showDeathMessages false
gamerule doVinesSpread false
gamerule doWeatherCycle false
gamerule doDaylightCycle false
gamerule doTraderSpawning false
gamerule doPatrolSpawning false
gamerule disableRaids true
gamerule doInsomnia false
gamerule spawnRadius 0
gamerule fallDamage false
gamerule announceAdvancements false

# Reset worldborder
worldborder set 1000000

# Reset lobby settings
scoreboard players set .map settings 1
scoreboard players set .pvp settings 1
scoreboard players set .player_glow settings 0
scoreboard players set .warden_glow settings 0
scoreboard players set .quick_getaway_ability settings 1
scoreboard players set .health_boost_ability settings 1
scoreboard players set .teleportation_ability settings 1
scoreboard players set .darkness settings 1
scoreboard players set .regen settings 1
scoreboard players set .loot_chests settings 1
scoreboard players set .shrink_time settings 3
scoreboard players set .number_of_wardens settings 0
scoreboard players set .ancient_crossbow_ability settings 1
scoreboard players set .challenge settings 0
scoreboard objectives setdisplay sidebar lobby

# Clear all schedules
schedule clear game:loop_1s
schedule clear game:loop_10s
schedule clear game:loop_1t
schedule clear game:loop_20s
schedule clear game:border/setup
schedule clear game:begin
schedule clear game:loot/create_loot_markers
schedule clear game:loot/generate_loot
schedule clear game:tp_to_lobby
function game:loot/clear_loot

# Reset lobby armour stands
kill @e[tag=lobby]

## RonanEmperor
summon minecraft:item_display -4 65.5 -17 {item: {id: "minecraft:brick", Count: 1b, tag: {CustomModelData:1}}, Rotation: [180f, 0f], Tags: ["lobby"]}
summon minecraft:text_display -4 67 -17 {text: '{"text": "RonanEmperor", "color": "gold", "bold": true}', billboard: "center", Tags: ["lobby"]}

## Lazoh
summon minecraft:item_display 0 65.5 -17 {item: {id: "minecraft:stick", Count: 1b, tag: {CustomModelData:1}}, Rotation: [180f, 0f], Tags: ["lobby"]}
summon minecraft:text_display 0 67 -17 {text: '{"text": "Lazoh", "color": "gold", "bold": true}', billboard: "center", Tags: ["lobby"]}

## thayus
summon minecraft:item_display 4 65.5 -17 {item: {id: "minecraft:blaze_rod", Count: 1b, tag: {CustomModelData:1}}, Rotation: [180f, 0f], Tags: ["lobby"]}
summon minecraft:text_display 4 67 -17 {text: '{"text": "thayus", "color": "gold", "bold": true}', billboard: "center", Tags: ["lobby"]}

## Text Displays
summon minecraft:text_display 0 66 20 {text: '{"text": "Start Game", "color": "light_purple", "bold": true}', billboard: "center", Tags: ["lobby"]}

summon minecraft:text_display 8 66 13 {text: '{"text": "Become A Player", "color": "green", "bold": true}', billboard: "center", Tags: ["lobby"]}

summon minecraft:text_display -8 66 13 {text: '{"text": "Become A Spectator", "color": "gray", "bold": true}', billboard: "center", Tags: ["lobby"]}

function settings:update/all
setblock 0 64 19 minecraft:sculk_catalyst

# Other
kill @e[type=minecraft:warden]
kill @e[type=minecraft:block_display,tag=bell]