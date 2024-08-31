scoreboard players operation *ice model_anim = *gametime model_anim
scoreboard players operation *ice model_anim %= *24000 model_anim
scoreboard players operation *ice model_anim %= *12 model_anim
execute if entity @s[tag=!ice,type=!armor_stand] at @s anchored eyes run summon armor_stand ^ ^ ^1.5 {CustomName:'{"translate": "ice_chunk"}',Invisible:1b,Silent:1b,Tags:[ice,summon_anim],NoGravity:1b}
execute run scoreboard players add @s[tag=ice] model_anim 1
execute if score @s[tag=ice] model_anim matches 1 run item replace entity @s armor.head with potion[custom_model_data=50954,potion_contents={custom_color:-5}]
execute if score @s[tag=ice] model_anim matches 1 store result entity @s ArmorItems[3].components.minecraft:potion_contents.custom_color int 1 run scoreboard players get *ice model_anim
execute if score @s[tag=ice] model_anim matches 11 run item replace entity @s armor.head with potion[custom_model_data=50954,potion_contents={custom_color:-6}]
execute if score @s[tag=ice] model_anim matches 20 run tag @s remove summon_anim