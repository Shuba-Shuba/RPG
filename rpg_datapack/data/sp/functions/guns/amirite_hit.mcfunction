kill @s
summon tnt
execute as @e[type=zombie,limit=1,tag=amirite_boss] store result score @s dynamic_health run data get entity @s Health 1
execute as @e[type=zombie,limit=1,tag=amirite_boss] run scoreboard players remove @s dynamic_health 5
execute as @e[type=zombie,limit=1,tag=amirite_boss] store result entity @s Health float 1 run scoreboard players get @s dynamic_health