# initial shot
scoreboard players set @s raycast 256
function sp:raycast/begin

# schedule 2nd shot
tag @s add burst
tag @s add ultimate_ar
schedule function sp:guns/burst_prep 3t append