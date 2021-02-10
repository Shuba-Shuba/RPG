data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{CustomModelData:11006}}}] {PickupDelay:0,Tags:["user"]}
scoreboard players set @s raycast 2048
execute store result score @s ammo run clear @s iron_nugget 0
execute if score @s ammo matches 1.. unless score @s sniper_cd matches 1.. run playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~ 0.5 2 0.5
execute if score @s ammo matches 1.. unless score @s sniper_cd matches 1.. unless score gungame.infinite_ammo config matches 1 run clear @s iron_nugget 1
execute if score @s ammo matches 1.. unless score @s sniper_cd matches 1.. run function sp:raycast/sniper
execute if score @s ammo matches 1.. if score @s sniper_cd matches 1.. run title @s actionbar ["Weapon on cooldown! Please wait ",{"score":{"name":"@s","objective":"sniper_cd"}}," ticks."]
execute if score @s ammo matches 1.. unless score @s sniper_cd matches 1.. run scoreboard players set @s sniper_cd 200