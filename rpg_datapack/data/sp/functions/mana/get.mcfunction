# in the future, i may extend this function to search for the best mana restoring item in a list
execute store result score tmp.holding manacooldown run data get entity @s SelectedItem.tag.ManaRPG
execute store result score tmp.modify manacooldown run data get entity @s SelectedItem.tag.ManaRelativeRPG
execute if score tmp.holding manacooldown matches 0 run scoreboard players reset tmp.holding manacooldown
execute if score tmp.modify manacooldown matches 0 run scoreboard players reset tmp.modify manacooldown
execute if score tmp.holding manacooldown > @s manacooldown run tellraw @s "Cannot set mana, your current mana cooldown is already better than this."
execute if score tmp.holding manacooldown < @s manacooldown run function sp:mana/update
execute if score tmp.modify manacooldown >= @s manacooldown run scoreboard players set @s manacooldown 1
execute if score tmp.modify manacooldown >= @s manacooldown run tellraw @s "Reached maximum mana restore speed, you will now generate 1 mana every tick. (20 mana/s)"
execute if score tmp.modify manacooldown >= @s manacooldown run item replace entity @s weapon.mainhand with air
execute if score tmp.modify manacooldown < @s manacooldown run function sp:mana/modify