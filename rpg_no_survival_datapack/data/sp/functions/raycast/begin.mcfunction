execute anchored eyes run function sp:raycast/loop
playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~ 0.5 2 0.5
execute unless data entity @s {SelectedItem:{tag:{rpgdisplay:1}}} run item modify entity @s weapon.mainhand sp:ranged_display