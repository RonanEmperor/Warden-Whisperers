summon marker 0 0 0 {Tags:["loot"]}
summon marker 0 0 0 {Tags:["loot"]}
summon marker 0 0 0 {Tags:["loot"]}
summon marker 0 0 0 {Tags:["loot"]}
summon marker 0 0 0 {Tags:["loot"]}
summon marker 0 0 0 {Tags:["loot"]}

tellraw @a [{"text":"["},{"text":"🗡","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"Chests containing loot have spawned in!","bold":false,"color":"gold"}]
execute as @a at @s run playsound minecraft:block.chest.open master @s ~ ~ ~

execute if score .map settings matches 1 run spreadplayers 100 0 15 25 under 65 false @e[tag=loot]
execute if score .map settings matches 2 run spreadplayers 100 80 15 25 under 69 false @e[tag=loot]
execute if score .map settings matches 3 run spreadplayers 100 -80 15 25 under 69 false @e[tag=loot]