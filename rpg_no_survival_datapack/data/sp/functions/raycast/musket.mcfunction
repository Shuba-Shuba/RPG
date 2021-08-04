scoreboard players remove @s raycast 1
scoreboard players remove @s tmp_raycast 1
function sp:search
tp @s ^ ^ ^0.25 ~ ~
execute unless entity @a[distance=..3,tag=user] run particle crit ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[type=!#sp:protect,distance=..10] store result score @s dynamic_health run data get entity @s Health 10
execute as @e[type=!#sp:protect,dx=0,limit=1,sort=nearest,scores={hit=0},nbt=!{Invulnerable:1b},tag=!amirite_crystal] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function sp:guns/entity_hit
execute as @a[dx=0,limit=1,sort=nearest,tag=!user,nbt={DeathTime:0s},gamemode=!spectator,gamemode=!creative,scores={hit=0}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function sp:guns/player_hit
execute as @e[type=armor_stand,dx=0,limit=1,sort=nearest,tag=dummy,scores={hit=0}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function sp:guns/dummy_hit
execute as @e[type=armor_stand,dx=0,limit=1,sort=nearest,tag=amirite_crystal] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function sp:guns/amirite_hit
execute if score @s bounce matches 1.. rotated ~ ~0.2 positioned ^ ^ ^0.25 unless block ~ ~-0.25 ~ #sp:passthrough run function sp:raycast/bounce
execute if score @s tmp_raycast matches 1.. rotated ~ ~0.2 positioned ^ ^ ^0.25 if block ~ ~ ~ #sp:passthrough run function sp:raycast/musket
execute rotated ~ ~0.2 positioned ^ ^ ^0.25 unless block ~ ~ ~ #sp:passthrough run scoreboard players set @s raycast 0
kill @e[type=marker,tag=bounce,scores={raycast=..0}]
kill @e[type=marker,tag=bounce,scores={bounce=..0}]