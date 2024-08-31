scoreboard players add @s raycast 1
#particle crit ~ ~ ~ 0 0 0 0 1 force
summon marker ~ ~ ~ {Tags:[dash]}
scoreboard players operation @n[tag=dash] model_id = *id model_id
execute if score @s raycast matches ..47 positioned ^ ^ ^.5 run function frosty_day:frostybeak/dash_rcast