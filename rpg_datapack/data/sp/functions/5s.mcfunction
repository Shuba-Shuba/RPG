# the epic one
execute as @e[type=zombie,tag=boss] at @s if score minions.chargers epic_boss_info matches ..2 if score minions.max_chargers epic_boss_info matches 1.. run summon zombie ~ ~ ~ {Health:7f,IsBaby:1b,Tags:["charger"],CustomName:'{"text":"charger boi"}',HandItems:[{id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b}}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_knockback,Base:1.5}]}
execute as @e[type=zombie,tag=boss] at @s if score minions.chargers epic_boss_info matches ..2 if score minions.max_chargers epic_boss_info matches 1.. run scoreboard players remove minions.max_chargers epic_boss_info 1
execute as @e[type=zombie,tag=boss] at @s if score minions.max_chargers epic_boss_info matches 0 if score boss.buff_stage epic_boss_info matches 1 run attribute @s generic.movement_speed modifier add 542d0aa3-a831-4608-b390-0781adfc7aaa NoMinionBuff 0.1 add
execute as @e[type=zombie,tag=boss] at @s if score minions.max_chargers epic_boss_info matches 0 if score boss.buff_stage epic_boss_info matches 1 run tellraw @a "STAGE 2:\nThe Epic One is now salty because he cannot summon any mroe minions. His saltiness has given him the power to move faster. Don't question it."
execute as @e[type=zombie,tag=boss] at @s if score minions.max_chargers epic_boss_info matches 0 if score boss.buff_stage epic_boss_info matches 1 run scoreboard players set boss.buff_stage epic_boss_info 2
execute as @e[type=zombie,tag=boss] at @s if score boss.health epic_boss_info matches ..10 if score boss.buff_stage epic_boss_info matches 2 run attribute @s generic.movement_speed modifier add 2c653aac-da3c-417a-b6c5-1dcb653930a8 50HealthSpeedBuff 0.1 add
execute as @e[type=zombie,tag=boss] at @s if score boss.health epic_boss_info matches ..10 if score boss.buff_stage epic_boss_info matches 2 run attribute @s generic.attack_damage modifier add 15dc2c4e-1e13-452a-934f-8051055585cb 50HealthAttackBuff 1.5 multiply
execute as @e[type=zombie,tag=boss] at @s if score boss.health epic_boss_info matches ..10 if score boss.buff_stage epic_boss_info matches 2 run tellraw @a "STAGE 3:\nThe Epic One is now below 10 health, giving him several buffs; he can move even faster, and his attack damage has been increased by 50%. He is now extremely hard to defeat; you have been warned."
execute as @e[type=zombie,tag=boss] at @s if score boss.health epic_boss_info matches ..10 if score boss.buff_stage epic_boss_info matches 2 run scoreboard players set boss.buff_stage epic_boss_info 3

# arch polar bear
execute as @e[type=polar_bear,tag=arch_polar_bear] at @s run data modify entity @s AngryAt set from entity @p[distance=..32] UUID