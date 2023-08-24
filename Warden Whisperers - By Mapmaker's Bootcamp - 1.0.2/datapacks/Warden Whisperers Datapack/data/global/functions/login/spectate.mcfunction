gamemode spectator
execute if score @s ingame matches 1 run scoreboard players set @s death 1
execute unless score @s ingame matches 1 run tellraw @s {"text":"A game is currently in progress. Please stand by for the next round to end...","color":"red","italic":true}
execute if score .map settings matches 1 run tp @s 100 70 0
execute if score .map settings matches 2 run tp @s 100 70 80
execute if score .map settings matches 3 run tp @s 100 70 -80
team join spec