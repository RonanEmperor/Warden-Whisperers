execute as @a[scores={sneak_time=30..,ingame=1..},gamemode=adventure] at @s run function game:challenge/penalty
execute as @a[scores={sprint_time=45..,ingame=1..},gamemode=adventure] at @s run function game:challenge/penalty
effect give @a saturation infinite 0 true
schedule function game:loop_10t 10t