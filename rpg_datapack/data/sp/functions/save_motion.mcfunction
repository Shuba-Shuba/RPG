execute as @e[type=fireball,tag=spball] store result score @s motion0 run data get entity @s Motion[0] 1000
execute as @e[type=fireball,tag=spball] store result score @s motion1 run data get entity @s Motion[1] 1000
execute as @e[type=fireball,tag=spball] store result score @s motion2 run data get entity @s Motion[2] 1000
tag @e[type=fireball,tag=spball,tag=!spfire] add spfire