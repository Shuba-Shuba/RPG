function sp:guns/calc
scoreboard players operation output.damage calc > integers.10 calc
scoreboard players set @p[tag=user] raycast 0
particle dust 1 0 0 1 ~.9 ~.9 ~.9 0.4 0.4 0.4 5 50 force @p[tag=user]
execute at @p[tag=user] run playsound minecraft:guns.hit master @p[tag=user]
scoreboard players operation @s dynamic_health -= output.damage calc
scoreboard players operation @p[tag=user] combo += output.damage calc
execute if score @s dynamic_health matches ..0 run kill @s[type=!ender_dragon]
execute if score @s dynamic_health matches ..0 run data merge entity @s[type=ender_dragon] {DragonPhase:9}
execute store result entity @s Health float 0.1 run scoreboard players get @s dynamic_health
scoreboard players set @s hit 6