scoreboard players set @s shieldtime 100
playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 1 2
particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.5 0.5 0.5 2 100 force
data merge entity @s {Invulnerable:1b}
function sp:abilities/shield_deplete