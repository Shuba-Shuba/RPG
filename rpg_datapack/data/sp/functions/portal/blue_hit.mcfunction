# destroy previous blue portal if it exists
execute if score portals.universal config matches 0 as @e[type=marker,tag=portal_blue] if score @s UUID0 = @p[tag=user] UUID0 if score @s UUID1 = @p[tag=user] UUID1 if score @s UUID2 = @p[tag=user] UUID2 if score @s UUID3 = @p[tag=user] UUID3 run kill @s
execute if score portals.universal config matches 1 run kill @e[type=marker,tag=portal_blue]

# spawn blue portal
execute align xyz run summon marker ~.5 ~1 ~.5 {Tags:["portal_blue"]}
scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=portal_blue] UUID0 = @s UUID0
scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=portal_blue] UUID1 = @s UUID1
scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=portal_blue] UUID2 = @s UUID2
scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=portal_blue] UUID3 = @s UUID3