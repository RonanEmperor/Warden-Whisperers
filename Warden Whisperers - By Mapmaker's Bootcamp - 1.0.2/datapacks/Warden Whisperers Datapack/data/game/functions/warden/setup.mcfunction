# NBT and attribution modifications
data merge entity @s {Brain: {memories: {"minecraft:dig_cooldown": {value: {}, ttl:1000000L}}}}
attribute @s minecraft:generic.knockback_resistance base set 0
attribute @s minecraft:generic.follow_range base set 500
team join warden @s

# Give glowing and resistence if applicable
execute if score .warden_glow settings matches 0 run effect give @s glowing 5 0 true
execute if score .warden_glow settings matches 1 run effect give @s glowing infinite 0 true
effect give @s minecraft:resistance infinite 255 true

# Remove initialisation tag
tag @s remove init