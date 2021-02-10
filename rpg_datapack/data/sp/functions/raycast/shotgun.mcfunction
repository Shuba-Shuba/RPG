playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~ 0.5 2 0.5
execute unless data entity @s {SelectedItem:{tag:{rpgdisplay:1}}} run item entity @s weapon.mainhand modify sp:ranged_display

scoreboard players set @s raycast 96
execute anchored eyes rotated ~5 ~5 run function sp:raycast/loop

scoreboard players set @s raycast 96
execute anchored eyes rotated ~5 ~-5 run function sp:raycast/loop

scoreboard players set @s raycast 96
execute anchored eyes rotated ~-5 ~5 run function sp:raycast/loop

scoreboard players set @s raycast 96
execute anchored eyes rotated ~-5 ~-5 run function sp:raycast/loop

scoreboard players set @s raycast 96
execute anchored eyes rotated ~ ~ run function sp:raycast/loop