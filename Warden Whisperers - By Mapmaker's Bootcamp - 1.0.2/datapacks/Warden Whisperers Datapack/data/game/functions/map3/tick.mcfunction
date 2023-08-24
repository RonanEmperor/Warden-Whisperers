# Block spectators from leaving arena
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[y=85,dy=10] run tp @s ~ 83 ~
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[y=52,dy=10] run tp @s ~ 63 ~
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[x=59,dx=10] run tp @s 70 ~ ~
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[x=131,dx=10] run tp @s 130 ~ ~
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[z=-47,dz=10] run tp @s ~ ~ -48
execute as @a[gamemode=spectator] at @s positioned ~ ~ ~ if entity @s[z=-121,dz=10] run tp @s ~ ~ -110