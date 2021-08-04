function sp:axe/calc
scoreboard players operation output.damage calc /= integers.10 calc
scoreboard players operation output.damage calc > integers.1 calc
scoreboard players operation @s damage = output.damage calc
scoreboard players operation @p[tag=user] combo += output.damage calc
execute if score @s damage >= @s health run function sp:player_damage
scoreboard players set @p[tag=user] raycast 0
execute at @p[tag=user] run playsound minecraft:guns.hit master @p[tag=user]
particle dust 1 0 0 1 ~ ~ ~ 0.4 0.4 0.4 5 50 force @p[tag=user]
scoreboard players set @s hit 6