scoreboard players operation .mins parkour_time_wr = @s parkour_time_mins
scoreboard players operation .secs parkour_time_wr = @s parkour_time_secs
scoreboard players operation .ms parkour_time_wr = @s parkour_time_ms
scoreboard players operation .ticks parkour_time_wr = @s parkour_time_ticks

tag @s[team=player] add players
tag @s[team=spec] add spec
team leave @s

tag @s add new_wr
data modify block -12 65 -10 front_text.messages[3] set value '{"selector": "@p[tag=new_wr]"}'
execute unless score .secs parkour_time_wr < .10 constants run data modify block -12 65 -10 front_text.messages[1] set value '[{"score":{"name":".mins","objective":"parkour_time_wr"}}, [":"], {"score":{"name":".secs","objective":"parkour_time_wr"}}, ["."], {"score":{"name":".ms","objective":"parkour_time_wr"}}]'
execute if score .secs parkour_time_wr < .10 constants run data modify block -12 65 -10 front_text.messages[1] set value '[{"score":{"name":".mins","objective":"parkour_time_wr"}}, [":0"], {"score":{"name":".secs","objective":"parkour_time_wr"}}, ["."], {"score":{"name":".ms","objective":"parkour_time_wr"}}]'
tag @s remove new_wr

execute unless score .secs parkour_time_wr < .10 constants run tellraw @a [{"text":"["}, {"text": "!", "color": "red", "bold": true}, {"text": "] ", "color": "white", "bold": false}, {"selector": "@s", "color": "gold"}, {"text": " has set a new parkour record of ", "color": "gold"}, {"score": {"objective": "parkour_time_mins", "name": "@s"}}, [":"], {"score": {"objective": "parkour_time_secs", "name": "@s"}}, ["."], {"score": {"objective": "parkour_time_ms", "name": "@s"}}]

execute if score .secs parkour_time_wr < .10 constants run tellraw @a [{"text":"["}, {"text": "!", "color": "red", "bold": true}, {"text": "] ", "color": "white", "bold": false}, {"selector": "@s", "color": "gold"}, {"text": " has set a new parkour record of ", "color": "gold"}, {"score": {"objective": "parkour_time_mins", "name": "@s"}}, [":0"], {"score": {"objective": "parkour_time_secs", "name": "@s"}}, ["."], {"score": {"objective": "parkour_time_ms", "name": "@s"}}]

team join player @s[tag=players]
team join spec @s[tag=spec]