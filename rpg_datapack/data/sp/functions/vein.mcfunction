setblock ~ ~ ~ air destroy
xp add @s -1
execute if score @s mana matches 0 run tellraw @s {"text":"Not enough mana to mine vein","color":"red"}
scoreboard players add %cap vein 1
execute positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:logs if score @s mana matches 1.. unless score %cap vein matches 256.. run function sp:vein
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:logs if score @s mana matches 1.. unless score %cap vein matches 256.. run function sp:vein
execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:logs if score @s mana matches 1.. unless score %cap vein matches 256.. run function sp:vein
execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:logs if score @s mana matches 1.. unless score %cap vein matches 256.. run function sp:vein
execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:logs if score @s mana matches 1.. unless score %cap vein matches 256.. run function sp:vein
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:logs if score @s mana matches 1.. unless score %cap vein matches 256.. run function sp:vein
execute if score %cap vein matches 256.. run tellraw @s {"text":"Maximum vein size is 256 blocks","color":"red"}
execute if score %cap vein matches 256.. run scoreboard players set %cap vein 0