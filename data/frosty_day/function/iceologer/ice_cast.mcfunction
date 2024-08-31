scoreboard players operation *iceologer model_anim = *gametime model_anim
scoreboard players operation *iceologer model_anim %= *24000 model_anim
scoreboard players operation *iceologer model_anim %= *45 model_anim
scoreboard players add @s model_anim 1
execute if score @s model_anim matches 1 run data modify entity @n[type=armor_stand,tag=iceologer,predicate=frosty_day:model_id] ArmorItems[3].components.minecraft:custom_model_data set value 50953
execute if score @s model_anim matches 1 store result entity @n[type=armor_stand,tag=iceologer,predicate=frosty_day:model_id] ArmorItems[3].components.minecraft:potion_contents.custom_color int 1 run scoreboard players get *iceologer model_anim
execute if score @s model_anim matches 1 run attribute @s generic.movement_speed base set 0.0
execute if score @s model_anim matches 10..30 run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.3 0.4 0.3 0 3
execute if score @s model_anim matches 20 run playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 1 0
execute if score @s model_anim matches 20 run playsound minecraft:block.enchantment_table.use hostile @a ~ ~ ~ 1 0.6
execute if score @s model_anim matches 20 run function frosty_day:ice/summon
execute if score @s model_anim matches 30 on target positioned as @s run tp @n[type=armor_stand,tag=ice,tag=summon_anim] ~ ~6 ~
execute if score @s model_anim matches 45 run attribute @s generic.movement_speed base set 0.35
execute if score @s model_anim matches 45 store result score @s[tag=!angry] mana run random value 60..200
execute if score @s model_anim matches 45 store result score @s[tag=angry] mana run random value 30..100
execute if score @s model_anim matches 45.. run scoreboard players reset @s model_anim