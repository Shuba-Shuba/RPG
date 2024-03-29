# config setup
scoreboard players add gungame.enabled config 0
scoreboard players add gungame.infinite_ammo config 0
scoreboard players add cleargive.enabled config 0
scoreboard players add upgrade.protection config 0
scoreboard players add upgrade.thorns config 0
scoreboard players add generic.used config 0
scoreboard players add portals.universal config 0
scoreboard players add portals.non_players config 0
scoreboard players add portals.owner_only config 0

tellraw @a "Reloaded."
execute unless score generic.used config matches 1 run tellraw @a [{"text":"It looks like this is your first time loading this datapack. To properly set up RPG, "},{"text":"click here.","underlined":true,"clickEvent":{"action":"run_command","value":"/function sp:reset_config"},"hoverEvent":{"action":"show_text","value":"/function sp:reset_config"}}," If you know what you are doing, then ignore this message."]
scoreboard objectives add rpg_time dummy
scoreboard objectives add epic_boss_info dummy
bossbar add rpg:the_epic_one "The Epic One"
bossbar set rpg:the_epic_one max 100
bossbar set rpg:the_epic_one color red
bossbar set rpg:the_epic_one visible false
scoreboard objectives add dashtime dummy
scoreboard objectives add rightclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add mana xp
scoreboard objectives add log.oak minecraft.mined:minecraft.oak_log
scoreboard objectives add log.spruce minecraft.mined:minecraft.spruce_log
scoreboard objectives add log.birch minecraft.mined:minecraft.birch_log
scoreboard objectives add log.jungle minecraft.mined:minecraft.jungle_log
scoreboard objectives add log.acacia minecraft.mined:minecraft.acacia_log
scoreboard objectives add log.dark_oak minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add vein dummy
scoreboard objectives add ammo dummy
scoreboard objectives add raycast dummy
scoreboard objectives add dynamic_health dummy
scoreboard objectives add calc dummy
scoreboard players set integers.1000 calc 1000
scoreboard players set integers.100 calc 100
scoreboard players set integers.20 calc 20
scoreboard players set integers.10 calc 10
scoreboard players set integers.4 calc 4
scoreboard players set integers.3 calc 3
scoreboard players set integers.2 calc 2
scoreboard players set integers.1 calc 1
scoreboard players set damage.min calc 1
scoreboard objectives add atk dummy
scoreboard objectives add bow dummy
scoreboard objectives add arrow dummy
scoreboard objectives add bowshot minecraft.used:minecraft.bow
scoreboard objectives add tower_boss_info dummy
bossbar add rpg:tower "Army Of Skeletons"
bossbar set rpg:tower max 100
bossbar set rpg:tower color red
bossbar set rpg:tower visible false
scoreboard objectives add realtime dummy
scoreboard objectives add crafted dummy
scoreboard objectives add recipe dummy
scoreboard objectives add fireball minecraft.used:minecraft.fire_charge
scoreboard objectives add manatime dummy
scoreboard objectives add manacooldown dummy
scoreboard objectives add evoker dummy
scoreboard objectives add evoker_init dummy
scoreboard objectives add manacap dummy
execute in sp:void run forceload add 0 0
scoreboard objectives add ar_cooldown dummy
scoreboard objectives add damage dummy
scoreboard objectives add health dummy
scoreboard objectives add pistol_cd dummy
scoreboard objectives add shotgun_cd dummy
scoreboard objectives add rocket_cd dummy
scoreboard objectives add carrot_stick dummy
scoreboard objectives add sniper_cd dummy
scoreboard objectives add drop_sniper minecraft.dropped:minecraft.spyglass
scoreboard objectives add ded deathCount
scoreboard objectives add ded_timer dummy
scoreboard objectives add combo dummy
scoreboard objectives add tier dummy
scoreboard objectives add kill dummy
scoreboard objectives add config dummy
scoreboard objectives add gungame_kill playerKillCount
scoreboard objectives add hit_cooldown dummy
scoreboard objectives add arrow_cd dummy
scoreboard objectives add armor armor
scoreboard objectives add armor_display trigger
scoreboard objectives add armor_toggle dummy
scoreboard objectives add max_health dummy
scoreboard objectives add health_att dummy
scoreboard objectives add health_att1 dummy
scoreboard objectives add health_att2 dummy
scoreboard objectives add health_att3 dummy
scoreboard objectives add health_att4 dummy
scoreboard objectives add health_att5 dummy
scoreboard objectives add ranged_atk dummy
scoreboard objectives add magic_atk dummy
scoreboard objectives add melee_atk dummy
scoreboard objectives add ranged_atk1 dummy
scoreboard objectives add ranged_atk2 dummy
scoreboard objectives add ranged_atk3 dummy
scoreboard objectives add ranged_atk4 dummy
scoreboard objectives add ranged_atk5 dummy
scoreboard objectives add ranged_perm dummy
scoreboard objectives add magic_atk1 dummy
scoreboard objectives add magic_atk2 dummy
scoreboard objectives add magic_atk3 dummy
scoreboard objectives add magic_atk4 dummy
scoreboard objectives add magic_atk5 dummy
scoreboard objectives add magic_perm dummy
scoreboard objectives add melee_atk1 dummy
scoreboard objectives add melee_atk2 dummy
scoreboard objectives add melee_atk3 dummy
scoreboard objectives add melee_atk4 dummy
scoreboard objectives add melee_atk5 dummy
scoreboard objectives add melee_perm dummy
bossbar add rpg:evoker "The Illager Summoner"
bossbar set rpg:evoker max 100
bossbar set rpg:evoker color red
bossbar set rpg:evoker visible false
scoreboard objectives add speed dummy
scoreboard objectives add bounce dummy
scoreboard objectives add musket_cd dummy
scoreboard objectives add tmp_raycast dummy
scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy
scoreboard objectives add hit dummy
scoreboard objectives add ender_cd dummy
scoreboard objectives add rotation dummy
scoreboard objectives add axe_damage dummy
scoreboard objectives add axe_cd dummy
scoreboard objectives add tower_boss_info dummy
bossbar add rpg:piglin "Ruler Of The Piglins"
bossbar set rpg:piglin max 100
bossbar set rpg:piglin color red
bossbar set rpg:piglin visible false
scoreboard objectives add dash_charge dummy
scoreboard objectives add shieldtime dummy
bossbar add rpg:amirite "Amirite Boss"
bossbar set rpg:amirite max 200
bossbar set rpg:amirite color red
bossbar set rpg:amirite visible false
scoreboard objectives add portal_cd dummy
scoreboard objectives add portal_entry_cd dummy
scoreboard objectives add final dummy
scoreboard objectives add gamerule dummy