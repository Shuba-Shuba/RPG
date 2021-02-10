particle minecraft:crit ~ ~1 ~
execute if block ^ ^ ^1 #sp:passthrough if block ^ ^ ^2 #sp:passthrough if block ^ ^ ^3 #sp:passthrough run tp ^ ^ ^2
scoreboard players remove @s dashtime 1
execute unless block ^ ^ ^1 #sp:passthrough run scoreboard players set @s dashtime 0
execute unless block ^ ^ ^2 #sp:passthrough run scoreboard players set @s dashtime 0
execute unless block ^ ^ ^3 #sp:passthrough run scoreboard players set @s dashtime 0