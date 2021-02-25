# initial setup
execute if score @s damage >= @s health run gamerule showDeathMessages false
execute if score @s damage >= @s health if entity @e[tag=dealt] run tellraw @a ["",{"selector":"@e[tag=dealt]"}," pwn'd ",{"selector":"@s"}]
execute if score @s damage >= @s health unless entity @e[tag=dealt] run tellraw @a ["",{"selector":"@s"}," commited die, this is a sad gamer moment"]
execute if score @s damage >= @s health run kill @s
execute if score @s damage >= @s health run scoreboard players add @a[tag=dealt] kill 1
execute if score @s damage >= @s health run gamerule showDeathMessages true
execute store result score calc.max_hp damage run attribute @s minecraft:generic.max_health get
scoreboard players operation calc.hp damage = @s health
scoreboard players operation calc.max_hp damage -= calc.hp damage
scoreboard players operation @s damage += calc.max_hp damage
scoreboard players operation input.damage damage = @s damage
execute if score input.damage damage matches 1024.. run scoreboard players set input.damage damage 1023

# calculate damage in binary and place modifiers
scoreboard players operation tmp.calc damage = input.damage damage
scoreboard players operation tmp.calc damage %= integers.2 calc
execute if score tmp.calc damage matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-0 d0 -1 add
scoreboard players operation input.damage damage /= integers.2 calc

scoreboard players operation tmp.calc damage = input.damage damage
scoreboard players operation tmp.calc damage %= integers.2 calc
execute if score tmp.calc damage matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-1 d1 -2 add
scoreboard players operation input.damage damage /= integers.2 calc

scoreboard players operation tmp.calc damage = input.damage damage
scoreboard players operation tmp.calc damage %= integers.2 calc
execute if score tmp.calc damage matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-2 d2 -4 add
scoreboard players operation input.damage damage /= integers.2 calc

scoreboard players operation tmp.calc damage = input.damage damage
scoreboard players operation tmp.calc damage %= integers.2 calc
execute if score tmp.calc damage matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-3 d3 -8 add
scoreboard players operation input.damage damage /= integers.2 calc

scoreboard players operation tmp.calc damage = input.damage damage
scoreboard players operation tmp.calc damage %= integers.2 calc
execute if score tmp.calc damage matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-4 d4 -16 add
scoreboard players operation input.damage damage /= integers.2 calc

scoreboard players operation tmp.calc damage = input.damage damage
scoreboard players operation tmp.calc damage %= integers.2 calc
execute if score tmp.calc damage matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-5 d5 -32 add
scoreboard players operation input.damage damage /= integers.2 calc

scoreboard players operation tmp.calc damage = input.damage damage
scoreboard players operation tmp.calc damage %= integers.2 calc
execute if score tmp.calc damage matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-6 d6 -64 add
scoreboard players operation input.damage damage /= integers.2 calc

scoreboard players operation tmp.calc damage = input.damage damage
scoreboard players operation tmp.calc damage %= integers.2 calc
execute if score tmp.calc damage matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-7 d7 -128 add
scoreboard players operation input.damage damage /= integers.2 calc

scoreboard players operation tmp.calc damage = input.damage damage
scoreboard players operation tmp.calc damage %= integers.2 calc
execute if score tmp.calc damage matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-8 d8 -256 add
scoreboard players operation input.damage damage /= integers.2 calc

scoreboard players operation tmp.calc damage = input.damage damage
scoreboard players operation tmp.calc damage %= integers.2 calc
execute if score tmp.calc damage matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-9 d9 -512 add

# inflict damage
execute at @s run playsound minecraft:entity.player.hurt player @a[distance=..16]
effect give @s minecraft:health_boost 1 255 true
effect clear @s minecraft:health_boost
scoreboard players set @s damage 0

# clean up modifiers
attribute @s minecraft:generic.max_health modifier remove 420-69-42-1337-0
attribute @s minecraft:generic.max_health modifier remove 420-69-42-1337-1
attribute @s minecraft:generic.max_health modifier remove 420-69-42-1337-2
attribute @s minecraft:generic.max_health modifier remove 420-69-42-1337-3
attribute @s minecraft:generic.max_health modifier remove 420-69-42-1337-4
attribute @s minecraft:generic.max_health modifier remove 420-69-42-1337-5
attribute @s minecraft:generic.max_health modifier remove 420-69-42-1337-6
attribute @s minecraft:generic.max_health modifier remove 420-69-42-1337-7
attribute @s minecraft:generic.max_health modifier remove 420-69-42-1337-8
attribute @s minecraft:generic.max_health modifier remove 420-69-42-1337-9