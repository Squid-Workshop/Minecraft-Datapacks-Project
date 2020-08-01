scoreboard players set @e[tag=lawna] life 1

execute as @e[tag=lawna,scores={life=1}] at @s run execute positioned ~ ~ ~1 unless entity @e[tag=lawna,distance=..0.1] run execute at @s positioned ~ ~ ~-1 unless entity @e[tag=lawnb,dx=150,dz=1] run execute at @s run summon minecraft:armor_stand ~ ~ ~1 {Tags:["lawna"],NoGravity:1b}

execute as @e[tag=lawna,scores={life=1}] at @s run execute positioned ~1 ~ ~ unless entity @e[tag=lawna,distance=..0.1] run execute at @s positioned ~-1 ~ ~ unless entity @e[tag=lawnb,dx=1,dz=150] run execute at @s run summon minecraft:armor_stand ~1 ~ ~ {Tags:["lawna"],NoGravity:1b}

scoreboard players reset @e[tag=lawna] life


