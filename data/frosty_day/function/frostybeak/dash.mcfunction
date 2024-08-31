execute if score @s model_anim matches 2 run scoreboard players reset @s raycast
execute if score @s model_anim matches 2 run data modify entity @n[type=armor_stand,tag=frostybeak,predicate=frosty_day:model_id] ArmorItems[3].components.minecraft:custom_model_data set value 50957
execute if score @s model_anim matches 3 on target facing entity @s eyes run execute as @n[tag=frostybeak,type=vex] anchored feet positioned ^ ^ ^.5 run function frosty_day:frostybeak/dash_rcast
execute if score @s model_anim matches 4..52 run particle dust{color:[0,1,1],scale:1} ^2 ^2 ^ 0 0 0 0 1
execute if score @s model_anim matches 4..52 run particle dust{color:[0,1,1],scale:1} ^1.5 ^2 ^ 0 0 0 0 1
execute if score @s model_anim matches 4..52 run particle dust{color:[0,1,1],scale:1} ^1 ^2 ^ 0 0 0 0 1
execute if score @s model_anim matches 4..52 run particle dust{color:[0,1,1],scale:1} ^.5 ^2 ^ 0 0 0 0 1
execute if score @s model_anim matches 4..52 run particle dust{color:[0,1,1],scale:1} ^-.5 ^2 ^ 0 0 0 0 1
execute if score @s model_anim matches 4..52 run particle dust{color:[0,1,1],scale:1} ^-1 ^2 ^ 0 0 0 0 1
execute if score @s model_anim matches 4..52 run particle dust{color:[0,1,1],scale:1} ^-1.5 ^2 ^ 0 0 0 0 1
execute if score @s model_anim matches 4..52 run particle dust{color:[0,1,1],scale:1} ^-2 ^2 ^ 0 0 0 0 1
execute if score @s model_anim matches 4..52 run tp @s @n[tag=dash,type=marker,predicate=frosty_day:model_id]
execute if score @s model_anim matches 4..52 run kill @n[tag=dash,type=marker,predicate=frosty_day:model_id]
execute if score @s model_anim matches 4..52 as @e[tag=!frostybeak,type=!vex,type=!armor_stand,type=!item,distance=..3.4] run damage @s 14 minecraft:mob_attack by @n[type=vex,tag=frostybeak]
execute if score @s model_anim matches 4..52 run playsound minecraft:entity.breeze.idle_ground hostile @a ~ ~ ~ 1 1.4
execute if score @s model_anim matches 53 run kill @e[tag=dash,type=marker,predicate=frosty_day:model_id]
execute if score @s model_anim matches 53 run data modify entity @n[type=armor_stand,tag=frostybeak,predicate=frosty_day:model_id] ArmorItems[3].components.minecraft:custom_model_data set value 50956
execute if score @s model_anim matches 53 store result score @s mana run random value 100..250
execute if score @s model_anim matches 53.. run scoreboard players reset @s model_anim