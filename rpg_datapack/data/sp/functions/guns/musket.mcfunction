execute store result score @s ammo run clear @s iron_nugget 0
execute if score @s ammo matches 1.. unless score gungame.infinite_ammo config matches 1 run clear @s iron_nugget 1
execute if score @s ammo matches 1.. run playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~ 0.5 2 0.5
execute if score @s ammo matches 1.. unless data entity @s {SelectedItem:{tag:{rpgdisplay:1}}} run item entity @s weapon.mainhand modify sp:ranged_display
execute if score @s ammo matches 1.. run tag @s add user
execute if score @s ammo matches 1.. anchored eyes run summon area_effect_cloud ~ ~ ~ {Tags:["bounce","init"],Duration:32767}
execute if score @s ammo matches 1.. anchored eyes run tp @e[type=area_effect_cloud,tag=bounce,tag=init] ~ ~ ~ ~ ~
execute if score @s ammo matches 1.. run scoreboard players set @e[type=area_effect_cloud,tag=bounce,tag=init] raycast 512
execute if score @s ammo matches 1.. run scoreboard players set @s musket_cd 20
execute if score @s ammo matches 1.. run scoreboard players set @e[type=area_effect_cloud,tag=bounce,tag=init] bounce 4
execute if score @s ammo matches 1.. as @e[type=area_effect_cloud,tag=bounce,tag=init] run scoreboard players operation @s UUID0 = @p[tag=user] UUID0
execute if score @s ammo matches 1.. as @e[type=area_effect_cloud,tag=bounce,tag=init] run scoreboard players operation @s UUID1 = @p[tag=user] UUID1
execute if score @s ammo matches 1.. as @e[type=area_effect_cloud,tag=bounce,tag=init] run scoreboard players operation @s UUID2 = @p[tag=user] UUID2
execute if score @s ammo matches 1.. as @e[type=area_effect_cloud,tag=bounce,tag=init] run scoreboard players operation @s UUID3 = @p[tag=user] UUID3
execute if score @s ammo matches 1.. run tag @e[type=area_effect_cloud,tag=bounce,tag=init] remove init
execute if score @s ammo matches 1.. run tag @s remove user
execute if score @s ammo matches 1.. anchored eyes as @e[type=area_effect_cloud,tag=bounce] at @s positioned ~ ~1.5 ~ run function sp:raycast/musket