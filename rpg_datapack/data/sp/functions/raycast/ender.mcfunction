scoreboard players remove @s raycast 1
tag @s add user
tag @s add dealt
execute unless entity @a[distance=..3,tag=user] run particle crit ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[type=!#sp:protect,distance=..10] store result score @s dynamic_health run data get entity @s Health 10
execute as @e[type=enderman,dx=0,limit=1,sort=nearest,nbt=!{Invulnerable:1b}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function sp:guns/ender_hit
execute if score @s raycast matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #sp:passthrough run function sp:raycast/ender
tag @s remove user
tag @s remove dealt