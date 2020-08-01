execute as @e[tag=pin] unless entity @e[tag=orig] run tag @s add sorig
execute as @e[tag=pin] if entity @e[tag=orig] unless entity @e[tag=dest] run tag @s add sdest

execute as @e[tag=pin,tag=sorig] at @s run execute at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"start\"",CustomNameVisible:1b,Tags:["orig"],NoGravity:1b}
execute as @e[tag=pin,tag=sorig] at @s run execute store result score @e[tag=orig,sort=nearest,limit=1] x run data get entity @e[tag=orig,sort=nearest,limit=1] Pos[0]
execute as @e[tag=pin,tag=sorig] at @s run execute store result entity @e[tag=orig,limit=1,sort=nearest] Pos[0] double 1 run scoreboard players get @e[limit=1,sort=nearest,tag=orig] x
execute as @e[tag=pin,tag=sorig] at @s run execute store result score @e[tag=orig,sort=nearest,limit=1] y run data get entity @e[tag=orig,sort=nearest,limit=1] Pos[1]
execute as @e[tag=pin,tag=sorig] at @s run execute store result entity @e[tag=orig,limit=1,sort=nearest] Pos[1] double 1 run scoreboard players get @e[limit=1,sort=nearest,tag=orig] y
execute as @e[tag=pin,tag=sorig] at @s run execute store result score @e[tag=orig,sort=nearest,limit=1] z run data get entity @e[tag=orig,sort=nearest,limit=1] Pos[2]
execute as @e[tag=pin,tag=sorig] at @s run execute store result entity @e[tag=orig,limit=1,sort=nearest] Pos[2] double 1 run scoreboard players get @e[limit=1,sort=nearest,tag=orig] z
execute as @e[tag=pin,tag=sorig] at @s run execute as @e[sort=nearest,limit=1,tag=orig] at @s run tp @s ~0.5 ~-0.5 ~0.5

execute as @e[tag=pin,tag=sdest] at @s run execute at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"end\"",CustomNameVisible:1b,Tags:["dest"],NoGravity:1b}
execute as @e[tag=pin,tag=sdest] at @s run execute store result score @e[tag=dest,sort=nearest,limit=1] x run data get entity @e[tag=dest,sort=nearest,limit=1] Pos[0]
execute as @e[tag=pin,tag=sdest] at @s run execute store result entity @e[tag=dest,limit=1,sort=nearest] Pos[0] double 1 run scoreboard players get @e[limit=1,sort=nearest,tag=dest] x
execute as @e[tag=pin,tag=sdest] at @s run execute store result score @e[tag=dest,sort=nearest,limit=1] y run data get entity @e[tag=dest,sort=nearest,limit=1] Pos[1]
execute as @e[tag=pin,tag=sdest] at @s run execute store result entity @e[tag=dest,limit=1,sort=nearest] Pos[1] double 1 run scoreboard players get @e[limit=1,sort=nearest,tag=dest] y
execute as @e[tag=pin,tag=sdest] at @s run execute store result score @e[tag=dest,sort=nearest,limit=1] z run data get entity @e[tag=dest,sort=nearest,limit=1] Pos[2]
execute as @e[tag=pin,tag=sdest] at @s run execute store result entity @e[tag=dest,limit=1,sort=nearest] Pos[2] double 1 run scoreboard players get @e[limit=1,sort=nearest,tag=dest] z
execute as @e[tag=pin,tag=sdest] at @s run execute as @e[sort=nearest,limit=1,tag=dest] at @s run tp @s ~0.5 ~-0.5 ~0.5
kill @e[tag=pin]