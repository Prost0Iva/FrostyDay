execute if predicate frosty_day:can_see_sky if score *daytime daytime matches 0..13000 run effect give @s wither 5 1 true
execute if predicate frosty_day:can_see_sky if score *daytime daytime matches 0..13000 at @s run particle flame ~ ~.5 ~ .2 .2 .2 0.01 1 force
execute unless predicate frosty_day:can_see_sky unless score *daytime daytime matches 0..13000 run data modify entity @s HasVisualFire set value 0b
execute if entity @s[nbt={HurtTime:10s}] at @s run playsound minecraft:entity.skeleton.hurt hostile @a ~ ~ ~ 1 1.3
execute if score @s sound matches 0 at @s run playsound minecraft:entity.skeleton.ambient hostile @a ~ ~ ~ 1 1.4
execute if score @s sound matches 0 store result score @s sound run random value 20..200
execute unless score @s sound matches -2147483648..2147483647 run scoreboard players set @s sound 0
execute if score @s sound matches 1.. run scoreboard players remove @s sound 1
execute if entity @s[tag=convert] run scoreboard players add @s convert 1
execute if entity @s[tag=convert] at @s run particle snowflake ~ ~.5 ~ .2 .2 .2 .1 3 force
execute if entity @s[tag=convert] if score @s convert matches 300 at @s run playsound minecraft:entity.skeleton.converted_to_stray master @a ~ ~ ~ 1 0.3
execute if entity @s[tag=convert] if score @s convert matches 300 at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Tags:[frostybeak_summoner]}
execute if entity @s[tag=convert] if score @s convert matches 300 run kill