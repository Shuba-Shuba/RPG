# piglin ruler
execute as @e[type=piglin_brute,tag=boss] at @s run function sp:abilities/dash_charge

# amirite boss stage 2
execute as @e[tag=amirite_boss] at @s if score %index final matches 3.. run function sp:abilities/missile