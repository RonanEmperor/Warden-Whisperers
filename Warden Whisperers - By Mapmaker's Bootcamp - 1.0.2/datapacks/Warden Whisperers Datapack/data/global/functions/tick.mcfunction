# Login detection
scoreboard players add .onlineTicks ticks 1
scoreboard players add @a ticks 1
execute as @a unless score @s ticks = .onlineTicks ticks run function global:login/join
scoreboard players operation @a ticks = .onlineTicks ticks

# Lobby loop
execute if score .state state matches 0 run function lobby:loop_1t
execute if score .state state matches 1 run function lobby:loop_1t

# Add new players to players team
execute as @a run scoreboard players operation @s first_login = @s first_login
execute as @a[scores={first_login=0}] run team join player @s
execute as @a[scores={first_login=0}] run tag @s remove spec
scoreboard players set @a[scores={first_login=0}] first_login 1

# Store co-ordinates
execute as @a store result score @s stored_x run data get entity @s Pos[0]
execute as @a store result score @s stored_y run data get entity @s Pos[1]
execute as @a store result score @s stored_z run data get entity @s Pos[2]

# Prevent dropping items
execute as @e[type=item,tag=!processed] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,tag=!processed] run data merge entity @s {PickupDelay:0s}
execute as @e[type=item,tag=!processed] run tag @s add processed

# Fix spectator positioning
execute if score .state state matches 2 if score .map settings matches 1 run function game:map1/tick
execute if score .state state matches 2 if score .map settings matches 2 run function game:map2/tick
execute if score .state state matches 2 if score .map settings matches 3 run function game:map3/tick

# Admin setup
execute if entity @a[tag=admin] run scoreboard players enable @a[tag=admin] setting_trigger
execute as @a[scores={setting_trigger=1..}] run function settings:check_permission
scoreboard players enable @a setting_trigger