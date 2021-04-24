scoreboard players set @s ded_timer 15
scoreboard players set @s ded 0
gamemode spectator
title @s title {"color":"red","score":{"name":"@s","objective":"ded_timer"}}
execute if score %5 prng2 matches 0 run title @s subtitle "Have you tried not killing yourself? Of course you didn't."
execute if score %5 prng2 matches 1 run title @s subtitle "actually dogwater"
execute if score %5 prng2 matches 2 run title @s subtitle "ur bad"
execute if score %5 prng2 matches 3 run title @s subtitle "just quit minecraft at this point"
execute if score %5 prng2 matches 4 run title @s subtitle "baby rage quit incoming!!!"
execute if score %5 prng2 matches 5 run title @s subtitle "Try ALT+F4, it'll help you stop dying."
execute if score %5 prng2 matches 6 run title @s subtitle "Try restarting your computer. \"bUT i dId!1!1!!\" DO IT AGAIN."
execute if score %5 prng2 matches 7 run title @s subtitle "Welcome back to the death screen, you've been here a lot."
execute if score %5 prng2 matches 8 run title @s subtitle "You did your best. You couldn't do any better than a fail."
execute if score %5 prng2 matches 9 run title @s subtitle "It's not my fault that you're trash."