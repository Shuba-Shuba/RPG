execute store result score @s ammo run clear @s tnt 0
execute if score @s ammo matches 1.. unless score gungame.infinite_ammo config matches 1 run clear @s tnt 1
execute if score @s ammo matches 1.. run function sp:abilities/rocket