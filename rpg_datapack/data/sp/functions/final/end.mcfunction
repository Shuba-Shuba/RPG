kill @s
scoreboard players set %index final 5
schedule function sp:final/credits 10s
loot give @a loot sp:amirite_boss
tellraw @a ["",{"color":"red","text":"\n\n\nYou were stronger than I thought...\nOkay, take your fucking amirite ingots and get outta here."},"\n\nCredits and stuff will roll in a few seconds"]