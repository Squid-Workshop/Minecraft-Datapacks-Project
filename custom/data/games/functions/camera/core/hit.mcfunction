tag @s add hit
execute as @e[tag=screen] if score @s x = @e[limit=1,tag=cbp] x if score @s y = @e[limit=1,tag=cbp] y at @s run summon minecraft:villager ^ ^ ^2 {NoAI:1b,NoGravity:1b,Tags:["illusion"]}