execute if entity @s[type=!arrow] store result score %level arrow run data get entity @s ActiveEffects[{Id:13b}].Amplifier
execute if entity @s[type=arrow] store result score %level arrow run data get entity @s CustomPotionEffects[0].Amplifier

execute if score %level arrow matches 27 at @s run function sp:landed
execute if score %level arrow matches 26 at @s run function sp:arrows/lightning

kill @s[type=arrow]