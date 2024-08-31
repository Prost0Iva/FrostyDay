scoreboard players add @s model_anim 1
execute if score @s model_anim matches 1 on target if entity @s[distance=..14] run execute as @n[type=vex,tag=frostybeak] store result score @s random run random value 1..10
execute if score @s model_anim matches 1 on target if entity @s[distance=15..34] run execute as @n[type=vex,tag=frostybeak] store result score @s random run random value 3..22
execute if score @s model_anim matches 1 on target if entity @s[distance=35..48] run execute as @n[type=vex,tag=frostybeak] store result score @s random run random value 11..22
execute if score @s random matches 1..2 run function frosty_day:frostybeak/ice
execute if score @s random matches 3..10 run function frosty_day:frostybeak/icicles
execute if score @s random matches 11..22 run function frosty_day:frostybeak/dash