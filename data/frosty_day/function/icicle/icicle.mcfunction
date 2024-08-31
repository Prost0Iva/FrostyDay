scoreboard players add @s life_time 1
execute if score @s life_time matches 5.. run tag @s remove no_damage
execute if entity @s[tag=!no_damage] at @s as @e[type=!item,type=!armor_stand,distance=..1.5] run damage @s 8 arrow by @n[type=armor_stand,tag=icicle,distance=..0]
execute at @s run tp @s ^ ^ ^.5
execute at @s anchored eyes run particle dust{color:[0,1,1],scale:1} ^ ^-.1 ^-1
execute if score @s life_time matches 100.. run kill @s