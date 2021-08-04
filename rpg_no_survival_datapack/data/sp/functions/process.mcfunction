tag @s add bow_processed
data merge entity @s {CustomPotionEffects:[{Id:13b,Duration:1,Amplifier:0b}]}
execute store result entity @s CustomPotionEffects[0].Amplifier byte 1 run scoreboard players get @e[type=!arrow,limit=1,sort=nearest,scores={bow=1..}] bow