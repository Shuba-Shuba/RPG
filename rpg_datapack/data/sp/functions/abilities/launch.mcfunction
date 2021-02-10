execute if data entity @s {SelectedItem:{id:"minecraft:fire_charge"}} run clear @s fire_charge 1
execute in minecraft:overworld positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^2 {UUID:[I;0,0,0,0],Duration:1}
execute anchored eyes run summon fireball ^ ^ ^ {Tags:["launch","spball"],ExplosionPower:2b,NoGravity:1b}
data modify entity @e[type=fireball,limit=1,tag=launch] Motion set from entity 0-0-0-0-0 Pos
data modify entity @e[type=fireball,limit=1,tag=launch] Owner set from entity @s UUID
tag @e[type=fireball,limit=1,tag=launch] remove launch
kill 0-0-0-0-0
schedule function sp:save_motion 3t