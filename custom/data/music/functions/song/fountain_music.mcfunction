execute if block ~ ~1 ~ #buttons[powered=true] unless entity @e[distance=..1,tag=mscplay] run summon armor_stand ~ ~0.5 ~ {Tags:["mscplay","fountain"]}
fill ~ ~1 ~ ~ ~1 ~ redstone_block replace #buttons[powered=true]

execute as @e[tag=fountain,distance=..1,tag=mscplay,limit=1] run function music:song/riverflowsinyou

execute as @e[tag=fountain,distance=..1,tag=mscplay,limit=1,scores={life=3009..}] run setblock ~ ~1 ~ stone_button[face=floor]
execute as @e[tag=fountain,distance=..1,tag=mscplay,limit=1,scores={life=3009..}] run kill @s