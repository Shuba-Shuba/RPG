scoreboard players set @s recipe 0

# check all custom recipes
execute store success score @s recipe unless score @s recipe matches 2 run recipe take @s sp:fireball
execute if score @s recipe matches 1 run give @s fire_charge
execute if score @s recipe matches 1 run scoreboard players set @s recipe 2

execute store success score @s recipe unless score @s recipe matches 2 run recipe take @s sp:mana
execute if score @s recipe matches 1 run give @s wither_rose{display:{Name:'{"text":"Mana Flower","color":"light_purple","italic":false}',Lore:['{"text":"Generates mana every 16 ticks after consumption"}']},ManaRPG:16}
execute if score @s recipe matches 1 run scoreboard players set @s recipe 2

execute store success score @s recipe unless score @s recipe matches 2 run recipe take @s sp:dispenser
execute if score @s recipe matches 1 run give @s evoker_spawn_egg{display:{Name:'{"text":"Crafting Station","italic":false}',Lore:['{"text":"Spawns a crafting station"}']},EntityTag:{id:"minecraft:armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["dispenser_craft"]}} 1
execute if score @s recipe matches 1 run scoreboard players set @s recipe 2

execute store success score @s recipe unless score @s recipe matches 2 run recipe take @s sp:arch_polar_bear
execute if score @s recipe matches 1 run give @s stick{display:{Name:'{"text":"Arch Polar Bear","color":"white","italic":false}',Lore:['{"text":"Summons an arch polar bear","color":"white","italic":false}','{"text":"\\"The president of the arctic is smarter","color":"gray"}','{"text":" than you, and they aren\'t even human!\\"","color":"gray"}','{"text":" - Unknown North American, 2017","color":"gray"}']},CustomModelData:11016} 1
execute if score @s recipe matches 1 run scoreboard players set @s recipe 2

execute store success score @s recipe unless score @s recipe matches 2 run recipe take @s sp:army_of_skeletons
execute if score @s recipe matches 1 run give @s stick{display:{Name:'{"text":"Army Of Skeletons","color":"white","italic":false}',Lore:['{"text":"Summons an army of skeletons","color":"white","italic":false}','{"text":"\\"He\'s served in the military for 75 years.","color":"gray"}','{"text":"He literally lost his skin and is still alive.\\"","color":"gray"}']},CustomModelData:11018} 1
execute if score @s recipe matches 1 run scoreboard players set @s recipe 2

execute store success score @s recipe unless score @s recipe matches 2 run recipe take @s sp:the_epic_one
execute if score @s recipe matches 1 run give @s stick{display:{Name:'{"text":"The Epic One","color":"white","italic":false}',Lore:['{"text":"Summons the epic one","color":"white","italic":false}','{"text":"\\"Leader of the zombies\\"","color":"gray"}']},CustomModelData:11017} 1
execute if score @s recipe matches 1 run scoreboard players set @s recipe 2

execute store success score @s recipe unless score @s recipe matches 2 run recipe take @s sp:piglin_ruler
execute if score @s recipe matches 1 run give @s stick{display:{Name:'{"text":"The Ruler Of The Piglins","color":"white","italic":false}',Lore:['{"text":"Summons the ruler of the piglins","color":"white","italic":false}','{"text":"\\"Dictator AND a narcissist. Worst leader ever!\\"","color":"gray"}']},CustomModelData:11023} 1
execute if score @s recipe matches 1 run scoreboard players set @s recipe 2

# if no recipes have been found
tellraw @s[scores={recipe=0}] ["",{"text":"ERROR: Could not find the recipe you crafted.","color":"red"},{"text":"\nWhy did this happen?","underlined":true,"hoverEvent":{"action":"show_text","value":"This usually happens when 1 of these things happen:\n1. Shuba fucked up the custom crafting code\n2. Similar to #1, you crafted a new recipe that hasn't been fully coded in yet\n3. You give yourself a knowledge book without crafting it (like using /give or taking from a chest)"}}]