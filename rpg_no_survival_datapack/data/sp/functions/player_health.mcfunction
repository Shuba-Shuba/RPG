scoreboard players operation input.health_att health_att = @s health_att
execute if score input.health_att health_att matches 1024.. run scoreboard players set input.health_att health_att 1023

# calculate health in binary and place modifiers
scoreboard players operation tmp.calc health_att = input.health_att health_att
scoreboard players operation tmp.calc health_att %= integers.2 calc
execute if score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier add 420-42-69-1337-0 h0 1 add
execute unless score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier remove 420-42-69-1337-0
scoreboard players operation input.health_att health_att /= integers.2 calc

scoreboard players operation tmp.calc health_att = input.health_att health_att
scoreboard players operation tmp.calc health_att %= integers.2 calc
execute if score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier add 420-42-69-1337-1 h1 2 add
execute unless score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier remove 420-42-69-1337-1
scoreboard players operation input.health_att health_att /= integers.2 calc

scoreboard players operation tmp.calc health_att = input.health_att health_att
scoreboard players operation tmp.calc health_att %= integers.2 calc
execute if score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier add 420-42-69-1337-2 h2 4 add
execute unless score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier remove 420-42-69-1337-2
scoreboard players operation input.health_att health_att /= integers.2 calc

scoreboard players operation tmp.calc health_att = input.health_att health_att
scoreboard players operation tmp.calc health_att %= integers.2 calc
execute if score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier add 420-42-69-1337-3 h3 8 add
execute unless score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier remove 420-42-69-1337-3
scoreboard players operation input.health_att health_att /= integers.2 calc

scoreboard players operation tmp.calc health_att = input.health_att health_att
scoreboard players operation tmp.calc health_att %= integers.2 calc
execute if score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier add 420-42-69-1337-4 h4 16 add
execute unless score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier remove 420-42-69-1337-4
scoreboard players operation input.health_att health_att /= integers.2 calc

scoreboard players operation tmp.calc health_att = input.health_att health_att
scoreboard players operation tmp.calc health_att %= integers.2 calc
execute if score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier add 420-42-69-1337-5 h5 32 add
execute unless score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier remove 420-42-69-1337-5
scoreboard players operation input.health_att health_att /= integers.2 calc

scoreboard players operation tmp.calc health_att = input.health_att health_att
scoreboard players operation tmp.calc health_att %= integers.2 calc
execute if score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier add 420-42-69-1337-6 h6 64 add
execute unless score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier remove 420-42-69-1337-6
scoreboard players operation input.health_att health_att /= integers.2 calc

scoreboard players operation tmp.calc health_att = input.health_att health_att
scoreboard players operation tmp.calc health_att %= integers.2 calc
execute if score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier add 420-42-69-1337-7 h7 128 add
execute unless score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier remove 420-42-69-1337-7
scoreboard players operation input.health_att health_att /= integers.2 calc

scoreboard players operation tmp.calc health_att = input.health_att health_att
scoreboard players operation tmp.calc health_att %= integers.2 calc
execute if score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier add 420-42-69-1337-8 h8 256 add
execute unless score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier remove 420-42-69-1337-8
scoreboard players operation input.health_att health_att /= integers.2 calc

scoreboard players operation tmp.calc health_att = input.health_att health_att
scoreboard players operation tmp.calc health_att %= integers.2 calc
execute if score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier add 420-42-69-1337-9 h9 512 add
execute unless score tmp.calc health_att matches 1 run attribute @s minecraft:generic.max_health modifier remove 420-42-69-1337-9