# Block spectators from leaving arena
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[y=96,dy=10] run tp @s ~ 94 ~
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[y=50,dy=10] run tp @s ~ 62 ~
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[x=58,dx=10] run tp @s 70 ~ ~
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[x=131,dx=10] run tp @s 130 ~ ~
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[z=111,dz=10] run tp @s ~ ~ 110
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[z=37,dz=10] run tp @s ~ ~ 48