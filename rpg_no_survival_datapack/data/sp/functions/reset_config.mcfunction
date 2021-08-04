tellraw @s "Reset RPG config to default values. (Use \"/scoreboard objectives setdisplay sidebar config\" to check)"
scoreboard players set gungame.enabled config 0
scoreboard players set gungame.infinite_ammo config 0
scoreboard players set cleargive.enabled config 0
scoreboard players set upgrade.protection config 1
scoreboard players set upgrade.thorns config 3
scoreboard players set generic.used config 1
scoreboard players set portals.universal config 0
scoreboard players set portals.non_players config 0
scoreboard players set portals.owner_only config 0
gamerule keepInventory true
gamerule commandBlockOutput false