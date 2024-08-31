scoreboard players operation *frostybeak model_anim = *gametime model_anim
scoreboard players operation *frostybeak model_anim %= *24000 model_anim
scoreboard players operation *frostybeak model_anim %= *25 model_anim
execute if score @s model_anim matches 2 run data modify entity @n[type=armor_stand,tag=frostybeak,predicate=frosty_day:model_id] ArmorItems[3].components.minecraft:custom_model_data set value 50958
execute if score @s model_anim matches 2 store result entity @n[type=armor_stand,tag=frostybeak,predicate=frosty_day:model_id] ArmorItems[3].components.minecraft:potion_contents.custom_color int 1 run scoreboard players get *frostybeak model_anim
execute if score @s model_anim matches 17 on target run tp @n[type=vex,tag=frostybeak] ~ ~ ~ facing entity @s feet
execute if score @s model_anim matches 17 run function frosty_day:icicle/frostybeak_shot
execute if score @s model_anim matches 17 run playsound minecraft:entity.wind_charge.wind_burst hostile @a ~ ~ ~ 1 .8
execute if score @s model_anim matches 15..18 run playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 1 1.4
execute if score @s model_anim matches 24 run data modify entity @n[type=armor_stand,tag=frostybeak,predicate=frosty_day:model_id] ArmorItems[3].components.minecraft:custom_model_data set value 50956
execute if score @s model_anim matches 25 store result score @s mana run random value 20..50
execute if score @s model_anim matches 25.. run scoreboard players reset @s model_anim