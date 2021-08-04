execute as @e[type=!#sp:protect,distance=..7] at @s run summon lightning_bolt ~ ~ ~
execute as @a[distance=..7] at @s run summon lightning_bolt ~ ~ ~
execute as @e[type=!#sp:protect,distance=..7] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~
execute as @a[distance=..7] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~
summon lightning_bolt ~ ~ ~
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~