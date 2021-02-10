scoreboard players set @s recipe 0

# check all custom recipes
execute store success score @s recipe unless score @s recipe matches 2 run recipe take @s sp:fireball
execute if score @s recipe matches 1 run give @s fire_charge
execute if score @s recipe matches 1 run scoreboard players set @s recipe 2

execute store success score @s recipe unless score @s recipe matches 2 run recipe take @s sp:mana
execute if score @s recipe matches 1 run give @s wither_rose{display:{Name:'{"text":"Mana Flower","color":"light_purple","italic":false}',Lore:['{"text":"Generates mana every 16 ticks after consumption"}']},ManaRPG:16}
execute if score @s recipe matches 1 run scoreboard players set @s recipe 2

execute store success score @s recipe unless score @s recipe matches 2 run recipe take @s sp:fireball_wand
execute if score @s recipe matches 1 run give @s stick{display:{Name:'{"text":"Fireball Wand","color":"aqua","italic":false}',Lore:['{"text":"12 Magic Damage","color":"white","italic":false}','{"text":"Uses 24 Mana","color":"white","italic":false}','{"text":"Shoots a fireball","color":"gray","italic":true}']},CustomModelData:11002}
execute if score @s recipe matches 1 run scoreboard players set @s recipe 2

# if no recipes have been found
tellraw @s[scores={recipe=0}] ["",{"text":"ERROR: Could not find the recipe you crafted.","color":"red"},{"text":"\nWhy did this happen?","underlined":true,"hoverEvent":{"action":"show_text","value":"This usually happens when 1 of these things happen:\n1. Shuba fucked up the custom crafting code\n2. Similar to #1, you crafted a new recipe that hasn't been fully coded in yet\n3. You give yourself a knowledge book without crafting it (like using /give or taking from a chest)"}}]