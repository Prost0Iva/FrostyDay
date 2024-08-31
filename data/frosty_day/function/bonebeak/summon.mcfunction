scoreboard players add *total_id model_id 1
summon vex ~ ~ ~ {CustomName:'{"translate": "bonebeak"}',Tags:["bonebeak","mana_user"],Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}],HandDropChances:[0.0f,0.0f],DeathLootTable:"frosty_day:bonebeak",attributes:[{base:8,id:"generic.max_health"}],Health:8}
summon armor_stand ~ ~ ~ {Tags:["bonebeak","model_id"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"potion",components:{custom_model_data:50955,potion_contents:{custom_color:1}}}]}
scoreboard players operation @n[type=vex,tag=bonebeak] model_id = *total_id model_id
scoreboard players operation @n[type=armor_stand,tag=bonebeak] model_id = *total_id model_id