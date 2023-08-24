setblock ~1 ~ ~ redstone_lamp[lit=true]

execute if score .number_of_wardens settings matches 0 run data modify block ~ ~ ~ front_text.messages[3] set value '{"text": "1", "underlined": true, "bold": true}'
execute if score .number_of_wardens settings matches 0 run data modify block ~ ~ ~ front_text.color set value "green"
execute if score .number_of_wardens settings matches 1 run data modify block ~ ~ ~ front_text.messages[3] set value '{"text": "2", "underlined": true, "bold": true}'
execute if score .number_of_wardens settings matches 1 run data modify block ~ ~ ~ front_text.color set value "green"
execute if score .number_of_wardens settings matches 2 run data modify block ~ ~ ~ front_text.messages[3] set value '{"text": "3", "underlined": true, "bold": true}'
execute if score .number_of_wardens settings matches 2 run data modify block ~ ~ ~ front_text.color set value "green"