tag @s remove burst

# custom range values
scoreboard players set @s[tag=minigun] raycast 96
scoreboard players set @s[tag=ultimate_ar] raycast 256

execute store result score @s ammo run clear @s iron_nugget 0
execute if score @s ammo matches 1.. unless score gungame.infinite_ammo config matches 1 run clear @s[tag=!ultimate_ar] iron_nugget 1
execute if score @s[tag=!minigun,tag=!ultimate_ar] ammo matches 1.. run function sp:raycast/begin
execute if score @s[tag=minigun] ammo matches 1.. run function sp:raycast/minigun
execute if entity @s[tag=ultimate_ar] run function sp:raycast/begin

tag @s remove minigun
tag @s remove ultimate_ar