execute store result storage frosty_day data.bossbar_id int 1 run scoreboard players operation *id model_id = @s model_id
execute at @e[type=!armor_stand,type=!marker,predicate=frosty_day:model_id] run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=bonebeak] unless entity @e[type=!armor_stand,type=!marker,predicate=frosty_day:model_id] positioned as @s run playsound minecraft:entity.skeleton.death hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=frostybeak] unless entity @e[type=!armor_stand,type=!marker,predicate=frosty_day:model_id] positioned as @s run playsound minecraft:entity.stray.death hostile @a ~ ~ ~ 1 0.6
execute unless entity @e[type=!armor_stand,predicate=frosty_day:model_id] run function frosty_day:frostybeak/bossbar_remove with storage frosty_day data
execute unless entity @e[type=!armor_stand,predicate=frosty_day:model_id] run kill