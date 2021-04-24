execute as @e[type=snowball,tag=!spball,nbt={Item:{tag:{spball:1b}}}] at @s run function sp:found_ball
execute as @e[type=area_effect_cloud,tag=spitem] unless predicate sp:is_riding_snowball at @s run function sp:landed
execute as @e[type=arrow,tag=!spball,nbt={CustomPotionEffects:[{Id:13b,Amplifier:28b}]}] at @s run function sp:found_arrow

execute as @e[type=snowball,tag=spball] run function sp:vis_fix
execute as @e[type=fireball,tag=spball] run function sp:vis_fix
execute as @e[type=armor_stand,tag=animate] run function sp:vis_fix
scoreboard players operation .global visfix *= .-1 visfix

execute as @e[type=fireball,tag=spball,tag=spfire] run function sp:motion_fix
scoreboard players add @e[type=fireball,tag=spball,tag=spfire] life 1
kill @e[type=fireball,tag=spball,tag=spfire,scores={life=300..}]