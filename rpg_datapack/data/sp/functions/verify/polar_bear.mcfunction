tag @s add rpg_verified
function sp:rng/rng
execute if score output.arch_pb rng matches 49 run tp @s 0 -50 0
execute if score output.arch_pb rng matches 49 run title @a[distance=..10] actionbar "An arch polar bear has spawned!"
execute if score output.arch_pb rng matches 49 run function sp:summon/arch_polar_bear