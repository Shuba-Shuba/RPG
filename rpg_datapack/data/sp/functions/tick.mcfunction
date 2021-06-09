execute as @e store result score @s health run data get entity @s Health 1
execute as @e[scores={dashtime=1..}] at @s rotated ~ 0 if block ^ ^ ^1 #sp:passthrough if block ^ ^ ^2 #sp:passthrough if block ^ ^ ^3 #sp:passthrough run function sp:abilities/dash
execute as @e[scores={dashtime=1..}] at @s rotated ~ 0 unless block ^ ^ ^1 #sp:passthrough unless block ^ ^ ^2 #sp:passthrough unless block ^ ^ ^3 #sp:passthrough run scoreboard players set @s dashtime 0
execute as @a[predicate=!sp:carrot_on_a_stick_in_offhand] at @s run function sp:offhand_check
execute as @a[scores={rightclick=1..}] at @s run function sp:rightclick
scoreboard players add @a dashtime 0
execute as @a[scores={fireball=1..}] at @s run function sp:abilities/launch
execute as @a[scores={fireball=1..}] run scoreboard players set @s fireball 0
execute as @a[scores={damage=1..}] at @s run function sp:player_damage
execute as @a store result score @s carrot_stick run clear @s carrot_on_a_stick{CustomModelData:1} 0
execute as @a[scores={carrot_stick=2..}] run function sp:offhand_check
execute if score gungame.enabled config matches 1 run function sp:gungame/tick
execute as @e[tag=slowcast_4] at @s run function sp:slowcast/tick
scoreboard players remove @a hit_cooldown 1
execute as @a store result score @s max_health run attribute @s generic.max_health get
execute as @a store result score @s UUID0 run data get entity @s UUID[0]
execute as @a store result score @s UUID1 run data get entity @s UUID[1]
execute as @a store result score @s UUID2 run data get entity @s UUID[2]
execute as @a store result score @s UUID3 run data get entity @s UUID[3]
function sp:slowcast/tick

# accessories
execute as @a run function sp:acc/health
execute as @a run function sp:acc/ranged

# display armor
scoreboard players enable @a armor_display
execute as @a[scores={armor_toggle=1}] run function sp:armor
execute as @a[scores={armor_display=1..}] run function sp:armor_toggle

# the epic one (first boss)
scoreboard players add %5s rpg_time 1
execute store result score minions.chargers epic_boss_info if entity @e[type=zombie,tag=charger]
execute if score %5s rpg_time matches 100.. run function sp:5s
execute if score %5s rpg_time matches 100.. run scoreboard players set %5s rpg_time 0
bossbar set rpg:the_epic_one players @a
execute store result bossbar rpg:the_epic_one value run data get entity @e[type=zombie,tag=boss,limit=1] Health
execute store result score boss.health epic_boss_info run data get entity @e[type=zombie,tag=boss,limit=1] Health
execute if entity @e[type=zombie,tag=boss,limit=1] run bossbar set rpg:the_epic_one visible true
execute unless entity @e[type=zombie,tag=boss,limit=1] run bossbar set rpg:the_epic_one visible false
execute as @e[type=zombie,tag=boss,limit=1] at @s unless entity @a[distance=..64,gamemode=!spectator] run tp @s 0 -100 0
execute as @e[type=zombie,tag=boss,limit=1] at @s unless entity @a[distance=..64,gamemode=!spectator] run kill @s

# custom crafting recipes
execute as @a store success score @s crafted run clear @s knowledge_book
execute as @a[scores={crafted=1..}] at @s run function sp:crafting/vanilla
execute as @e[type=armor_stand,tag=dispenser_craft] at @s if entity @a[distance=..10] run function sp:crafting/dispenser
execute as @e[type=armor_stand,tag=dropper_craft] at @s if entity @a[distance=..10] run function sp:crafting/dropper

# tree cutter
execute as @a run function sp:combine
tag @e[type=item,tag=!veincheck] add veincheck

