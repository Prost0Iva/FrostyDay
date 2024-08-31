execute as @a unless score @s mana matches -2147483648..2147483647 run scoreboard players set @s mana 0
execute as @e[tag=mana_user] unless score @s mana matches -2147483648..2147483647 run scoreboard players set @s mana 0
scoreboard players remove @a[scores={mana=1..}] mana 1
scoreboard players remove @e[tag=mana_user,scores={mana=1..}] mana 1