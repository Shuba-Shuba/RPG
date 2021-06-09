scoreboard players set @s shotgun_cd 20
execute store result score @s ammo run clear @s iron_nugget 0
execute if score @s ammo matches 4.. unless score gungame.infinite_ammo config matches 1 run clear @s iron_nugget 4
execute if score @s ammo matches 4.. unless score gungame.infinite_ammo config matches 1 run function sp:raycast/shotgun
execute if score gungame.infinite_ammo config matches 1 run function sp:raycast/shotgun