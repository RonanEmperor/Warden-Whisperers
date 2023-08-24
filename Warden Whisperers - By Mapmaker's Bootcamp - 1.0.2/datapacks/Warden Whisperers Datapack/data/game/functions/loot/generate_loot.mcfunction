summon minecraft:shulker ~ ~ ~ {ActiveEffects:[{Id:14,Duration:999999,ShowParticles:false},{Id:24,ShowParticles:false,Duration:999999}],Silent:1b,NoAI:1b,Invulnerable:1b,Tags:["loot_shulker"],Team:"shulker"}

setblock ~ ~ ~ chest{CustomName:'{"text":"Loot Chest"}',LootTable:"game:chests/loot_chest_generic"}

kill @s