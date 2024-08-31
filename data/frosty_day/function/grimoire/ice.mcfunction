scoreboard players add @s model_anim 1
execute if score @s model_anim matches 2 if items entity @s weapon.mainhand chain_command_block[custom_data={"grimoire":1b}] run item modify entity @s weapon.mainhand frosty_day:grimoire_damage
execute if score @s model_anim matches 2 if items entity @s weapon.offhand chain_command_block[custom_data={"grimoire":1b}] run item modify entity @s weapon.offhand frosty_day:grimoire_damage
execute if score @s model_anim matches 2..11 at @s run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.3 0.4 0.3 0 3
execute if score @s model_anim matches 2 at @s run playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 1 0
execute if score @s model_anim matches 2 at @s run playsound minecraft:block.enchantment_table.use hostile @a ~ ~ ~ 1 0.6
execute if score @s model_anim matches 2 at @s run function frosty_day:ice/summon
execute if score @s model_anim matches 12 at @s run tp @n[type=armor_stand,tag=ice,tag=summon_anim] ^ ^6 ^6
execute if score @s model_anim matches 13 store result score @s mana run random value 80..160
execute if score @s model_anim matches 13.. run tag @s remove ice_cast
execute if score @s model_anim matches 13.. run scoreboard players reset @s model_anim