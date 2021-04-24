# army of skeletons
execute as @e[type=skeleton,tag=tower] at @s run scoreboard players set @s raycast 96
execute as @e[type=skeleton,tag=tower] at @s anchored eyes run function sp:raycast/non_player
execute as @e[type=skeleton,tag=tower] at @s run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..16] ~ ~ ~ 0.5 2

# evoker boss "righthand man"
execute as @e[type=pillager,tag=gun] at @s run scoreboard players set @s raycast 128
execute as @e[type=pillager,tag=gun] at @s anchored eyes facing entity @p[distance=..12,gamemode=survival] eyes run function sp:raycast/non_player
execute as @e[type=pillager,tag=gun] at @s run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..12,gamemode=survival] ~ ~ ~ 0.5 2

# piglin ruler
execute as @e[type=piglin_brute,tag=boss] at @s facing entity @p[distance=..16,gamemode=survival] eyes run function sp:abilities/throw
execute as @e[type=piglin_brute,tag=boss] at @s as @e[type=zombified_piglin,distance=..32] run data modify entity @s AngryAt set from entity @p[distance=..32,gamemode=survival] UUID
execute as @e[type=piglin_brute,tag=boss] at @s as @e[type=zombified_piglin,distance=..32] run data modify entity @s AngerTime set value 100

# death handler
scoreboard players remove @a[scores={ded_timer=0..}] ded_timer 1
title @a[scores={ded_timer=0..}] title {"color":"red","score":{"name":"*","objective":"ded_timer"}}
execute as @a[scores={ded_timer=0}] run function sp:respawn