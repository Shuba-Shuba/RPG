data merge entity @s {NoAI:1b}
scoreboard players set @s dash_charge 20
particle minecraft:dust 1 0 1 1 ~ ~1 ~ 1 1 1 1 100 force
function sp:abilities/dash_charging
tp @s ~ ~ ~ facing entity @p[distance=..16,gamemode=survival]