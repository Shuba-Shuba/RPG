xp add @s -3
scoreboard players remove tmp.mana evoker_init 1
execute if score tmp.mana evoker_init matches 0 run function sp:abilities/evoker_start
execute if score tmp.mana evoker_init matches 1.. run function sp:abilities/evoker_mana