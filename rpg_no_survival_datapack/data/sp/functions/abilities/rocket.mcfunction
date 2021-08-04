scoreboard players set @s rocket_cd 300
execute in sp:void positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^2 {UUID:[I;0,0,0,0],Duration:1}
execute anchored eyes run summon snowball ^ ^ ^ {Tags:["launch"],Item:{id:"minecraft:tnt",Count:1b,tag:{spball:1b}}}
data modify entity @e[type=snowball,limit=1,tag=launch] Motion set from entity 0-0-0-0-0 Pos
data modify entity @e[type=snowball,limit=1,tag=launch] Owner set from entity @s UUID
tag @e[type=snowball,limit=1,tag=launch] remove launch
kill 0-0-0-0-0
playsound minecraft:entity.zombie.attack_wooden_door master @a[distance=..16] ~ ~ ~ 1 0