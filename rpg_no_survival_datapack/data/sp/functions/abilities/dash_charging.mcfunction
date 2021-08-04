scoreboard players remove @s dash_charge 1
execute if score @s dash_charge matches 1.. run schedule function sp:abilities/dash_charging_setup 2t
execute if score @s dash_charge matches 19 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.95 0.95 0.95 1 100 force
execute if score @s dash_charge matches 18 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.9 0.9 0.9 1 100 force
execute if score @s dash_charge matches 17 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.85 0.85 0.85 1 100 force
execute if score @s dash_charge matches 16 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.8 0.8 0.8 1 100 force
execute if score @s dash_charge matches 15 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.75 0.75 0.75 1 100 force
execute if score @s dash_charge matches 14 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.7 0.7 0.7 1 100 force
execute if score @s dash_charge matches 13 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.65 0.65 0.65 1 100 force
execute if score @s dash_charge matches 12 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.6 0.6 0.6 1 100 force
execute if score @s dash_charge matches 11 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.55 0.55 0.55 1 100 force
execute if score @s dash_charge matches 10 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.5 0.5 0.5 1 100 force
execute if score @s dash_charge matches 9 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.45 0.45 0.45 1 100 force
execute if score @s dash_charge matches 8 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.4 0.4 0.4 1 100 force
execute if score @s dash_charge matches 7 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.35 0.35 0.35 1 100 force
execute if score @s dash_charge matches 6 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.3 0.3 0.3 1 100 force
execute if score @s dash_charge matches 5 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.25 0.25 0.25 1 100 force
execute if score @s dash_charge matches 4 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.2 0.2 0.2 1 100 force
execute if score @s dash_charge matches 3 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.15 0.15 0.15 1 100 force
execute if score @s dash_charge matches 2 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.1 0.1 0.1 1 100 force
execute if score @s dash_charge matches 1 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.05 0.05 0.05 1 100 force
execute if score @s dash_charge matches 0 run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.0 0.0 0.0 1 100 force
execute if score @s dash_charge matches 0 run scoreboard players set @s dashtime 6
execute if score @s dash_charge matches 0 run data remove entity @s NoAI