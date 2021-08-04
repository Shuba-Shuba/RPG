scoreboard players remove @s raycast 1
tag @s add user
execute unless entity @a[distance=..3,tag=user] run particle dust 1 0.65 0.3 1 ~ ~ ~ 0 0 0 0 3 normal @a
execute if score @s raycast matches 1.. positioned ^ ^ ^0.25 unless block ~ ~ ~ #sp:passthrough run function sp:portal/orange_hit
execute if score @s raycast matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #sp:passthrough run function sp:raycast/portal_orange
tag @s remove user