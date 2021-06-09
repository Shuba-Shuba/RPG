execute store result score #tmp calc run data get entity @s SelectedItem.tag.RangedPermRPG
scoreboard players operation @s ranged_perm += #tmp calc
item replace entity @s weapon.mainhand with air
tellraw @s ["Increased ranged damage boost by ",{"score":{"name":"#tmp","objective":"calc"}},".\nTotal ranged damage boost: ",{"score":{"name":"*","objective":"ranged_perm"}}," (not including accessories)"]