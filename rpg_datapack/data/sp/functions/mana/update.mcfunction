item replace entity @s weapon.mainhand with air
scoreboard players operation @s manacooldown = tmp.holding manacooldown
tellraw @s ["Set mana cooldown to ",{"score":{"name":"tmp.holding","objective":"manacooldown"}}," ticks."]