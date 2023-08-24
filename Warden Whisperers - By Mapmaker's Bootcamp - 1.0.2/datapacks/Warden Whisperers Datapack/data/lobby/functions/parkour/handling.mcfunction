execute as @s[scores={stored_y=70..71}] run scoreboard players set @s parkour_time 0
execute as @s[scores={stored_y=70..71}] run scoreboard players set @s parkour_time_secs 0
execute as @s[scores={stored_y=70..71}] run scoreboard players set @s parkour_time_ms 0
execute as @s[scores={stored_y=70..71}] run scoreboard players set @s parkour_time_mins 0
execute as @s[scores={stored_y=70..71}] run scoreboard players set @s parkour_time_ticks 0
execute as @s[scores={stored_y=70..71}] run tag @s add parkour

execute unless score @s parkour_time_secs < .10 constants run title @s[scores={stored_y=74..76},tag=parkour] actionbar [{"text":"Parkour Time: ", "color": "gold", "bold": true}, {"score": {"objective": "parkour_time_mins", "name": "@s"}}, [":"], {"score": {"objective": "parkour_time_secs", "name": "@s"}}, ["."], {"score": {"objective": "parkour_time_ms", "name": "@s"}}]

execute if score @s parkour_time_secs < .10 constants run title @s[scores={stored_y=74..76},tag=parkour] actionbar [{"text":"Parkour completed in: ", "color": "gold", "bold": true}, {"score": {"objective": "parkour_time_mins", "name": "@s"}}, [":0"], {"score": {"objective": "parkour_time_secs", "name": "@s"}}, ["."], {"score": {"objective": "parkour_time_ms", "name": "@s"}}]

execute unless score @s[scores={stored_y=74..76},tag=parkour] parkour_time_ticks < .ticks parkour_time_wr unless score .secs parkour_time_wr < .10 constants run tellraw @s [{"text":"["}, {"text": "!", "color": "red", "bold": true}, {"text": "] ", "color": "white", "bold": false}, {"text": "You completed the parkour in: ", "color": "gold"}, {"score": {"objective": "parkour_time_mins", "name": "@s"}}, [":"], {"score": {"objective": "parkour_time_secs", "name": "@s"}}, ["."], {"score": {"objective": "parkour_time_ms", "name": "@s"}}]

execute unless score @s[scores={stored_y=74..76},tag=parkour] parkour_time_ticks < .ticks parkour_time_wr if score .secs parkour_time_wr < .10 constants run tellraw @s [{"text":"["}, {"text": "!", "color": "red", "bold": true}, {"text": "] ", "color": "white", "bold": false}, {"text": "You completed the parkour in: ", "color": "gold"}, {"score": {"objective": "parkour_time_mins", "name": "@s"}}, [":"], {"score": {"objective": "parkour_time_secs", "name": "@s"}}, ["."], {"score": {"objective": "parkour_time_ms", "name": "@s"}}]

execute if score @s[scores={stored_y=74..76},tag=parkour,gamemode=adventure] parkour_time_ticks < .ticks parkour_time_wr run function lobby:parkour/new_wr
execute as @s[scores={stored_y=74..76},tag=parkour] run tag @s remove parkour