# these stats are as high as they can go before integer limits start becoming an issue
scoreboard objectives add rng dummy
scoreboard players set rng.multiplier rng 16383
scoreboard players set rng.randomness rng 131071

# custom mob spawn rng, the mob will have 1/x chance to become custom mob when spawning
scoreboard players set input.arch_pb.range rng 50