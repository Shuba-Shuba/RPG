playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~ 0.5 2 0.5
execute unless data entity @s {SelectedItem:{tag:{rpgdisplay:1}}} run item entity @s weapon.mainhand modify sp:ranged_display

execute if score %5 prng2 matches 0 anchored eyes rotated ~ ~ run function sp:raycast/loop
execute if score %5 prng2 matches 1 anchored eyes rotated ~4 ~2 run function sp:raycast/loop
execute if score %5 prng2 matches 2 anchored eyes rotated ~-4 ~-2 run function sp:raycast/loop
execute if score %5 prng2 matches 3 anchored eyes rotated ~4 ~-2 run function sp:raycast/loop
execute if score %5 prng2 matches 4 anchored eyes rotated ~-4 ~2 run function sp:raycast/loop
execute if score %5 prng2 matches 5 anchored eyes rotated ~2 ~2 run function sp:raycast/loop
execute if score %5 prng2 matches 6 anchored eyes rotated ~-2 ~-2 run function sp:raycast/loop
execute if score %5 prng2 matches 7 anchored eyes rotated ~2 ~-2 run function sp:raycast/loop
execute if score %5 prng2 matches 8 anchored eyes rotated ~-2 ~2 run function sp:raycast/loop
execute if score %5 prng2 matches 9 anchored eyes rotated ~ ~ run function sp:raycast/loop