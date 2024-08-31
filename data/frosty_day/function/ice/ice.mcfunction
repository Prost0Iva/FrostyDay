execute if entity @s[tag=summon_anim] run function frosty_day:ice/summon
execute if entity @s[tag=!summon_anim] run data modify entity @s NoGravity set value 0b
execute at @s run particle snowflake ~ ~ ~ .6 .4 .6 .01 2
execute at @s run particle firework ~ ~ ~ .6 .4 .6 .01 2
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:packed_ice}} ~ ~1.3 ~ .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:packed_ice}} ~ ~1.3 ~2.5 .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:packed_ice}} ~2.5 ~1.3 ~ .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:packed_ice}} ~ ~1.3 ~-2.5 .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:packed_ice}} ~-2.5 ~1.3 ~ .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:packed_ice}} ~1.5 ~1.3 ~1.5 .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:packed_ice}} ~1.5 ~1.3 ~-1.5 .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:packed_ice}} ~-1.5 ~1.3 ~1.5 .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:packed_ice}} ~-1.5 ~1.3 ~-1.5 .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:snow_block}} ~ ~1.3 ~ .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:snow_block}} ~ ~1.3 ~2.5 .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:snow_block}} ~2.5 ~1.3 ~ .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:snow_block}} ~ ~1.3 ~-2.5 .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:snow_block}} ~-2.5 ~1.3 ~ .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:snow_block}} ~1.5 ~1.3 ~1.5 .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:snow_block}} ~1.5 ~1.3 ~-1.5 .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:snow_block}} ~-1.5 ~1.3 ~1.5 .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:block{block_state:{Name:snow_block}} ~-1.5 ~1.3 ~-1.5 .5 1 .5 1 30
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run particle minecraft:explosion ~ ~.5 ~
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run playsound minecraft:entity.player.hurt_freeze block @a ~ ~ ~ 1 0
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run playsound minecraft:entity.player.hurt_freeze block @a ~ ~ ~ 1 .2
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run playsound minecraft:entity.player.hurt_freeze block @a ~ ~ ~ 1 .5
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run playsound minecraft:block.glass.break block @a ~ ~ ~ 1 .6
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air as @e[type=!armor_stand,tag=!ice,distance=0..2.5,tag=!frostybeak,type=!item] run damage @s 9 minecraft:falling_block at ~ ~ ~
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air as @e[type=!armor_stand,tag=!ice,distance=2.5..4,tag=!frostybeak,type=!item] run damage @s 5 minecraft:falling_block at ~ ~ ~
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run effect give @e[type=!armor_stand,tag=!ice,tag=!iceologer,distance=0..5.5,tag=!frostybeak,predicate=!frosty_day:any_leather] weakness 25
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run effect give @e[type=!armor_stand,tag=!ice,tag=!iceologer,distance=0..5.5,tag=!frostybeak,predicate=!frosty_day:any_leather] slowness 50 1
execute at @s if entity @s[tag=!summon_anim] unless block ~ ~-.05 ~ air run kill @s
scoreboard players add @s life_time 1
execute if score @s life_time matches 200 run kill @s