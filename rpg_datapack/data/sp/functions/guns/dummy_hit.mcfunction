function sp:guns/calc
scoreboard players set @p[tag=user] raycast 0
execute at @p[tag=user] run playsound minecraft:guns.hit master @p[tag=user]
particle dust 1 0 0 1 ~.9 ~.9 ~.9 0.4 0.4 0.4 5 50 force @p[tag=user]
execute positioned ~.9 ~.9 ~.9 run function damage:damage/indicator
scoreboard players operation @p[tag=user] combo += output.damage calc
scoreboard players set @s hit 6