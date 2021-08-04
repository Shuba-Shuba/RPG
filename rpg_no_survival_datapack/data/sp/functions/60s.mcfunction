# piglin ruler
execute as @e[type=piglin_brute,tag=boss] at @s run function sp:abilities/shield

# amirite boss stage 1
execute as @e[tag=amirite_boss] at @s run function sp:abilities/dash_charge
execute as @e[tag=amirite_boss] at @s run function sp:abilities/shield
execute as @e[tag=amirite_boss] at @s if score %index final matches 2 run function sp:abilities/missile

# amirite boss stage 3
execute as @e[tag=amirite_boss] at @s if score %index final matches 4.. run summon pillager ~ ~ ~ {CustomNameVisible:0b,Health:40f,CanJoinRaid:0b,Tags:["gun"],CustomName:'{"text":"Pillager Gunslinger"}',HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:11003,DamageRPG:14}},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.armor,Base:8}]}
execute as @e[tag=amirite_boss] at @s if score %index final matches 4.. run summon vex