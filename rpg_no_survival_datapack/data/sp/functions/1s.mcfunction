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

# amirite boss stage 1
execute as @e[tag=amirite_boss,limit=1] store result score @s dynamic_health run data get entity @s Health 1
scoreboard players operation @e[tag=amirite_boss,limit=1] dynamic_health += %crystals final
execute as @e[tag=amirite_boss,limit=1] store result entity @s Health float 1 run scoreboard players get @s dynamic_health
execute if score %crystals final matches 0 if score %index final matches 2 if score @e[tag=amirite_boss,limit=1] dynamic_health matches ..100 run function sp:final/stage_2

# amirite boss stage 2
execute if score %index final matches 3.. as @e[tag=amirite_boss,limit=1] store result score @s dynamic_health run data get entity @s Health 1
execute if score %index final matches 3.. run scoreboard players add @e[tag=amirite_boss,limit=1] dynamic_health 3
execute if score %index final matches 3.. as @e[tag=amirite_boss,limit=1] store result entity @s Health float 1 run scoreboard players get @s dynamic_health
execute as @e[tag=amirite_boss] at @s run scoreboard players set @s raycast 128
execute as @e[tag=amirite_boss] at @s anchored eyes run function sp:raycast/non_player
execute as @e[tag=amirite_boss] at @s run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..12,gamemode=survival] ~ ~ ~ 0.5 2
execute if score %crystals final matches 0 if score %index final matches 3 if score @e[tag=amirite_boss,limit=1] dynamic_health matches ..50 run function sp:final/stage_3