item modify entity @s container.0 frosty_day:frosty_shield
particle snowflake ~ ~ ~ .3 .3 .3 0 25
particle firework ~ ~ ~ 0 0 0 .1 40
playsound block.smithing_table.use block @a ~ ~ ~ 1 1
playsound entity.player.hurt_freeze block @a ~ ~ ~ 1 0.4
kill @e[distance=...5,limit=1,type=item,nbt={Item:{count:1,components:{"minecraft:custom_data":{"ice_crystal":1b}}}}]