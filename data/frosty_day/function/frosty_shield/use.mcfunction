execute store result score @s random run random value 1..100
execute if score @s random matches 1..35 run function frosty_day:icicle/frosty_shield_shot
advancement revoke @s only frosty_day:other/frosty_shield