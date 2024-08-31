execute if score @s model_anim matches 2..15 run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.4 0.4 0.4 0 8
execute if score @s model_anim matches 2 run playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 1 0
execute if score @s model_anim matches 2 run playsound minecraft:block.enchantment_table.use hostile @a ~ ~ ~ 1 0.6
execute if score @s model_anim matches 2 anchored eyes run function frosty_day:ice/summon
execute if score @s model_anim matches 3 anchored eyes positioned ^1 ^ ^-3 run function frosty_day:ice/summon
execute if score @s model_anim matches 4 anchored eyes positioned ^-1 ^ ^-3 run function frosty_day:ice/summon
execute if score @s model_anim matches 15 run tp @n[type=armor_stand,tag=ice,tag=summon_anim] ^ ^6 ^5
execute if score @s model_anim matches 15 run tp @n[type=armor_stand,tag=ice,tag=summon_anim] ^-4 ^6 ^-4
execute if score @s model_anim matches 15 run tp @n[type=armor_stand,tag=ice,tag=summon_anim] ^4 ^6 ^-4
execute if score @s model_anim matches 16 store result score @s mana run random value 50..100
execute if score @s model_anim matches 16.. run scoreboard players reset @s model_anim