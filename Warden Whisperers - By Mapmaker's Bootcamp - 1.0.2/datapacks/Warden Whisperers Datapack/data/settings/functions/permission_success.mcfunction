execute if score @s setting_trigger matches 1 positioned 19 66 -5 run function settings:cycle/loot_chests
execute if score @s setting_trigger matches 2 positioned 19 66 -4 run function settings:cycle/pvp
execute if score @s setting_trigger matches 3 positioned 19 66 -3 run function settings:cycle/player_glow
execute if score @s setting_trigger matches 4 positioned 19 66 -2 run function settings:cycle/warden_glow
execute if score @s setting_trigger matches 5 positioned 19 66 -1 run function settings:cycle/darkness
execute if score @s setting_trigger matches 6 positioned 19 66 0 run function settings:cycle/regen
execute if score @s setting_trigger matches 7 positioned 19 66 1 run function settings:cycle/quick_getaway_ability
execute if score @s setting_trigger matches 8 positioned 19 66 2 run function settings:cycle/health_boost_ability
execute if score @s setting_trigger matches 9 positioned 19 66 3 run function settings:cycle/teleportation_ability
execute if score @s setting_trigger matches 10 positioned 19 66 5 run function settings:cycle/number_of_wardens
execute if score @s setting_trigger matches 11 positioned 19 66 6 run function settings:cycle/shrink_time
execute if score @s setting_trigger matches 13 positioned 19 66 -6 run function settings:cycle/challenge
execute if score @s setting_trigger matches 14 positioned 19 66 4 run function settings:cycle/ancient_crossbow_ability
execute if score @s setting_trigger matches 12 run function settings:cycle/map

scoreboard players set @s setting_trigger 0