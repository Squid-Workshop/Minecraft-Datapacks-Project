execute as @a[tag=fbfired] run function games:autoshoot/mark
execute as @e[tag=rttgt] run function games:autoshoot/rotation
scoreboard players set @a dr 0



execute as @e[tag=fbhit,type=slime] store result score @s _var00 run data get entity @s Size
execute as @e[tag=fbhit,type=magma_cube] store result score @s _var00 run data get entity @s Size
scoreboard players set @e[tag=fbhit,type=giant] _var00 4
scoreboard players set @e[tag=fbhit,type=ravager] _var00 2
scoreboard players add @e[tag=fbhit,type=slime] _var00 1
scoreboard players add @e[tag=fbhit,type=magma_cube] _var00 1

execute as @e[tag=fbhit,type=slime] at @s anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[tag=rttgt,distance=..0.1] dr /= @s _var00
execute as @e[tag=fbhit,type=magma_cube] at @s anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[tag=rttgt,distance=..0.1] dr /= @s _var00
execute as @e[tag=fbhit,type=giant] at @s anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[tag=rttgt,distance=..0.1] dr /= @s _var00
execute as @e[tag=fbhit,type=ravager] at @s anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[tag=rttgt,distance=..0.1] dr /= @s _var00

execute as @e[tag=rttgt] run tellraw @a[tag=fbfired,tag=fbdebug] [{"text":"Offset is "},{"score":{"objective":"dr","name":"@s"}}]


execute as @e[tag=fbhit] at @s anchored eyes positioned ^ ^ ^ run execute if entity @e[tag=rttgt,scores={dr=..250},distance=..0.1] run tag @s add fbhst
execute as @e[tag=fbhit] at @s anchored eyes positioned ^ ^ ^ run tag @e[tag=rttgt,scores={dr=..2000},distance=..0.1] add fbeffect
execute as @e[tag=fbhit,type=!#games:undead] at @s anchored eyes positioned ^ ^ ^ run tag @e[tag=rttgt,scores={dr=..2000},distance=..0.1] add fbefnud
execute as @e[tag=fbhit,type=#games:undead] at @s anchored eyes positioned ^ ^ ^ run tag @e[tag=rttgt,scores={dr=..2000},distance=..0.1] add fbefud
execute as @e[tag=rttgt,tag=fbeffect,nbt={Age:0}] run function games:autoshoot/fireball_effect
tag @e[tag=!fbdeath,tag=fbhit] remove fbhit
