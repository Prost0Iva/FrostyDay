execute store result storage frosty_day data.bossbar_id int 1 run scoreboard players operation *id model_id = @s model_id
execute if entity @s[nbt={HurtTime:10s}] at @s run playsound minecraft:entity.stray.hurt hostile @a ~ ~ ~ 1 0.6
execute if score @s sound matches 0 at @s run playsound minecraft:entity.stray.ambient hostile @a ~ ~ ~ 1 0.6
execute if score @s sound matches 0 store result score @s sound run random value 20..200
execute unless score @s sound matches -2147483648..2147483647 run scoreboard players set @s sound 0
execute if score @s sound matches 1.. run scoreboard players remove @s sound 1
execute at @s unless entity @a[distance=..48] run tp ~ ~-1000 ~
execute at @s if entity @s[tag=cast] run function frosty_day:frostybeak/cast
execute at @s if score @s mana matches ..0 on target run tag @e[type=vex,tag=frostybeak,distance=..0] add cast
execute if score @s mana matches 1.. run tag @s remove cast
execute at @s unless entity @a[distance=..48] run function frosty_day:frostybeak/bossbar_remove with storage frosty_day data
function frosty_day:frostybeak/bossbar_value with storage frosty_day data