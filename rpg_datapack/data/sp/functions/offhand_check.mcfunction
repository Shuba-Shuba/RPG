clear @s carrot_on_a_stick{CustomModelData:1}
execute if predicate sp:mainhand_empty run item entity @s weapon.mainhand copy entity @s weapon.offhand
clear @s carrot_on_a_stick{CustomModelData:1}
item entity @s weapon.offhand replace carrot_on_a_stick{CustomModelData:1}
kill @e[type=item,distance=..10,nbt={Item:{tag:{CustomModelData:1}}}]