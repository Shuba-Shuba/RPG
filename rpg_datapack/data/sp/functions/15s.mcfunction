# army of skeletons
execute store result score minions.skeletons tower_boss_info if entity @e[type=skeleton,tag=tower_minion]
execute as @e[type=skeleton,tag=tower] at @s unless score minions.skeletons tower_boss_info matches 10.. run summon skeleton ~ ~ ~ {CanPickUpLoot:0b,Health:20f,HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,CustomModelData:11,Enchantments:[{id:"minecraft:power",lvl:4s}]}},{id:"minecraft:arrow",Count:64b}],HandDropChances:[0.000F,2.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:iron_helmet",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.movement_speed,Base:0.3}],Tags:["tower_minion"]}
execute store result score minions.skeletons tower_boss_info if entity @e[type=skeleton,tag=tower_minion]
execute if score minions.skeletons tower_boss_info matches 6.. as @e[type=skeleton,tag=tower] at @s run data merge entity @s {Health:100f}

# evoker boss
execute as @e[type=evoker,tag=boss] at @s unless score %4 prng2 matches 9 run summon pillager
execute as @e[type=evoker,tag=boss] at @s if score %4 prng2 matches 9 run summon vindicator