tellraw @a [{"selector":"@s"}," has won gun game!"]
clear @a
scoreboard players set @a tier 0
execute as @a at @s run function sp:give/rifle
kill @a