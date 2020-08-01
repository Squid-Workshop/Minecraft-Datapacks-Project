execute as @e[tag=dist] at @s run tp @s ~ ~ ~ facing entity @e[tag=dest,limit=1,sort=nearest]

execute as @e[tag=dist] at @s run function build:lines/d_timely

execute as @e[tag=dist] at @s if entity @e[tag=dest,distance=..0.0002] run scoreboard players operation @e[tag=orig] move = @s move
execute as @e[tag=dist] at @s if entity @e[tag=dest,distance=..0.0002] run execute as @e[tag=orig] at @s run scoreboard players operation @s move /= @s _var00


execute as @e[tag=dist] at @s if entity @e[tag=dest,distance=..0.0002] run function build:lines/draw_summon
execute as @e[tag=dist] at @s if entity @e[tag=dest,distance=..0.0002] run kill @s



