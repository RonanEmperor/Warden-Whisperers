execute if score .shrink_time settings matches 0 run fill ~1 ~-1 ~ ~1 ~1 ~ red_concrete replace lime_concrete
execute if score .shrink_time settings > .0 constants run fill ~1 ~-1 ~ ~1 ~1 ~ lime_concrete replace red_concrete

execute if score .shrink_time settings matches 0 run setblock ~2 ~ ~ air
execute if score .shrink_time settings matches 0 run setblock ~1 ~ ~ redstone_lamp
execute if score .shrink_time settings > .0 constants run setblock ~2 ~ ~ minecraft:redstone_block

execute if score .shrink_time settings matches 0 run data modify block ~ ~ ~ front_text.messages[3] set value '{"text": "Never", "underlined": true, "bold": true}'
execute if score .shrink_time settings matches 0 run data modify block ~ ~ ~ front_text.color set value "red"
execute if score .shrink_time settings matches 1 run data modify block ~ ~ ~ front_text.messages[3] set value '{"text": "2 Minutes", "underlined": true, "bold": true}'
execute if score .shrink_time settings matches 1 run data modify block ~ ~ ~ front_text.color set value "green"
execute if score .shrink_time settings matches 2 run data modify block ~ ~ ~ front_text.messages[3] set value '{"text": "3 Minutes", "underlined": true, "bold": true}'
execute if score .shrink_time settings matches 2 run data modify block ~ ~ ~ front_text.color set value "green"
execute if score .shrink_time settings matches 3 run data modify block ~ ~ ~ front_text.messages[3] set value '{"text": "4 Minutes", "underlined": true, "bold": true}'
execute if score .shrink_time settings matches 3 run data modify block ~ ~ ~ front_text.color set value "green"
execute if score .shrink_time settings matches 4 run data modify block ~ ~ ~ front_text.messages[3] set value '{"text": "5 Minutes", "underlined": true, "bold": true}'
execute if score .shrink_time settings matches 4 run data modify block ~ ~ ~ front_text.color set value "green"
execute if score .shrink_time settings matches 5 run data modify block ~ ~ ~ front_text.messages[3] set value '{"text": "6 Minutes", "underlined": true, "bold": true}'
execute if score .shrink_time settings matches 5 run data modify block ~ ~ ~ front_text.color set value "green"