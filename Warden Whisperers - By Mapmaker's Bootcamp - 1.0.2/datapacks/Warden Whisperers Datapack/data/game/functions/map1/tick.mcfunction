# Block spectators from leaving arena
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[y=95,dy=10] run tp @s ~ 93 ~
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[y=52,dy=10] run tp @s ~ 63 ~
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[x=59,dx=10] run tp @s 70 ~ ~
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[x=131,dx=10] run tp @s 130 ~ ~
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[z=31,dz=10] run tp @s ~ ~ 30
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[z=-41,dz=10] run tp @s ~ ~ -30