tag @s add this
scoreboard players remove @s raycast 1
execute if score @s raycast matches 1.. at @s run tp ^ ^ ^0.2
execute as @e[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 unless score @s hit_cooldown matches 1.. run function sp:slowcast/hit
tag @s remove this