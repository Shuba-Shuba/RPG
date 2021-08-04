summon snowball ~ ~ ~ {Tags:["spball","init"],Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spitem"]}],power:[0.0d,0.0d,0.0d]}
data modify entity @e[type=snowball,tag=spball,tag=init,limit=1] Owner set from entity @s Owner
data modify entity @e[type=snowball,tag=spball,tag=init,limit=1] Motion set from entity @s Motion
data merge entity @e[type=snowball,tag=spball,tag=init,limit=1] {Item:{id:"minecraft:tnt",Count:1b}}
tag @e[type=snowball,tag=spball,tag=init,limit=1] remove init

kill @s