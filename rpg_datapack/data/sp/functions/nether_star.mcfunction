clear @s nether_star{NotFake:1b}
give @s nether_star
scoreboard players remove @s nether_star 1
execute if score @s nether_star matches 1.. run function sp:nether_star