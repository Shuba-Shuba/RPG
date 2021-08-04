clear @s carrot_on_a_stick{CustomModelData:1}
execute if predicate sp:mainhand_empty run item replace entity @s weapon.mainhand from entity @s weapon.offhand
clear @s carrot_on_a_stick{CustomModelData:1}
item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:1}
kill @e[type=item,distance=..10,nbt={Item:{tag:{CustomModelData:1}}}]