

execute at @s run function build:lawn/rand10
execute at @s if entity @e[distance=..0.1,tag=10A] run tag @s add sgrass
execute at @s if entity @e[distance=..0.1,tag=10B] run tag @s add sgrass
execute at @s if entity @e[distance=..0.1,tag=10C] run tag @s add sgrass
execute at @s if entity @e[distance=..0.1,tag=10D] run tag @s add sgrass
execute at @s if entity @e[distance=..0.1,tag=10E] run tag @s add sgrass
execute at @s if entity @e[distance=..0.1,tag=10F] run tag @s add sgrass

execute at @s run kill @e[tag=selector,distance=..0.1]
execute at @s if entity @s[tag=sgrass] run function build:lawn/rand10
execute at @s if entity @e[distance=..0.1,tag=10A] run setblock ~ ~ ~ sweet_berry_bush
execute at @s if entity @e[distance=..0.1,tag=10B] run setblock ~ ~ ~ grass
execute at @s if entity @e[distance=..0.1,tag=10C] run setblock ~ ~ ~ grass
execute at @s if entity @e[distance=..0.1,tag=10D] run setblock ~ ~ ~ grass
execute at @s if entity @e[distance=..0.1,tag=10E] run setblock ~ ~ ~ fern
execute at @s if entity @e[distance=..0.1,tag=10F] unless block ~ ~-1 ~ grass_block run setblock ~ ~ ~ dead_bush
execute at @s if entity @e[distance=..0.1,tag=10F] if block ~ ~-1 ~ grass_block run setblock ~ ~ ~ grass
execute at @s if entity @e[distance=..0.1,tag=10G] run setblock ~ ~ ~ grass
execute at @s if entity @e[distance=..0.1,tag=10H] run setblock ~ ~ ~ grass
execute at @s if entity @e[distance=..0.1,tag=10I] run setblock ~ ~ ~ grass
execute at @s if entity @e[distance=..0.1,tag=10J] run setblock ~ ~ ~ fern




execute at @s run kill @e[tag=selector,distance=..0.1]
kill @e[tag=lawna]
kill @e[tag=lawnb]
kill @e[tag=lawnc]
kill @e[tag=lawnd]
kill @s