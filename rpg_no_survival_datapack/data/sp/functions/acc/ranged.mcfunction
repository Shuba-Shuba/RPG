execute store result score @s ranged_atk1 run data get entity @s Inventory[{Slot:9b}].tag.RangedRPG
execute store result score @s ranged_atk2 run data get entity @s Inventory[{Slot:10b}].tag.RangedRPG
execute store result score @s ranged_atk3 run data get entity @s Inventory[{Slot:11b}].tag.RangedRPG
execute store result score @s ranged_atk4 run data get entity @s Inventory[{Slot:12b}].tag.RangedRPG
execute store result score @s ranged_atk5 run data get entity @s Inventory[{Slot:13b}].tag.RangedRPG
scoreboard players operation @s ranged_atk = @s ranged_perm
scoreboard players operation @s ranged_atk += @s ranged_atk1
scoreboard players operation @s ranged_atk += @s ranged_atk2
scoreboard players operation @s ranged_atk += @s ranged_atk3
scoreboard players operation @s ranged_atk += @s ranged_atk4
scoreboard players operation @s ranged_atk += @s ranged_atk5