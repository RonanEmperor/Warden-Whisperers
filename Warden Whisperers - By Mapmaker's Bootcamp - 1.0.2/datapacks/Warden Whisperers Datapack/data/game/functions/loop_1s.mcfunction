## 1 second loop. Calls itself after 1 second.

# Give snowball if amount is less than 16
execute as @a[scores={snowball=1..},gamemode=!creative] run give @s snowball
execute as @a[scores={snowball=1..}] run scoreboard players remove @s snowball 1

execute if score .state state matches 2 run schedule function game:loop_1s 1s