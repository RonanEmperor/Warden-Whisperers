execute if entity @a[tag=admin] as @a[tag=!admin,scores={setting_trigger=1..}] at @s run function settings:permission_fail
execute if entity @a[tag=admin] as @a[tag=admin,scores={setting_trigger=1..}] at @s run function settings:permission_success
execute unless entity @a[tag=admin] as @a[scores={setting_trigger=1..}] at @s run function settings:permission_success