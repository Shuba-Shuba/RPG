tellraw @a {"color":"red","text":"Bring it on, idiot"}
kill @e[type=armor_stand,tag=amirite_crystal]
kill @e[tag=amirite_boss]
scoreboard players set %index final 2
execute in sp:void run tp @a 0 30 0
execute in sp:void run spreadplayers 0 0 15 20 false @a
execute in sp:void positioned 0 103 0 run function sp:summon/amirite_boss
execute in sp:void run summon armor_stand 0 111 15 {CustomNameVisible:1b,NoGravity:1b,HasVisualFire:1b,CustomName:'{"text":"amirite crystal"}',Tags:["amirite_crystal"]}
execute in sp:void run summon armor_stand 0 111 -15 {CustomNameVisible:1b,NoGravity:1b,HasVisualFire:1b,CustomName:'{"text":"amirite crystal"}',Tags:["amirite_crystal"]}
execute in sp:void run summon armor_stand 15 111 0 {CustomNameVisible:1b,NoGravity:1b,HasVisualFire:1b,CustomName:'{"text":"amirite crystal"}',Tags:["amirite_crystal"]}
execute in sp:void run summon armor_stand -15 111 0 {CustomNameVisible:1b,NoGravity:1b,HasVisualFire:1b,CustomName:'{"text":"amirite crystal"}',Tags:["amirite_crystal"]}
execute in sp:void run summon armor_stand 10 111 10 {CustomNameVisible:1b,NoGravity:1b,HasVisualFire:1b,CustomName:'{"text":"amirite crystal"}',Tags:["amirite_crystal"]}
execute in sp:void run summon armor_stand 10 111 -10 {CustomNameVisible:1b,NoGravity:1b,HasVisualFire:1b,CustomName:'{"text":"amirite crystal"}',Tags:["amirite_crystal"]}
execute in sp:void run summon armor_stand -10 111 10 {CustomNameVisible:1b,NoGravity:1b,HasVisualFire:1b,CustomName:'{"text":"amirite crystal"}',Tags:["amirite_crystal"]}
execute in sp:void run summon armor_stand -10 111 -10 {CustomNameVisible:1b,NoGravity:1b,HasVisualFire:1b,CustomName:'{"text":"amirite crystal"}',Tags:["amirite_crystal"]}
execute in sp:void run setblock -20 99 20 minecraft:structure_block[mode=load]{author:"Shuba_Shuba",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"sp:amirite",posX:1,posY:1,posZ:-39,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:39,sizeY:11,sizeZ:39}
execute in sp:void run setblock -20 100 20 redstone_block
execute in sp:void run setblock -20 100 20 air
execute in sp:void run setblock -20 99 20 air