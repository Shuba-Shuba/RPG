scoreboard players set @s raycast 128
scoreboard players set @s ar_cooldown 3
execute store result score @s ammo run clear @s iron_nugget 0
execute if score @s ammo matches 1.. unless score gungame.infinite_ammo config matches 1 run clear @s iron_nugget 1
execute if score @s ammo matches 1.. unless score gungame.infinite_ammo config matches 1 run function sp:raycast/begin
execute if score gungame.infinite_ammo config matches 1 run function sp:raycast/begin