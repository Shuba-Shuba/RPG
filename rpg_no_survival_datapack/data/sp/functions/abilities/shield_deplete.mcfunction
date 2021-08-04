scoreboard players remove @s shieldtime 1
execute if score @s shieldtime matches 1.. run schedule function sp:abilities/shield_deplete_setup 1t
execute if score @s shieldtime matches 0 run data remove entity @s Invulnerable
particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.5 0.5 0.5 2 20 force