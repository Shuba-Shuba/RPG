# get armor and damage stats
execute store result score input.armor calc run attribute @e[dx=0,limit=1,sort=nearest] generic.armor get
execute store result score input.damage calc if entity @p[tag=user] run data get entity @p[tag=user] SelectedItem.tag.DamageRPG
execute store result score input.damage calc if entity @e[tag=user,limit=1,type=!player] run data get entity @e[tag=user,limit=1] HandItems[0].tag.DamageRPG
scoreboard players operation input.armor calc < integers.20 calc

# setup temporary variables
scoreboard players operation tmp.armor calc = input.armor calc
scoreboard players operation tmp.damage calc = input.damage calc

# scale armor and damage variables
scoreboard players operation tmp.armor calc *= integers.4 calc
scoreboard players operation tmp.damage calc *= integers.100 calc

# calculate damage to be subtracted, scaled by 10
scoreboard players operation tmp.armor calc *= tmp.damage calc
scoreboard players operation tmp.armor calc /= integers.1000 calc

# scale damage by 0.1 to subtract
scoreboard players operation tmp.damage calc /= integers.10 calc
scoreboard players operation tmp.damage calc -= tmp.armor calc

# put temporary variable onto output variable for later use
scoreboard players operation output.damage calc = tmp.damage calc

# set minimum damage at 1.0
scoreboard players operation output.damage calc > damage.min calc