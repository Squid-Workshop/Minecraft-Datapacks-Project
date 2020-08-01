

execute at @s run function build:lawn/rand10
execute at @s if entity @e[distance=..0.1,tag=10A] run tag @s add sflower
execute at @s if entity @e[distance=..0.1,tag=10B] run tag @s add sflower
execute at @s if entity @e[distance=..0.1,tag=10C] run tag @s add sflower
execute at @s if entity @e[distance=..0.1,tag=10D] run tag @s add sflower
execute at @s if entity @e[distance=..0.1,tag=10E] run tag @s add sflower
execute at @s if entity @e[distance=..0.1,tag=10F] run tag @s add sgrass
execute at @s if entity @e[distance=..0.1,tag=10G] run tag @s add sgrass
execute at @s if entity @e[distance=..0.1,tag=10H] run tag @s add sgrass
execute at @s if entity @e[distance=..0.1,tag=10I] run tag @s add sgrass


execute at @s run kill @e[tag=selector,distance=..0.1]
execute at @s if entity @s[tag=sgrass] run function build:lawn/rand10
execute at @s if entity @e[distance=..0.1,tag=10A] run setblock ~ ~ ~ sweet_berry_bush
execute at @s if entity @e[distance=..0.1,tag=10B] run setblock ~ ~ ~ grass
execute at @s if entity @e[distance=..0.1,tag=10C] run setblock ~ ~ ~ grass
execute at @s if entity @e[distance=..0.1,tag=10D] run setblock ~ ~ ~ fern
execute at @s if entity @e[distance=..0.1,tag=10E] run setblock ~ ~ ~ fern
execute at @s if entity @e[distance=..0.1,tag=10F] run setblock ~ ~ ~ grass
execute at @s if entity @e[distance=..0.1,tag=10G] run setblock ~ ~ ~ grass
execute at @s if entity @e[distance=..0.1,tag=10H] run setblock ~ ~ ~ grass
execute at @s if entity @e[distance=..0.1,tag=10I] run setblock ~ ~ ~ grass
execute at @s if entity @e[distance=..0.1,tag=10J] run setblock ~ ~ ~ fern


execute at @s if entity @s[tag=sflower] run function build:lawn/rand12
execute at @s if entity @e[distance=..0.1,tag=12A] run setblock ~ ~ ~ azure_bluet
execute at @s if entity @e[distance=..0.1,tag=12B] run setblock ~ ~ ~ dandelion
execute at @s if entity @e[distance=..0.1,tag=12C] run setblock ~ ~ ~ blue_orchid
execute at @s if entity @e[distance=..0.1,tag=12D] run setblock ~ ~ ~ poppy
execute at @s if entity @e[distance=..0.1,tag=12E] run setblock ~ ~ ~ allium
execute at @s if entity @e[distance=..0.1,tag=12F] run setblock ~ ~ ~ oxeye_daisy
execute at @s if entity @e[distance=..0.1,tag=12G] run setblock ~ ~ ~ cornflower
execute at @s if entity @e[distance=..0.1,tag=12H] run setblock ~ ~ ~ lily_of_the_valley
execute at @s if entity @e[distance=..0.1,tag=12I] run setblock ~ ~ ~ red_tulip
execute at @s if entity @e[distance=..0.1,tag=12J] run setblock ~ ~ ~ white_tulip
execute at @s if entity @e[distance=..0.1,tag=12K] run setblock ~ ~ ~ orange_tulip
execute at @s if entity @e[distance=..0.1,tag=12L] run setblock ~ ~ ~ pink_tulip

execute at @s run kill @e[tag=selector,distance=..0.1]

kill @e[tag=lawna]
kill @e[tag=lawnb]
kill @e[tag=lawnc]
kill @e[tag=lawnd]
kill @s
