scoreboard players set @s arrow_cd 3
execute store result score @s ammo run clear @s arrow 0
execute if score @s ammo matches 1.. unless score gungame.infinite_ammo config matches 1 run clear @s arrow 1
execute if score @s ammo matches 1.. run function sp:abilities/arrow
execute unless data entity @s {SelectedItem:{tag:{rpgdisplay:1}}} run item entity @s weapon.mainhand modify sp:ranged_display