# custom bows
scoreboard players reset * bow
execute as @a store result score @s bow run data get entity @s SelectedItem.tag.bow_type
execute as @e[type=!arrow,type=!player] store result score @s bow run data get entity @s HandItems[0].tag.bow_type
execute at @a[scores={bowshot=1..,bow=1..}] as @e[type=arrow,tag=!bow_processed,distance=..10,limit=1,sort=nearest] run function sp:process
execute at @e[type=#skeletons] as @e[type=arrow,tag=!bow_processed,distance=..2,limit=1,sort=nearest] if entity @s run function sp:process
execute as @a[scores={bowshot=1..}] run scoreboard players set @s bowshot 0
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:13b}],inGround:1b}] run function sp:directory
execute as @e[type=!arrow,nbt={ActiveEffects:[{Id:13b}]}] run function sp:directory

# army of skeletons (second boss)
bossbar set rpg:tower players @a
execute store result bossbar rpg:tower value run data get entity @e[type=skeleton,tag=tower,limit=1] Health
execute if entity @e[type=skeleton,tag=tower,limit=1] run bossbar set rpg:tower visible true
execute unless entity @e[type=skeleton,tag=tower,limit=1] run bossbar set rpg:tower visible false
execute as @e[type=skeleton,tag=tower,limit=1] at @s unless entity @a[distance=..64,gamemode=!spectator] run tp @s 0 -100 0
execute as @e[type=skeleton,tag=tower,limit=1] at @s unless entity @a[distance=..64,gamemode=!spectator] run kill @s
scoreboard players add %15s rpg_time 1
execute if score %15s rpg_time matches 200.. run function sp:15s
execute if score %15s rpg_time matches 200.. run scoreboard players set %15s rpg_time 0
scoreboard players add %1s rpg_time 1
execute if score %1s rpg_time matches 20.. run function sp:1s
execute if score %1s rpg_time matches 20.. run scoreboard players set %1s rpg_time 0

# illager summoner (third boss)
bossbar set rpg:evoker players @a
execute store result bossbar rpg:evoker value run data get entity @e[type=evoker,tag=boss,limit=1] Health
execute if entity @e[type=evoker,tag=boss,limit=1] run bossbar set rpg:evoker visible true
execute unless entity @e[type=evoker,tag=boss,limit=1] run bossbar set rpg:evoker visible false
execute as @e[type=evoker,tag=boss,limit=1] at @s unless entity @a[distance=..64,gamemode=!spectator] run tp @s 0 -100 0
execute as @e[type=evoker,tag=boss,limit=1] at @s unless entity @a[distance=..64,gamemode=!spectator] run kill @s

# ruler of the piglins (fourth boss)
bossbar set rpg:piglin players @a
execute store result bossbar rpg:piglin value run data get entity @e[type=piglin_brute,tag=boss,limit=1] Health
execute if entity @e[type=piglin_brute,tag=boss,limit=1] run bossbar set rpg:piglin visible true
execute unless entity @e[type=piglin_brute,tag=boss,limit=1] run bossbar set rpg:piglin visible false
execute as @e[type=piglin_brute,tag=boss,limit=1] at @s unless entity @a[distance=..64,gamemode=!spectator] run tp @s 0 -100 0
execute as @e[type=piglin_brute,tag=boss,limit=1] at @s unless entity @a[distance=..64,gamemode=!spectator] run kill @s
scoreboard players add %30s rpg_time 1
execute if score %30s rpg_time matches 400.. run function sp:30s
execute if score %30s rpg_time matches 400.. run scoreboard players set %30s rpg_time 0
scoreboard players add %60s rpg_time 1
execute if score %60s rpg_time matches 800.. run function sp:60s
execute if score %60s rpg_time matches 800.. run scoreboard players set %60s rpg_time 0

