summon minecraft:item ~ ~ ~ {Item:{id: "minecraft:crossbow", Count: 1b, tag:{Enchantments: [{id: "minecraf:lure", lvl:1}], HideFlags: 33, display: {Name: '[{"text": "Ancient Crossbow", "italic": false, "color": "light_purple", "bold": true}, {"text":" Ability", "color": "gray", "bold": false}]', Lore: ['{"text": "A warden will attack a player shot with this crossbow.", "color": "gray"}', '{"text": ""}', '{"text": "Uses Remaining: 1", "color": "white", "italic": false}']}, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {CustomPotionEffects:[{Id: 10, Amplifier: 255, ShowParticles: 0b, Duration: 5}]}}], Charged: 1b, Loaded: 1b}}, Tags: ["ancient_crossbow"], Glowing: true, CustomName: '{"text":"Ancient Crossbow", "color": "light_purple", "bold": true}', CustomNameVisible: true}

team join ability_shulker @e[type=minecraft:item,tag=ancient_crossbow]

tag @s remove has_generated
tellraw @a [{"text":"["},{"text":"🗡","color":"gold"},{"text":"] ","color":"white","bold":false},{"text":"An Ancient Crossbow has spawned in!","bold": false,"color":"gold"}]

execute as @a at @s run playsound minecraft:item.crossbow.quick_charge_3 master @s ~ ~ ~
execute as @a at @s run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~

execute if score .shrink_time settings matches 1.. run scoreboard players set .loot_count loot_count 3
execute if score .shrink_time settings matches 0 run scoreboard players set .loot_count loot_count 1