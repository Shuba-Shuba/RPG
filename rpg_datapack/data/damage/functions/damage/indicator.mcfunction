tag @s add this
scoreboard players operation output.damage calc /= integers.10 calc
setblock 0 1 0 birch_wall_sign
data modify block 0 1 0 Text1 set value '[{"text":"-","color":"red"},{"score":{"name":"output.damage","objective":"calc"}}]'
execute if score %5 prng1 matches 0 run summon item ~ ~1.5 ~ {CustomNameVisible:1,PickupDelay:400,Age:5990,CustomName:'"null"',Tags:["indicator","delayed"],Item:{id:"minecraft:red_dye",Count:1},Motion:[-0.1d,0.1d,-0.1d]}
execute if score %5 prng1 matches 1 run summon item ~ ~1.5 ~ {CustomNameVisible:1,PickupDelay:400,Age:5990,CustomName:'"null"',Tags:["indicator","delayed"],Item:{id:"minecraft:red_dye",Count:1},Motion:[0.1d,0.1d,-0.1d]}
execute if score %5 prng1 matches 2 run summon item ~ ~1.5 ~ {CustomNameVisible:1,PickupDelay:400,Age:5990,CustomName:'"null"',Tags:["indicator","delayed"],Item:{id:"minecraft:red_dye",Count:1},Motion:[-0.1d,0.1d,0.1d]}
execute if score %5 prng1 matches 3 run summon item ~ ~1.5 ~ {CustomNameVisible:1,PickupDelay:400,Age:5990,CustomName:'"null"',Tags:["indicator","delayed"],Item:{id:"minecraft:red_dye",Count:1},Motion:[0.1d,0.1d,0.1d]}
data modify entity @e[type=item,tag=indicator,limit=1,sort=nearest] CustomName set from block 0 1 0 Text1
tag @e[type=item,tag=indicator] remove indicator
tag @s remove this