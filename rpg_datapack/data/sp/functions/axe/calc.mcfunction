# get input variables
scoreboard players set input.damage calc 7
execute store result score input.armor calc run attribute @s generic.armor get
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