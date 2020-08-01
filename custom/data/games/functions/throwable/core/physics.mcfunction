execute as @e[tag=tracer,limit=1,sort=nearest] if score @s UID = @e[tag=thrown,limit=1,sort=nearest] UID run tp @s ~ ~ ~

execute as @e[tag=tracer,limit=1,sort=nearest] run scoreboard players operation @s life = @e[tag=thrown,limit=1,sort=nearest] life

