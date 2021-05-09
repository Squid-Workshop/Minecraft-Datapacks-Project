execute if block ~ ~1 ~ #buttons[powered=true] unless entity @e[distance=..1,tag=mscplay] run summon armor_stand ~ ~0.5 ~ {Tags:["mscplay","local"]}
fill ~ ~1 ~ ~ ~1 ~ redstone_block replace #buttons[powered=true]

execute as @e[tag=local,distance=..1,tag=mscplay,limit=1] run function music:song/gczg

execute as @e[tag=local,distance=..1,tag=mscplay,limit=1,scores={life=1526..}] run setblock ~ ~1 ~ stone_button[face=floor]
execute as @e[tag=local,distance=..1,tag=mscplay,limit=1,scores={life=1526..}] run kill @s