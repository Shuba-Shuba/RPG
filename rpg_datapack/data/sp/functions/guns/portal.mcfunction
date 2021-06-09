scoreboard players set @s raycast 256
scoreboard players set @s portal_cd 8
execute unless predicate sp:is_sneaking anchored eyes run function sp:raycast/portal_blue
execute if predicate sp:is_sneaking anchored eyes run function sp:raycast/portal_orange
playsound minecraft:entity.player.splash master @s ~ ~ ~ 0.5 2 0.5