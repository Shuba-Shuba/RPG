scoreboard players add input.arch_pb.seed rng 1
execute if score input.arch_pb.seed rng matches 999999.. run scoreboard players set input.arch_pb.seed rng 0
scoreboard players operation input.arch_pb.seed rng *= rng.multiplier rng
scoreboard players operation input.arch_pb.seed rng %= rng.randomness rng
scoreboard players operation output.arch_pb rng = input.arch_pb.seed rng
scoreboard players operation output.arch_pb rng %= input.arch_pb.range rng

# count the outputs to ensure it is a good rng
#execute if score output.arch_pb rng matches 0 run scoreboard players add count.0 rng 1
#execute if score output.arch_pb rng matches 1 run scoreboard players add count.1 rng 1
#execute if score output.arch_pb rng matches 2 run scoreboard players add count.2 rng 1
#execute if score output.arch_pb rng matches 3 run scoreboard players add count.3 rng 1
#execute if score output.arch_pb rng matches 4 run scoreboard players add count.4 rng 1
#execute if score output.arch_pb rng matches 5 run scoreboard players add count.5 rng 1
#execute if score output.arch_pb rng matches 6 run scoreboard players add count.6 rng 1
#execute if score output.arch_pb rng matches 7 run scoreboard players add count.7 rng 1
#execute if score output.arch_pb rng matches 8 run scoreboard players add count.8 rng 1
#execute if score output.arch_pb rng matches 9 run scoreboard players add count.9 rng 1
#execute if score output.arch_pb rng matches 10 run scoreboard players add count.10 rng 1
#execute if score output.arch_pb rng matches 11 run scoreboard players add count.11 rng 1
#execute if score output.arch_pb rng matches 12 run scoreboard players add count.12 rng 1
#execute if score output.arch_pb rng matches 13 run scoreboard players add count.13 rng 1
#execute if score output.arch_pb rng matches 14 run scoreboard players add count.14 rng 1
#execute if score output.arch_pb rng matches 15 run scoreboard players add count.15 rng 1
#execute if score output.arch_pb rng matches 16 run scoreboard players add count.16 rng 1
#execute if score output.arch_pb rng matches 17 run scoreboard players add count.17 rng 1
#execute if score output.arch_pb rng matches 18 run scoreboard players add count.18 rng 1
#execute if score output.arch_pb rng matches 19 run scoreboard players add count.19 rng 1
#execute if score output.arch_pb rng matches 20 run scoreboard players add count.20 rng 1
#execute if score output.arch_pb rng matches 21 run scoreboard players add count.21 rng 1
#execute if score output.arch_pb rng matches 22 run scoreboard players add count.22 rng 1
#execute if score output.arch_pb rng matches 23 run scoreboard players add count.23 rng 1
#execute if score output.arch_pb rng matches 24 run scoreboard players add count.24 rng 1
#execute if score output.arch_pb rng matches 25 run scoreboard players add count.25 rng 1
#execute if score output.arch_pb rng matches 26 run scoreboard players add count.26 rng 1
#execute if score output.arch_pb rng matches 27 run scoreboard players add count.27 rng 1
#execute if score output.arch_pb rng matches 28 run scoreboard players add count.28 rng 1
#execute if score output.arch_pb rng matches 29 run scoreboard players add count.29 rng 1
#execute if score output.arch_pb rng matches 30 run scoreboard players add count.30 rng 1
#execute if score output.arch_pb rng matches 31 run scoreboard players add count.31 rng 1
#execute if score output.arch_pb rng matches 32 run scoreboard players add count.32 rng 1
#execute if score output.arch_pb rng matches 33 run scoreboard players add count.33 rng 1
#execute if score output.arch_pb rng matches 34 run scoreboard players add count.34 rng 1
#execute if score output.arch_pb rng matches 35 run scoreboard players add count.35 rng 1
#execute if score output.arch_pb rng matches 36 run scoreboard players add count.36 rng 1
#execute if score output.arch_pb rng matches 37 run scoreboard players add count.37 rng 1
#execute if score output.arch_pb rng matches 38 run scoreboard players add count.38 rng 1
#execute if score output.arch_pb rng matches 39 run scoreboard players add count.39 rng 1