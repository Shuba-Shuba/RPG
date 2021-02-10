summon evoker_fangs
scoreboard players remove @s evoker 1
execute positioned ^ ^ ^1.25 if score @s evoker matches 1.. run function sp:abilities/evoker_loop