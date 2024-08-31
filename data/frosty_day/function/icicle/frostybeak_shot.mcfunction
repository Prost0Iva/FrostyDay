data modify storage frosty_day data.Rotation_1 set from entity @s Rotation[0]
data modify storage frosty_day data.Rotation_2 set from entity @s Rotation[1]
function frosty_day:icicle/summon with storage frosty_day data
execute store result score *Rotation_1 rotation run data get entity @s Rotation[0] 1000000
execute store result storage frosty_day data.Rotation_1 float 0.000001 run scoreboard players operation *Rotation_1 rotation += *15 rotation
function frosty_day:icicle/summon with storage frosty_day data
execute store result score *Rotation_1 rotation run data get entity @s Rotation[0] 1000000
execute store result storage frosty_day data.Rotation_1 float 0.000001 run scoreboard players operation *Rotation_1 rotation -= *15 rotation
function frosty_day:icicle/summon with storage frosty_day data
execute store result score *Rotation_1 rotation run data get entity @s Rotation[0] 1000000
execute store result storage frosty_day data.Rotation_1 float 0.000001 run scoreboard players operation *Rotation_1 rotation += *30 rotation
function frosty_day:icicle/summon with storage frosty_day data
execute store result score *Rotation_1 rotation run data get entity @s Rotation[0] 1000000
execute store result storage frosty_day data.Rotation_1 float 0.000001 run scoreboard players operation *Rotation_1 rotation -= *30 rotation
function frosty_day:icicle/summon with storage frosty_day data