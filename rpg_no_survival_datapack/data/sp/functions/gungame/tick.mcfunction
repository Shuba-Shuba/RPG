scoreboard players add @a tier 0
execute as @a[scores={kill=1..}] at @s run function sp:gungame/tier
execute as @a[scores={gungame_kill=1..}] at @s run function sp:gungame/tier