# Setup percentages to be displayed
scoreboard players operation @s ability_cooldown_general *= .100 constants

# Set percentage based on cooldown of selected ability
execute as @s[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick",tag:{CustomModelData: 1}}}] run scoreboard players operation @s ability_cooldown_general /= .stun_cooldown_max settings
execute as @s[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick",tag:{CustomModelData: 2}}}] run scoreboard players operation @s ability_cooldown_general /= .health_boost_cooldown_max settings
execute as @s[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick",tag:{CustomModelData: 3}}}] run scoreboard players operation @s ability_cooldown_general /= .teleportation_cooldown_max settings

# Reverse percentage (100 - x)
scoreboard players set @s ability_cooldown_fixed 100
scoreboard players operation @s ability_cooldown_fixed -= @s ability_cooldown_general

# Actionbar title cooldown percentage display 
execute as @s[scores={ability_cooldown_general=91..110}] run title @s actionbar [{"text":"Recharging... ","color":"red"},{"text":"[","color":"gray"},{"text":"","color":"red"},{"text":"■■■■■■■■■■","color":"dark_gray"},{"text":"] ","color":"gray"},{"text":""},{"score":{"name":"@s","objective":"ability_cooldown_fixed"}},{"text":"%"}]
execute as @s[scores={ability_cooldown_general=81..90}] run title @s actionbar [{"text":"Recharging... ","color":"red"},{"text":"[","color":"gray"},{"text":"■","color":"red"},{"text":"■■■■■■■■","color":"dark_gray"},{"text":"] ","color":"gray"},{"text":""},{"score":{"name":"@s","objective":"ability_cooldown_fixed"}},{"text":"%"}]
execute as @s[scores={ability_cooldown_general=71..80}] run title @s actionbar [{"text":"Recharging... ","color":"red"},{"text":"[","color":"gray"},{"text":"■■","color":"red"},{"text":"■■■■■■■■","color":"dark_gray"},{"text":"] ","color":"gray"},{"text":""},{"score":{"name":"@s","objective":"ability_cooldown_fixed"}},{"text":"%"}]
execute as @s[scores={ability_cooldown_general=61..70}] run title @s actionbar [{"text":"Recharging... ","color":"red"},{"text":"[","color":"gray"},{"text":"■■■","color":"red"},{"text":"■■■■■■■","color":"dark_gray"},{"text":"] ","color":"gray"},{"text":""},{"score":{"name":"@s","objective":"ability_cooldown_fixed"}},{"text":"%"}]
execute as @s[scores={ability_cooldown_general=51..60}] run title @s actionbar [{"text":"Recharging... ","color":"red"},{"text":"[","color":"gray"},{"text":"■■■■","color":"red"},{"text":"■■■■■■","color":"dark_gray"},{"text":"] ","color":"gray"},{"text":""},{"score":{"name":"@s","objective":"ability_cooldown_fixed"}},{"text":"%"}]
execute as @s[scores={ability_cooldown_general=41..50}] run title @s actionbar [{"text":"Recharging... ","color":"red"},{"text":"[","color":"gray"},{"text":"■■■■■","color":"red"},{"text":"■■■■■","color":"dark_gray"},{"text":"] ","color":"gray"},{"text":""},{"score":{"name":"@s","objective":"ability_cooldown_fixed"}},{"text":"%"}]
execute as @s[scores={ability_cooldown_general=31..40}] run title @s actionbar [{"text":"Recharging... ","color":"red"},{"text":"[","color":"gray"},{"text":"■■■■■■","color":"red"},{"text":"■■■■","color":"dark_gray"},{"text":"] ","color":"gray"},{"text":""},{"score":{"name":"@s","objective":"ability_cooldown_fixed"}},{"text":"%"}]
execute as @s[scores={ability_cooldown_general=21..30}] run title @s actionbar [{"text":"Recharging... ","color":"red"},{"text":"[","color":"gray"},{"text":"■■■■■■■","color":"red"},{"text":"■■■","color":"dark_gray"},{"text":"] ","color":"gray"},{"text":""},{"score":{"name":"@s","objective":"ability_cooldown_fixed"}},{"text":"%"}]
execute as @s[scores={ability_cooldown_general=11..20}] run title @s actionbar [{"text":"Recharging... ","color":"red"},{"text":"[","color":"gray"},{"text":"■■■■■■■■","color":"red"},{"text":"■■","color":"dark_gray"},{"text":"] ","color":"gray"},{"text":""},{"score":{"name":"@s","objective":"ability_cooldown_fixed"}},{"text":"%"}]
execute as @s[scores={ability_cooldown_general=1..10}] run title @s actionbar [{"text":"Recharging... ","color":"red"},{"text":"[","color":"gray"},{"text":"■■■■■■■■■","color":"red"},{"text":"■","color":"dark_gray"},{"text":"] ","color":"gray"},{"text":""},{"score":{"name":"@s","objective":"ability_cooldown_fixed"}},{"text":"%"}]
execute as @s[scores={ability_cooldown_general=..1}] run title @s actionbar [{"text":"Ability Ready!","color":"green"}]