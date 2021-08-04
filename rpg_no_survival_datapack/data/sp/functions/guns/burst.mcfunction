tag @s remove burst

# custom range values
scoreboard players set @s[tag=minigun] raycast 96
scoreboard players set @s[tag=ultimate_ar] raycast 256

execute store result score @s ammo run clear @s iron_nugget 0
execute if score gungame.infinite_ammo config matches 1 run scoreboard players set @s ammo 1024
execute if score @s ammo matches 1.. unless score gungame.infinite_ammo config matches 1 run clear @s[tag=!ultimate_ar,tag=!rapid_rocket] iron_nugget 1
execute if score @s[tag=!minigun,tag=!ultimate_ar,tag=!rapid_rocket] ammo matches 1.. run function sp:raycast/begin
execute if score @s[tag=minigun] ammo matches 1.. run function sp:raycast/minigun
execute if entity @s[tag=ultimate_ar] run function sp:raycast/begin
execute if entity @s[tag=rapid_rocket] run function sp:abilities/rocket

tag @s remove minigun
tag @s remove ultimate_ar
tag @s remove rapid_rocket