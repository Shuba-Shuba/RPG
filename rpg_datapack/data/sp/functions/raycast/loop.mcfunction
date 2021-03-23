scoreboard players remove @s raycast 1
tag @s add user
tag @s add dealt
execute unless entity @a[distance=..3,tag=user] run particle crit ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[type=!#sp:protect,distance=..10] store result score @s dynamic_health run data get entity @s Health 10
execute as @e[type=!#sp:protect,dx=0,limit=1,sort=nearest] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function sp:guns/entity_hit
execute as @a[dx=0,limit=1,sort=nearest,tag=!user,nbt={DeathTime:0s},gamemode=!spectator,gamemode=!creative] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function sp:guns/player_hit
execute as @e[type=armor_stand,dx=0,limit=1,sort=nearest,tag=dummy] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function sp:guns/dummy_hit
execute if score @s raycast matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #sp:passthrough run function sp:raycast/loop
tag @s remove user
tag @s remove dealt