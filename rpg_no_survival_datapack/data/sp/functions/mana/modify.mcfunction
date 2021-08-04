item replace entity @s weapon.mainhand with air
scoreboard players operation @s manacooldown -= tmp.modify manacooldown
tellraw @s ["Lowered mana cooldown by ",{"score":{"name":"tmp.modify","objective":"manacooldown"}}," ticks.\nCurrent mana cooldown is now ",{"score":{"name":"@s","objective":"manacooldown"}}," ticks."]