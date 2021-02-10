gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
gamemode survival
title @s clear
title @s reset
scoreboard players set @s ded 0
tellraw @a [{"selector":"@s"}," has respawned!"]