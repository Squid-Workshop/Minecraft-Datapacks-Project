scoreboard players remove @s move 1
execute positioned ~ ~1.52 ~ run summon minecraft:area_effect_cloud ^ ^ ^2 {Tags:["yaka"],Duration:200,Owner:[I;-1,1,-1,-2]}
execute positioned ~ ~1.52 ~ positioned ^ ^ ^2 run data modify entity @e[tag=yaka,limit=1,distance=..0.1] Owner set from entity @s UUID
execute positioned ~ ~1.52 ~ positioned ^ ^ ^2 run data modify entity @e[tag=yaka,limit=1,distance=..0.1] Owner set from entity @s UUID
execute positioned ~ ~1.52 ~ positioned ^ ^ ^2 run data modify entity @e[tag=yaka,limit=1,distance=..0.1] Rotation set from entity @s Rotation
execute positioned ~ ~1.52 ~ positioned ^ ^ ^2 if entity @s[tag=ykpvp] run tag @e[tag=yaka,limit=1,distance=..0.1] add ykpvp
