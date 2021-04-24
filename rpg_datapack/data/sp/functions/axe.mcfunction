execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players add @s rotation 25
function sp:axe/search
execute as @e[type=!#sp:protect,distance=..10] store result score @s dynamic_health run data get entity @s Health 10
execute as @e[type=!#sp:protect,scores={hit=0},distance=..2,tag=!user,nbt=!{Invulnerable:1b}] run function sp:axe/entity
execute as @a[scores={hit=0},distance=..2,tag=!user,gamemode=!creative,gamemode=!spectator] run function sp:axe/player
tag @e remove user
tag @e remove dealt