# initial shot
scoreboard players set @s raycast 64
execute store result score @s ammo run clear @s iron_nugget 0
execute if score @s ammo matches 1.. unless score gungame.infinite_ammo config matches 1 run clear @s iron_nugget 1
execute if score @s ammo matches 1.. run effect give @s slowness 1 2 true
execute if score @s ammo matches 1.. run function sp:raycast/minigun

# schedule 2nd shot
tag @s add burst
tag @s add minigun
schedule function sp:guns/burst_prep 3t append