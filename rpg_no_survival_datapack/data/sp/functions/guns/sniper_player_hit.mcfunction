execute store result score output.damage calc if entity @p[tag=user] run data get entity @e[type=item,tag=user,limit=1] Item.tag.DamageRPG 10
scoreboard players operation output.damage calc /= integers.10 calc
scoreboard players operation @s damage += output.damage calc
scoreboard players operation @s sourceUUID0 = @p[tag=user] UUID0
scoreboard players operation @s sourceUUID1 = @p[tag=user] UUID1
scoreboard players operation @s sourceUUID2 = @p[tag=user] UUID2
scoreboard players operation @s sourceUUID3 = @p[tag=user] UUID3
execute as @p[tag=user] at @s run playsound minecraft:guns.hit master @s
particle dust 1 0 0 1 ~.9 ~.9 ~.9 0.4 0.4 0.4 5 50 force @p[tag=user]
scoreboard players set @s hit 6