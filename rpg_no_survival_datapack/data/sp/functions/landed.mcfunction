kill @s
execute store result score mobGriefing gamerule run gamerule mobGriefing
gamerule mobGriefing false
summon creeper ~ ~ ~ {Fuse:0,ignited:1b,CustomName:'"The Nuclear Option"',ExplosionRadius:4b}
execute if score mobGriefing gamerule matches 1 run schedule function sp:mobs 2t