function sp:crafting/early_game_check
execute unless entity @s[tag=craft_processed] run function sp:verify/dispenser
execute if entity @s[tag=craft_processed] unless block ~ ~ ~ dispenser run kill @s