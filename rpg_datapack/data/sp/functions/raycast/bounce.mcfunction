scoreboard players remove @p[tag=user] bounce 1
execute store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute rotated as @s positioned ~ ~0.5 ~ run function sp:raycast/musket
playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 1 2