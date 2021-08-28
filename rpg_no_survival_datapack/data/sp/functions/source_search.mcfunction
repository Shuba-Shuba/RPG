# remove previous tags
tag @a remove user
tag @a remove dealt

# copy source UUID to "memory"
scoreboard players operation %system UUID0 = @s sourceUUID0
scoreboard players operation %system UUID1 = @s sourceUUID1
scoreboard players operation %system UUID2 = @s sourceUUID2
scoreboard players operation %system UUID3 = @s sourceUUID3

# search for player with matching UUID and mark them as the damage source
execute as @a if score @s UUID0 = %system UUID0 if score @s UUID1 = %system UUID1 if score @s UUID2 = %system UUID2 if score @s UUID3 = %system UUID3 run tag @s add dealt