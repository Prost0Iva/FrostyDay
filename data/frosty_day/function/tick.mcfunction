execute store result score *gametime model_anim run time query gametime
scoreboard players operation *gametime model_anim %= *24000 model_anim
execute store result score *daytime daytime run time query daytime
function frosty_day:mana
function frosty_day:summoner
execute as @e[type=armor_stand,tag=model_id] run function frosty_day:model_id
execute as @e[type=pillager,tag=iceologer] run function frosty_day:iceologer/iceologer
execute as @e[type=armor_stand,tag=ice] run function frosty_day:ice/ice
execute as @e[type=vex,tag=bonebeak] run function frosty_day:bonebeak/bonebeak
execute as @e[type=vex,tag=frostybeak] run function frosty_day:frostybeak/frostybeak
execute as @e[type=armor_stand,tag=icicle] run function frosty_day:icicle/icicle
execute as @a[tag=ice_cast] run function frosty_day:grimoire/ice
execute as @a[predicate=frosty_day:ice_diver] at @s run function frosty_day:ice_diver/use
function frosty_day:craft/craft
execute as @a at @s if items entity @s weapon.* fishing_rod[custom_data={frozen_catcher:1b}] anchored eyes positioned ^ ^ ^ run function frosty_day:frozen_catcher/frozen_catcher
execute as @e[type=skeleton,tag=!checked] at @s run function frosty_day:bonebeak/spawn
execute as @e[type=evoker,tag=!checked] at @s run function frosty_day:iceologer/spawn