scoreboard players operation %system UUID0 = @s UUID0
scoreboard players operation %system UUID1 = @s UUID1
scoreboard players operation %system UUID2 = @s UUID2
scoreboard players operation %system UUID3 = @s UUID3
execute as @e if score @s UUID0 = %system UUID0 if score @s UUID1 = %system UUID1 if score @s UUID2 = %system UUID2 if score @s UUID3 = %system UUID3 run tag @s add user
tag @e[tag=user] add dealt