tag @s add user
scoreboard players set @s axe_cd 8
execute in sp:void positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1.5 {UUID:[I;0,0,0,0],Duration:1}
execute anchored eyes run summon armor_stand ^ ^ ^ {Tags:["animate","launch"],HandItems:[{id:"minecraft:golden_axe",Count:1b},{}],Pose:{RightArm:[0f,0f,0f]},Invisible:1b,Small:1b,CustomName:'"Throwable Axe"'}
execute store result score @s rotation run data get entity @s Rotation[0] 1
scoreboard players remove @s rotation 0
execute store result entity @e[type=armor_stand,limit=1,tag=launch] Pose.RightArm[1] float 1 run scoreboard players get @s rotation
execute store result score @s rotation run data get entity @s Rotation[1] 1
scoreboard players remove @s rotation 90
execute store result entity @e[type=armor_stand,limit=1,tag=launch] Pose.RightArm[0] float 1 run scoreboard players get @s rotation
execute store result score @e[type=armor_stand,limit=1,tag=launch] rotation run data get entity @e[type=armor_stand,limit=1,tag=launch] Pose.RightArm[0] 1
data modify entity @e[type=armor_stand,limit=1,tag=launch] Motion set from entity 0-0-0-0-0 Pos
data modify entity @e[type=armor_stand,limit=1,tag=launch] Owner set from entity @s UUID
execute as @e[type=armor_stand,limit=1,tag=launch] run scoreboard players operation @s UUID0 = @e[tag=user,limit=1,sort=nearest] UUID0
execute as @e[type=armor_stand,limit=1,tag=launch] run scoreboard players operation @s UUID1 = @e[tag=user,limit=1,sort=nearest] UUID1
execute as @e[type=armor_stand,limit=1,tag=launch] run scoreboard players operation @s UUID2 = @e[tag=user,limit=1,sort=nearest] UUID2
execute as @e[type=armor_stand,limit=1,tag=launch] run scoreboard players operation @s UUID3 = @e[tag=user,limit=1,sort=nearest] UUID3
scoreboard players set @s axe_damage 10
tag @e[type=armor_stand,limit=1,tag=launch] remove launch
kill 0-0-0-0-0
tag @s remove user