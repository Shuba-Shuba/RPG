scoreboard players set @s armor_display 0
execute if score @s armor_toggle matches 1 run tag @s add armor_disable
execute unless score @s armor_toggle matches 1 run tag @s add armor_enable
scoreboard players set @s[tag=armor_disable] armor_toggle 0
scoreboard players set @s[tag=armor_enable] armor_toggle 1
tellraw @s[tag=armor_disable] "Disabled armor display."
tellraw @s[tag=armor_enable] "Enabled armor display."
tag @s remove armor_enable
tag @s remove armor_disable