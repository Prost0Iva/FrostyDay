execute store result score @s random run random value 1..8
execute if score @s random matches 1..6 if biome ~ ~ ~ #has_structure/igloo run function frosty_day:iceologer/summon
execute if score @s random matches 1..6 if biome ~ ~ ~ #has_structure/igloo run tp @s ~ ~-1000 ~
execute if score @s random matches 8 unless biome ~ ~ ~ #has_structure/igloo run function frosty_day:iceologer/summon
execute if score @s random matches 8 unless biome ~ ~ ~ #has_structure/igloo run tp @s ~ ~-1000 ~
tag @s add checked