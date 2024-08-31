scoreboard players add *total_id model_id 1
summon pillager ~ ~ ~ {CustomName:'{"translate": "iceologer"}',PersistenceRequired:1b,Tags:["iceologer","mana_user"],active_effects:[{id:"invisibility",show_particles:0b,duration:-1}],HandItems:[{id:"crossbow",count:1,components:{custom_model_data:50951}},{}],HandDropChances:[0.0f,0.0f],DeathLootTable:"frosty_day:iceologer"}
summon armor_stand ~ ~ ~ {Tags:["iceologer","model_id"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"potion",components:{custom_model_data:50951,potion_contents:{custom_color:1}}}]}
scoreboard players operation @n[type=pillager,tag=iceologer] model_id = *total_id model_id
scoreboard players operation @n[type=armor_stand,tag=iceologer] model_id = *total_id model_id