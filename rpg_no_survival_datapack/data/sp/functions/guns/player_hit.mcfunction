# calculate damage
function sp:guns/calc
scoreboard players operation output.damage calc /= integers.10 calc
scoreboard players operation output.damage calc > integers.1 calc

# ADD output damage to target damage score, NOT SET!!! (this is in case the target gets damaged multiple times per tick)
scoreboard players operation @s damage += output.damage calc

# add to damage combo score
scoreboard players operation @p[tag=user] combo += output.damage calc

# stop raycast and run hit effects
scoreboard players set @p[tag=user] raycast 0
execute at @p[tag=user] run playsound minecraft:guns.hit master @p[tag=user]
particle dust 1 0 0 1 ~.9 ~.9 ~.9 0.4 0.4 0.4 5 50 force @a

# DON'T run damage handler
#function sp:player_damage

# give target 6 invincibility ticks from RPG damage
scoreboard players set @s hit 6

# store UUID of damage source and wait for next tick to run damage handler
scoreboard players operation @s sourceUUID0 = @p[tag=user] UUID0
scoreboard players operation @s sourceUUID1 = @p[tag=user] UUID1
scoreboard players operation @s sourceUUID2 = @p[tag=user] UUID2
scoreboard players operation @s sourceUUID3 = @p[tag=user] UUID3