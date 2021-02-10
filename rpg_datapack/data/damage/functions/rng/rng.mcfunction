scoreboard players add %1 prng1 1
execute if score %1 prng1 matches 999999 run scoreboard players set %1 prng1 0
scoreboard players operation %1 prng1 *= %2 prng1
scoreboard players operation %1 prng1 %= %3 prng1
scoreboard players operation %5 prng1 = %1 prng1
scoreboard players operation %5 prng1 %= %4 prng1
scoreboard players add %1 prng2 2
execute if score %1 prng2 matches 999999 run scoreboard players set %1 prng2 0
scoreboard players operation %1 prng2 *= %2 prng2
scoreboard players operation %1 prng2 %= %3 prng2
scoreboard players operation %5 prng2 = %1 prng2
scoreboard players operation %5 prng2 %= %4 prng2
scoreboard players add %1 prng3 3
execute if score %1 prng3 matches 999999 run scoreboard players set %1 prng3 0
scoreboard players operation %1 prng3 *= %2 prng3
scoreboard players operation %1 prng3 %= %3 prng3
scoreboard players operation %5 prng3 = %1 prng3
scoreboard players operation %5 prng3 %= %4 prng3