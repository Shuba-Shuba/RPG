playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~ 0.5 2 0.5
execute unless data entity @s {SelectedItem:{tag:{rpgdisplay:1}}} run item modify entity @s weapon.mainhand sp:ranged_display

scoreboard players set @s raycast 96
execute anchored eyes facing ^0.1 ^0.1 ^1 run function sp:raycast/loop

scoreboard players set @s raycast 96
execute anchored eyes facing ^0.1 ^-0.1 ^1 run function sp:raycast/loop

scoreboard players set @s raycast 96
execute anchored eyes facing ^-0.1 ^0.1 ^1 run function sp:raycast/loop

scoreboard players set @s raycast 96
execute anchored eyes facing ^-0.1 ^-0.1 ^1 run function sp:raycast/loop

scoreboard players set @s raycast 96
execute anchored eyes facing ^ ^ ^1 run function sp:raycast/loop