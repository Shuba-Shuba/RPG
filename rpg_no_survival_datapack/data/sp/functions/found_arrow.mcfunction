summon fireball ~ ~ ~ {Tags:["spball","init"],power:[0.0d,0.0d,0.0d]}
data modify entity @e[type=fireball,tag=spball,tag=init,limit=1] Owner set from entity @s Owner
data modify entity @e[type=fireball,tag=spball,tag=init,limit=1] Motion set from entity @s Motion
data modify entity @e[type=fireball,tag=spball,tag=init,limit=1] ExplosionPower set value 2
schedule function sp:save_motion 5t
tag @e[type=fireball,tag=spball,tag=init,limit=1] remove init

kill @s