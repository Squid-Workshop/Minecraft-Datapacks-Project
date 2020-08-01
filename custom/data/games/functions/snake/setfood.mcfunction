tag @e[tag=snkbase] remove bsfree
tag @e[tag=snkbase] add bsfree
execute as @e[tag=snk] at @s run tag @e[tag=snkbase,distance=..0.1,limit=1,sort=nearest] remove bsfree
execute as @e[tag=snkfood] at @s run tag @e[tag=snkbase,distance=..0.1,limit=1,sort=nearest] remove bsfree
execute if entity @e[tag=bsfree] run summon armor_stand ~ ~-1 ~ {Tags:["snkfood","snkc"],Invisible:1b}
execute positioned ~ ~-1 ~ run scoreboard players set @e[tag=snkfood,limit=1,sort=nearest,distance=0] state 0
execute as @e[limit=1,sort=random,tag=bsfree] at @s run tp @e[tag=snkfood,scores={state=0}] @s
scoreboard players add @e[tag=snkfood,scores={state=..2}] state 1
scoreboard players add @e[tag=snkcntr] state 1
scoreboard players add @e[tag=snkfood,scores={state=1}] state 1