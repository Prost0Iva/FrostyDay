execute store result storage frosty_day data.bossbar_add int 1 run scoreboard players add *total_id model_id 1
summon vex ~ ~ ~ {CustomName:'{"translate": "frostybeak"}',PersistenceRequired:1b,Tags:["frostybeak","mana_user"],Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}],HandDropChances:[0.0f,0.0f],attributes:[{id:"generic.scale",base:4.0d},{id:"generic.max_health",base:230},{id:"generic.attack_damage",base:7},{id:"generic.follow_range",base:1024},{id:"generic.knockback_resistance",base:0.6}],Health:230,DeathLootTable:"frosty_day:frostybeak"}
summon armor_stand ~ ~ ~ {Tags:["frostybeak","model_id"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"potion",components:{custom_model_data:50956}}]}
scoreboard players operation @n[type=vex,tag=frostybeak] model_id = *total_id model_id
scoreboard players operation @n[type=armor_stand,tag=frostybeak] model_id = *total_id model_id
function frosty_day:frostybeak/bossbar_add with storage frosty_day data