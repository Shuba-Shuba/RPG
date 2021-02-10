scoreboard players set @s gungame_kill 0
scoreboard players set @s kill 0

execute if score @s tier matches 0 run function sp:give/minigun
execute if score @s tier matches 1 run function sp:give/sniper
execute if score @s tier matches 2 run function sp:give/shotgun
execute if score @s tier matches 3 run function sp:give/pistol
execute if score @s tier matches 4 run clear @s
execute if score @s tier matches 4 run give @s iron_sword
execute if score @s tier matches 5 run function sp:gungame/end

scoreboard players add @s tier 1