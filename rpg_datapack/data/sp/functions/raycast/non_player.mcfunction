scoreboard players remove @s raycast 1
tag @s add user
tag @s add dealt
particle crit ~ ~ ~ 0 0 0 0 1 normal @a
execute as @a[dx=0,limit=1,sort=nearest,tag=!user,nbt={DeathTime:0s},gamemode=!spectator,gamemode=!creative] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run function sp:guns/player_hit
execute if score @s raycast matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #sp:passthrough run function sp:raycast/non_player
tag @s remove user
tag @s remove dealt