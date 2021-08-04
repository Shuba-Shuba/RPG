scoreboard players operation @s log.oak += @s log.spruce
scoreboard players operation @s log.oak += @s log.birch
scoreboard players operation @s log.oak += @s log.jungle
scoreboard players operation @s log.oak += @s log.acacia
scoreboard players operation @s log.oak += @s log.dark_oak
execute if score @s log.oak matches 1.. if data entity @s {SelectedItem:{tag:{AbilityRPG:020}}} at @s run function sp:break