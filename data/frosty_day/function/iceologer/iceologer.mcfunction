scoreboard players operation *id model_id = @s model_id
execute if entity @s[nbt={Motion:[0.0d,0.0d,0.0d]},tag=!ice_cast] run data modify entity @n[type=armor_stand,tag=iceologer,predicate=frosty_day:model_id] ArmorItems[3].components.minecraft:custom_model_data set value 50951
execute if entity @s[nbt=!{Motion:[0.0d,0.0d,0.0d]},tag=!ice_cast] run data modify entity @n[type=armor_stand,tag=iceologer,predicate=frosty_day:model_id] ArmorItems[3].components.minecraft:custom_model_data set value 50952
execute if items entity @s weapon.mainhand crossbow[minecraft:charged_projectiles=[{id:arrow}]] run item replace entity @s weapon.mainhand with crossbow[custom_model_data=50951]
execute at @s if entity @s[tag=ice_cast] run function frosty_day:iceologer/ice_cast
execute at @s if score @s mana matches ..0 on target run tag @e[type=pillager,tag=iceologer,distance=..0] add ice_cast
execute if score @s mana matches 1.. run tag @s remove ice_cast
execute at @s if entity @a[nbt={active_effects:[{id:"minecraft:bad_omen"}]},distance=..15] run effect give @s resistance 15 2