tag @s add sqrtcalc
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["calsqrt"],Duration:1}
execute at @s run scoreboard players operation @e[tag=calsqrt,distance=..0.1,limit=1] _var00 = @s _var00
execute at @s run scoreboard players set @e[tag=calsqrt,distance=..0.1,limit=1] _var01 1000
execute at @s run scoreboard players set @e[tag=calsqrt,distance=..0.1,limit=1] _var02 0
execute at @s run scoreboard players set @e[tag=calsqrt,distance=..0.1,limit=1] _var03 2
execute at @s run execute unless score @e[tag=calsqrt,distance=..0.1,limit=1] _var01 = @e[tag=calsqrt,distance=..0.1,limit=1] _var02 run execute as @e[tag=calsqrt,distance=..0.1,limit=1] at @s run function math:sqrt_operation