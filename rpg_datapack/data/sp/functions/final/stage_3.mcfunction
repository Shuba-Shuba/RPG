tellraw @a {"color":"red","text":"Stage 3:\nCalling in the backup"}
scoreboard players set %index final 4
execute as @e[tag=amirite_boss,limit=1] store result score @s dynamic_health run data get entity @s Health 1
scoreboard players add @e[tag=amirite_boss,limit=1] dynamic_health 100
execute as @e[tag=amirite_boss,limit=1] store result entity @s Health float 1 run scoreboard players get @s dynamic_health
attribute @e[tag=amirite_boss,limit=1] generic.movement_speed base set 0.45
data modify entity @e[tag=amirite_boss,limit=1] HandItems[0].tag.DamageRPG set value 12