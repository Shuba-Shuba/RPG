execute in sp:void positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^2 {UUID:[I;0,0,0,0],Duration:1}
execute anchored eyes run summon arrow ^ ^ ^ {Tags:["launch"]}
data modify entity @e[type=arrow,limit=1,tag=launch] Motion set from entity 0-0-0-0-0 Pos
data modify entity @e[type=arrow,limit=1,tag=launch] Owner set from entity @s UUID
data modify entity @e[type=arrow,limit=1,tag=launch] damage set from entity @s SelectedItem.tag.DamageRPG
tag @e[type=arrow,limit=1,tag=launch] remove launch
kill 0-0-0-0-0
playsound minecraft:entity.arrow.shoot master @s