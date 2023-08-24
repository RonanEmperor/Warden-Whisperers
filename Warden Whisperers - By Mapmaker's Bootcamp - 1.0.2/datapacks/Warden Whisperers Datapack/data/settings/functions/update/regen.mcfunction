execute if score .regen settings matches 1 run fill ~1 ~-1 ~ ~1 ~1 ~ minecraft:lime_concrete replace minecraft:red_concrete
execute if score .regen settings matches 0 run fill ~1 ~-1 ~ ~1 ~1 ~ minecraft:red_concrete replace minecraft:lime_concrete

execute if score .regen settings matches 0 run setblock ~2 ~ ~ air
execute if score .regen settings matches 0 run setblock ~1 ~ ~ redstone_lamp
execute if score .regen settings matches 1 run setblock ~2 ~ ~ minecraft:redstone_block

execute if score .regen settings matches 0 run data modify block ~ ~ ~ front_text.messages[3] set value '{"text": "Disabled", "underlined": true, "bold": true}'
execute if score .regen settings matches 0 run data modify block ~ ~ ~ front_text.color set value "red"
execute if score .regen settings matches 1 run data modify block ~ ~ ~ front_text.messages[3] set value '{"text": "Enabled", "underlined": true, "bold": true}'
execute if score .regen settings matches 1 run data modify block ~ ~ ~ front_text.color set value "green"