scoreboard players remove @s raycast 1
tag @s add user
tag @s add dealt
execute unless entity @a[distance=..3,tag=user] run particle crit ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[type=!#sp:protect,distance=..10] store result score @s dynamic_health run data get entity @s Health 10
execute as @e[type=!#sp:protect,dx=0,limit=1,sort=nearest,scores={hit=0},nbt=!{Invulnerable:1b}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run execute store result score output.damage calc if entity @p[tag=user] run data get entity @e[type=item,tag=user,limit=1] Item.tag.DamageRPG 10
execute as @e[type=!#sp:protect,dx=0,limit=1,sort=nearest,scores={hit=0},nbt=!{Invulnerable:1b}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run particle dust 1 0 0 1 ~.9 ~.9 ~.9 0.4 0.4 0.4 5 50 force @p[tag=user]
execute as @e[type=!#sp:protect,dx=0,limit=1,sort=nearest,scores={hit=0},nbt=!{Invulnerable:1b}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] at @p[tag=user] run playsound minecraft:guns.hit master @p[tag=user]
execute as @e[type=!#sp:protect,dx=0,limit=1,sort=nearest,scores={hit=0},nbt=!{Invulnerable:1b}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run scoreboard players operation @s dynamic_health -= output.damage calc
execute as @e[type=!#sp:protect,dx=0,limit=1,sort=nearest,scores={hit=0},nbt=!{Invulnerable:1b}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] if score @s dynamic_health matches ..0 run kill @s[type=!ender_dragon]
execute as @e[type=!#sp:protect,dx=0,limit=1,sort=nearest,scores={hit=0},nbt=!{Invulnerable:1b}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] if score @s dynamic_health matches ..0 run data merge entity @s[type=ender_dragon] {DragonPhase:9}
execute as @e[type=!#sp:protect,dx=0,limit=1,sort=nearest,scores={hit=0},nbt=!{Invulnerable:1b}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] store result entity @s Health float 0.1 run scoreboard players get @s dynamic_health
execute as @e[type=!#sp:protect,dx=0,limit=1,sort=nearest,scores={hit=0},nbt=!{Invulnerable:1b}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run scoreboard players set @s hit 6
execute as @a[dx=0,limit=1,sort=nearest,tag=!user,nbt={DeathTime:0s},gamemode=!spectator,gamemode=!creative,scores={hit=0}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run execute store result score output.damage calc if entity @p[tag=user] run data get entity @e[type=item,tag=user,limit=1] Item.tag.DamageRPG 10
execute as @a[dx=0,limit=1,sort=nearest,tag=!user,nbt={DeathTime:0s},gamemode=!spectator,gamemode=!creative,scores={hit=0}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run scoreboard players operation output.damage calc /= integers.10 calc
execute as @a[dx=0,limit=1,sort=nearest,tag=!user,nbt={DeathTime:0s},gamemode=!spectator,gamemode=!creative,scores={hit=0}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run scoreboard players operation @s damage = output.damage calc
execute as @a[dx=0,limit=1,sort=nearest,tag=!user,nbt={DeathTime:0s},gamemode=!spectator,gamemode=!creative,scores={hit=0}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] if score @s damage >= @s health run function sp:player_damage
execute as @a[dx=0,limit=1,sort=nearest,tag=!user,nbt={DeathTime:0s},gamemode=!spectator,gamemode=!creative,scores={hit=0}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] at @p[tag=user] run playsound minecraft:guns.hit master @p[tag=user]
execute as @a[dx=0,limit=1,sort=nearest,tag=!user,nbt={DeathTime:0s},gamemode=!spectator,gamemode=!creative,scores={hit=0}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run particle dust 1 0 0 1 ~.9 ~.9 ~.9 0.4 0.4 0.4 5 50 force @p[tag=user]
execute as @a[dx=0,limit=1,sort=nearest,tag=!user,nbt={DeathTime:0s},gamemode=!spectator,gamemode=!creative,scores={hit=0}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run scoreboard players set @s hit 6
execute as @e[type=armor_stand,dx=0,limit=1,sort=nearest,tag=dummy,scores={hit=0}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run execute store result score output.damage calc if entity @p[tag=user] run data get entity @e[type=item,tag=user,limit=1] Item.tag.DamageRPG 10
execute as @e[type=armor_stand,dx=0,limit=1,sort=nearest,tag=dummy,scores={hit=0}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] at @p[tag=user] run playsound minecraft:guns.hit master @p[tag=user]
execute as @e[type=armor_stand,dx=0,limit=1,sort=nearest,tag=dummy,scores={hit=0}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run particle dust 1 0 0 1 ~.9 ~.9 ~.9 0.4 0.4 0.4 5 50 force @p[tag=user]
execute as @e[type=armor_stand,dx=0,limit=1,sort=nearest,tag=dummy,scores={hit=0}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~.9 ~.9 ~.9 run function damage:damage/indicator
execute as @e[type=armor_stand,dx=0,limit=1,sort=nearest,tag=dummy,scores={hit=0}] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run scoreboard players set @s hit 6
execute if score @s raycast matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #sp:passthrough run function sp:raycast/sniper
tag @s remove user
tag @s remove dealt