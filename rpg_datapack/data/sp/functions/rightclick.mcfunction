scoreboard players set @s rightclick 0

# dash ability levels 1-3
execute if data entity @s {SelectedItem:{tag:{AbilityRPG:011}}} if score @s mana matches 6.. if score @s dashtime matches 0 run xp add @s -6 points
execute if data entity @s {SelectedItem:{tag:{AbilityRPG:011}}} if score @s mana matches 6.. if score @s dashtime matches 0 run scoreboard players set @s dashtime 6
execute if data entity @s {SelectedItem:{tag:{AbilityRPG:012}}} if score @s mana matches 10.. if score @s dashtime matches 0 run xp add @s -10 points
execute if data entity @s {SelectedItem:{tag:{AbilityRPG:012}}} if score @s mana matches 10.. if score @s dashtime matches 0 run scoreboard players set @s dashtime 10
execute if data entity @s {SelectedItem:{tag:{AbilityRPG:013}}} if score @s mana matches 16.. if score @s dashtime matches 0 run xp add @s -16 points
execute if data entity @s {SelectedItem:{tag:{AbilityRPG:013}}} if score @s mana matches 16.. if score @s dashtime matches 0 run scoreboard players set @s dashtime 16

# guns
execute if data entity @s {SelectedItem:{tag:{CustomModelData:11001}}} unless score @s ar_cooldown matches 1.. run function sp:guns/rifle
execute if data entity @s {SelectedItem:{tag:{CustomModelData:11003}}} unless score @s pistol_cd matches 1.. run function sp:guns/pistol
execute if data entity @s {SelectedItem:{tag:{CustomModelData:11004}}} unless score @s shotgun_cd matches 1.. run function sp:guns/shotgun
execute if data entity @s {SelectedItem:{tag:{CustomModelData:11005}}} if score @s rocket_cd matches 1.. run title @s actionbar ["Weapon on cooldown! Please wait ",{"score":{"name":"@s","objective":"rocket_cd"}}," ticks."]
execute if data entity @s {SelectedItem:{tag:{CustomModelData:11005}}} unless score @s rocket_cd matches 1.. run function sp:guns/rocket
execute if data entity @s {SelectedItem:{tag:{CustomModelData:11006}}} unless score @s arrow_cd matches 1.. run function sp:guns/archers_bane
execute if data entity @s {SelectedItem:{tag:{CustomModelData:11015}}} unless score @s musket_cd matches 1.. run function sp:guns/musket
execute if data entity @s {SelectedItem:{tag:{CustomModelData:11007}}} run function sp:guns/minigun

# fireball wand
execute if data entity @s {SelectedItem:{id:"minecraft:fire_charge"}} run function sp:abilities/launch
execute if data entity @s {SelectedItem:{tag:{CustomModelData:11002}}} if score @s mana matches 24.. run function sp:abilities/launch
execute if data entity @s {SelectedItem:{tag:{CustomModelData:11002}}} if score @s mana matches 24.. run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 1
execute if data entity @s {SelectedItem:{tag:{CustomModelData:11002}}} if score @s mana matches 24.. run xp add @s -24 points

# permanent consumable items
execute if data entity @s SelectedItem.tag.ManaRPG run function sp:mana/get
execute if data entity @s SelectedItem.tag.ManaRelativeRPG if score @s manacooldown matches 1..100 run function sp:mana/get
execute if data entity @s SelectedItem.tag.RangedPermRPG run function sp:boost/ranged
execute if data entity @s {SelectedItem:{tag:{CustomModelData:11011}}} store success score @s speed run attribute @s minecraft:generic.movement_speed modifier add b9611b23-9fed-4331-9d8b-a654cab9bbfa speed_booster 0.02 add
execute if data entity @s {SelectedItem:{tag:{CustomModelData:11011}}} if score @s speed matches 1.. run tellraw @s "Boosted your movement speed. This effect is not reversible.\n\nFor admins: The UUID of the attribute modifier is [ b9611b23-9fed-4331-9d8b-a654cab9bbfa ]. It is not randomly generated on the spot, but it is hardcoded in the datapack to be that exact UUID. You can copy the UUID from your logs, or by looking at the function files."
execute if data entity @s {SelectedItem:{tag:{CustomModelData:11011}}} if score @s speed matches 1.. run item entity @s weapon.mainhand replace air
execute if data entity @s {SelectedItem:{tag:{CustomModelData:11011}}} if score @s speed matches 0 run tellraw @s "You already have this movement speed boost!"

# evoker fangs
execute store result score @s evoker_init run data get entity @s SelectedItem.tag.EvokerRPG
execute if score @s evoker_init matches 1.. run scoreboard players operation calc.mana evoker_init = @s evoker_init
execute if score @s evoker_init matches 1.. run scoreboard players operation calc.mana evoker_init *= integers.3 calc
execute if score @s evoker_init matches 1.. if score @s mana >= calc.mana evoker_init run scoreboard players operation tmp.mana evoker_init = @s evoker_init
execute if score @s evoker_init matches 1.. if score @s mana >= calc.mana evoker_init run function sp:abilities/evoker_mana