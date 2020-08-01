#/from MGS_2.0.1 gun mod/
scoreboard players set v15 V 0
scoreboard players set v13 V 10
execute if block ~ ~ ~ air if block ~ ~-1 ~ air if block ~ ~1 ~ air if block ~1 ~ ~ air if block ~-1 ~ ~ air if block ~ ~ ~1 air if block ~ ~ ~-1 air run scoreboard players set v15 V 3
#execute if score v15 V matches 0 if block ~ ~ ~ #games:solid run scoreboard players remove @s damage 2
#execute if score v15 V matches 2 run scoreboard players set v13 V 0
#execute if score v15 V matches 0 run function games:camera/core/util/collide
#execute if score v15 V matches 2 run scoreboard players set v0 V 0
execute if score v15 V matches 0 unless block ~ ~ ~ air run scoreboard players set v15 V 2
#execute if score v15 V matches 1 run scoreboard players remove @s damage 1
execute if score v15 V matches 2 run scoreboard players remove @s damage 1
#execute if entity @s[scores={damage=..0}] run scoreboard players set v0 V 0

#hit effect
execute if score v15 V matches 2 run particle minecraft:white_ash ~ ~ ~ 0.05 0.05 0.05 10 20 force
#clone front
execute if score v15 V matches 2 if score @s damage matches 1 run function games:camera/core/clone_front
#clone here
execute if score v15 V matches 2 if score @s damage matches 0 run function games:camera/core/clone_here


execute if score v15 V matches 2 if block ~ ~ ~ #games:solid run tag @s add dead

#tracing
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.0001 1 force


execute positioned ~ ~-0.975 ~ positioned ^ ^ ^0.5 as @e[distance=0..4,type=#games:supported,tag=!hit] run function games:camera/core/hit

execute if score v0 V matches 0 run tag @s add dead
tag @s[scores={damage=..0}] add dead
kill @s[tag=dead]