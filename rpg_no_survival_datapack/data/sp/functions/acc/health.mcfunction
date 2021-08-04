execute store result score @s health_att1 run data get entity @s Inventory[{Slot:9b}].tag.HealthRPG
execute store result score @s health_att2 run data get entity @s Inventory[{Slot:10b}].tag.HealthRPG
execute store result score @s health_att3 run data get entity @s Inventory[{Slot:11b}].tag.HealthRPG
execute store result score @s health_att4 run data get entity @s Inventory[{Slot:12b}].tag.HealthRPG
execute store result score @s health_att5 run data get entity @s Inventory[{Slot:13b}].tag.HealthRPG
scoreboard players set @s health_att 0
scoreboard players operation @s health_att += @s health_att1
scoreboard players operation @s health_att += @s health_att2
scoreboard players operation @s health_att += @s health_att3
scoreboard players operation @s health_att += @s health_att4
scoreboard players operation @s health_att += @s health_att5
function sp:player_health