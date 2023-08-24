# Spectating, etc
gamemode spectator
scoreboard players remove .count players 1
team leave @s

# Titles and sound
execute as @a at @s run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 1 2
tellraw @a [{"text":"["},{"text":"!","color":"red","bold":true},{"text":"] ","color":"white","bold":false},{"text":"","color":"red","bold":true},{"selector":"@s","color":"red","bold":true},{"text":" has been eliminated!","bold":false,"color":"red"}]
team join dead

# Reset score identifier scores
scoreboard players set @s death 0
scoreboard players set @s ingame 0