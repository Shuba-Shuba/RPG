scoreboard players set @s raycast 96
scoreboard players set @s ender_cd 8
execute store result score @s ammo run clear @s iron_nugget 0
execute if score @s ammo matches 1.. unless score gungame.infinite_ammo config matches 1 run clear @s iron_nugget 1
execute if score @s ammo matches 1.. anchored eyes run function sp:raycast/ender
execute if score @s ammo matches 1.. run playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~ 0.5 2 0.5
execute unless data entity @s {SelectedItem:{tag:{rpgdisplay:1}}} run item entity @s weapon.mainhand modify sp:ranged_display