# amirite boss (final boss)
execute as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",tag:{CustomModelData:101}}}] if entity @s if score %index final matches ..3 run tellraw @a "The amirite boss has died prematurely. bruh moment. Or alternatively, you threw amirite on the ground in the arena. If that is the case, stop doing it because you will NOT get it back!"
execute as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",tag:{CustomModelData:101}}}] if entity @s if score %index final matches ..3 run kill @s
bossbar set rpg:amirite players @a
execute store result bossbar rpg:amirite value run data get entity @e[tag=amirite_boss,limit=1] Health
execute if entity @e[tag=amirite_boss,limit=1] run bossbar set rpg:amirite visible true
execute unless entity @e[tag=amirite_boss,limit=1] run bossbar set rpg:amirite visible false
execute as @e[tag=amirite_boss,limit=1] at @s unless entity @a[distance=..64,gamemode=!spectator] run scoreboard players set %index final 0
execute as @e[tag=amirite_boss,limit=1] at @s unless entity @a[distance=..64,gamemode=!spectator] run tp @s 0 -100 0
execute as @e[tag=amirite_boss,limit=1] at @s unless entity @a[distance=..64,gamemode=!spectator] run kill @s

# arch polar bear spawning
execute as @e[type=polar_bear,tag=!rpg_verified,tag=!arch_polar_bear] at @s run function sp:verify/polar_bear

# testing the time
#function sp:rng/rng
execute store result score gametime realtime run time query gametime
execute store result score daytime realtime run time query daytime
execute store result score day realtime run time query day
#execute if score output.arch_pb rng matches 4 run tellraw @a ["[RNG] This message has a 1/6000 chance to display each tick and will be used to determine when arch polar bear spawns in naturally. If this happens too often, tell shuba to lower the odds of it happening.\nTo keep track of when exactly it happened, here are some time statistics.\n\nDay: ",{"score":{"name":"day","objective":"realtime"}},"\nDaytime: ",{"score":{"name":"daytime","objective":"realtime"}},"\nGametime: ",{"score":{"name":"gametime","objective":"realtime"}}]

# mana flower
scoreboard players add @a manacooldown 0
scoreboard players set @a[scores={manacooldown=0}] manacooldown 101
execute as @a if score @s mana <= @s manacap run scoreboard players add @a[scores={manacooldown=1..100}] manatime 1
execute as @a[scores={manacooldown=1..100}] if score @s manatime >= @s manacooldown if score @s mana < @s manacap run xp add @s 1
execute as @a[scores={manacooldown=1..100}] if score @s manatime >= @s manacooldown if score @s mana < @s manacap run scoreboard players set @s manatime 0

# mana cap
scoreboard players add @a manacap 0
scoreboard players set @a[scores={manacap=0}] manacap 120
execute as @a if score @s mana > @s manacap run xp add @s -1

# sky dimension
execute as @a at @s if predicate sp:fall_out_of_sky in minecraft:overworld run tp ~ 300 ~
execute as @e[type=item] at @s if predicate sp:fall_out_of_sky in minecraft:overworld run tp ~ 300 ~

# weapon cooldown
scoreboard players remove @a[scores={ar_cooldown=1..}] ar_cooldown 1
scoreboard players remove @a[scores={pistol_cd=1..}] pistol_cd 1
scoreboard players remove @a[scores={shotgun_cd=1..}] shotgun_cd 1
scoreboard players remove @a[scores={rocket_cd=1..}] rocket_cd 1
scoreboard players remove @a[scores={sniper_cd=1..}] sniper_cd 1
scoreboard players remove @a[scores={arrow_cd=1..}] arrow_cd 1
scoreboard players remove @a[scores={musket_cd=1..}] musket_cd 1
scoreboard players remove @a[scores={ender_cd=1..}] ender_cd 1
scoreboard players remove @a[scores={axe_cd=1..}] axe_cd 1
scoreboard players remove @a[scores={portal_cd=1..}] portal_cd 1
scoreboard players remove @e[scores={portal_entry_cd=1..}] portal_entry_cd 1

# sniper rifle
execute as @a[scores={drop_sniper=1..},predicate=sp:is_sneaking] at @s anchored eyes run function sp:guns/sniper
scoreboard players set @a[scores={drop_sniper=1..}] drop_sniper 0
execute as @a if data entity @s SelectedItem.tag.DamageRPG store result score @s atk run data get entity @s SelectedItem.tag.DamageRPG
execute as @a unless data entity @s SelectedItem.tag.DamageRPG run scoreboard players set @s atk 0

