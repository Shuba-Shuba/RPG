scoreboard players set @s raycast 96
scoreboard players set @s pistol_cd 8
execute store result score @s ammo run clear @s iron_nugget 0
execute if score @s ammo matches 1.. unless score gungame.infinite_ammo config matches 1 run clear @s iron_nugget 1
execute if score @s ammo matches 1.. run function sp:raycast/begin