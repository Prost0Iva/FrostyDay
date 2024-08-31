scoreboard players reset @s raycast
execute anchored eyes positioned ^ ^ ^1.5 if entity @e[tag=bonebeak,type=vex,distance=..1.5] run tag @n[type=vex,tag=bonebeak,distance=..1.5] add convert 
execute anchored eyes positioned ^ ^ ^1.5 if entity @e[tag=bonebeak,type=vex,distance=..1.5] run clear @s potion[custom_data={"ominous_ice_bottle":1b}] 1
advancement revoke @s only frosty_day:other/ominous_ice_bottle