# death handler
execute as @a[gamemode=!spectator,scores={ded=1..}] run function sp:death

# combos
scoreboard players remove @a[scores={combo=1..}] combo 1

# throwable axes
execute as @e[type=minecraft:armor_stand,tag=animate] at @s run function sp:axe
execute as @e[type=minecraft:armor_stand,tag=animate,nbt={OnGround:1b}] at @s run function sp:axe_land

# portals
scoreboard players add @e portal_entry_cd 0
execute if score portals.owner_only config matches 1 as @e[type=marker,tag=portal_blue] at @s as @a[distance=..1,scores={portal_entry_cd=0}] if score @s UUID0 = @e[type=marker,tag=portal_blue,limit=1,sort=nearest] UUID0 if score @s UUID1 = @e[type=marker,tag=portal_blue,limit=1,sort=nearest] UUID1 if score @s UUID2 = @e[type=marker,tag=portal_blue,limit=1,sort=nearest] UUID2 if score @s UUID3 = @e[type=marker,tag=portal_blue,limit=1,sort=nearest] UUID3 as @e[type=marker,tag=portal_blue,limit=1,sort=nearest] run function sp:portal/enter_blue
execute if score portals.owner_only config matches 0 as @e[type=marker,tag=portal_blue] at @s if entity @a[distance=..1,scores={portal_entry_cd=0}] run function sp:portal/enter_blue
execute if score portals.owner_only config matches 1 as @e[type=marker,tag=portal_orange] at @s as @a[distance=..1,scores={portal_entry_cd=0}] if score @s UUID0 = @e[type=marker,tag=portal_orange,limit=1,sort=nearest] UUID0 if score @s UUID1 = @e[type=marker,tag=portal_orange,limit=1,sort=nearest] UUID1 if score @s UUID2 = @e[type=marker,tag=portal_orange,limit=1,sort=nearest] UUID2 if score @s UUID3 = @e[type=marker,tag=portal_orange,limit=1,sort=nearest] UUID3 as @e[type=marker,tag=portal_orange,limit=1,sort=nearest] run function sp:portal/enter_orange
execute if score portals.owner_only config matches 0 as @e[type=marker,tag=portal_orange] at @s if entity @a[distance=..1,scores={portal_entry_cd=0}] run function sp:portal/enter_orange
execute as @e[type=marker,tag=portal_blue] at @s run particle dust 0 0 1 1 ~ ~1 ~ 0.3 0.7 0.3 0 30 normal @a
execute as @e[type=marker,tag=portal_orange] at @s run particle dust 1 0.65 0.3 1 ~ ~1 ~ 0.3 0.7 0.3 0 30 normal @a

# amirite boss
execute store result score %crystals final if entity @e[type=armor_stand,tag=amirite_crystal,limit=8]
execute store result score @e[tag=amirite_boss] dynamic_health run data get entity @e[tag=amirite_boss,limit=1] Health 1
execute unless score %crystals final matches 0 unless score @e[tag=amirite_boss,limit=1] dynamic_health matches 50.. run data merge entity @e[tag=amirite_boss,limit=1] {Health:50f}
execute as @e[tag=amirite_boss] at @s if score %index final matches 3.. run particle minecraft:enchanted_hit ~ ~ ~ 0.5 1 0.5 0 10 normal @a
execute in sp:void as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",tag:{CustomModelData:101}}}] at @s if entity @a[distance=..64] if score %index final matches 4.. run function sp:final/end

# homing projectiles (from cloud wolf)
execute as @e[tag=missile] at @s anchored eyes facing entity @p[distance=..48] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.35 ~ ~
execute as @e[tag=missile] at @s anchored eyes if entity @a[distance=..1] positioned ~ ~2 ~ run function sp:landed
execute as @e[tag=missile] at @s anchored eyes unless block ^ ^ ^ air run kill @s