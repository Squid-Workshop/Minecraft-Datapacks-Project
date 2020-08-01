#add score
execute as @e[tag=matrix] at @s run scoreboard players add @s summoned 1
execute as @e[tag=matrix] at @s run scoreboard players add @s summoned_c 1

#init
summon minecraft:villager -1351 34 -1672 {NoAI:1b,Tags:["matrix"]}

#add row
execute as @e[tag=matrix] unless entity @s[scores={summoned_c=3..}] at @s run scoreboard players add @s summoned_c 1

execute as @e[tag=matrix,scores={summoned_c=..1}] at @s run summon minecraft:villager ~1.5 ~ ~ {NoAI:1b,Tags:["matrix"]}

#add row
execute as @e[tag=matrix] unless entity @s[scores={summoned_c=3..}] at @s run scoreboard players add @s summoned_c 1

execute as @e[tag=matrix,scores={summoned_c=..1}] at @s run summon minecraft:villager ~1.5 ~ ~ {NoAI:1b,Tags:["matrix"]}

#add row
execute as @e[tag=matrix] unless entity @s[scores={summoned_c=3..}] at @s run scoreboard players add @s summoned_c 1

execute as @e[tag=matrix,scores={summoned_c=..1}] at @s run summon minecraft:villager ~1.5 ~ ~ {NoAI:1b,Tags:["matrix"]}

#add row
execute as @e[tag=matrix] unless entity @s[scores={summoned_c=3..}] at @s run scoreboard players add @s summoned_c 1

execute as @e[tag=matrix,scores={summoned_c=..1}] at @s run summon minecraft:villager ~1.5 ~ ~ {NoAI:1b,Tags:["matrix"]}

#add row
execute as @e[tag=matrix] unless entity @s[scores={summoned_c=3..}] at @s run scoreboard players add @s summoned_c 1

execute as @e[tag=matrix,scores={summoned_c=..1}] at @s run summon minecraft:villager ~1.5 ~ ~ {NoAI:1b,Tags:["matrix"]}


#add col
execute as @e[tag=matrix] unless entity @s[scores={summoned=3..}] at @s run scoreboard players add @s summoned 1

execute as @e[tag=matrix,scores={summoned=..1}] at @s run summon minecraft:villager ~ ~ ~-1.5 {NoAI:1b,Tags:["matrix"]}

#add col
execute as @e[tag=matrix] unless entity @s[scores={summoned=3..}] at @s run scoreboard players add @s summoned 1

execute as @e[tag=matrix,scores={summoned=..1}] at @s run summon minecraft:villager ~ ~ ~-1.5 {NoAI:1b,Tags:["matrix"]}

#add col
execute as @e[tag=matrix] unless entity @s[scores={summoned=3..}] at @s run scoreboard players add @s summoned 1

execute as @e[tag=matrix,scores={summoned=..1}] at @s run summon minecraft:villager ~ ~ ~-1.5 {NoAI:1b,Tags:["matrix"]}

#add col
execute as @e[tag=matrix] unless entity @s[scores={summoned=3..}] at @s run scoreboard players add @s summoned 1

execute as @e[tag=matrix,scores={summoned=..1}] at @s run summon minecraft:villager ~ ~ ~-1.5 {NoAI:1b,Tags:["matrix"]}


#clear summon scores
execute as @e[tag=matrix] unless entity @s[scores={summoned=3..}] at @s run scoreboard players set @s summoned 3
execute as @e[tag=matrix] unless entity @s[scores={summoned=3..}] at @s run scoreboard players set @s summoned_c 3

#face back
execute as @e[tag=matrix,scores={summoned=3}] run function site:playground/face_left
#execute as @e[tag=matrix,scores={summoned=3}] run function site:playground/face_back



