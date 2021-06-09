scoreboard players add @e hit 0
execute as @e[type=marker,tag=bounce] at @s if score @s raycast matches 1.. rotated ~ ~0.2 positioned ^ ^ ^0.25 if block ~ ~ ~ #sp:passthrough run scoreboard players set @s tmp_raycast 8
execute as @e[type=marker,tag=bounce] at @s if score @s raycast matches 1.. rotated ~ ~0.2 positioned ^ ^ ^0.25 if block ~ ~ ~ #sp:passthrough run function sp:raycast/musket
scoreboard players remove @e[scores={hit=1..}] hit 1
execute unless entity @e[type=marker,tag=bounce] run scoreboard players reset * raycast
execute unless entity @e[type=marker,tag=bounce] run scoreboard players reset * tmp_raycast