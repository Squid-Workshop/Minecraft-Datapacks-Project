scoreboard players operation @s _var04 = @s _var00
scoreboard players operation @s _var04 /= @s _var01
scoreboard players operation @s _var04 += @s _var01
scoreboard players operation @s _var04 /= @s _var03
scoreboard players operation @s _var02 = @s _var01
execute if score @s _var04 = @s _var02 run scoreboard players operation @e[tag=sqrtcalc,limit=1,distance=..0.1] _var00 = @s _var04
execute if score @s _var04 = @s _var02 run tag @e[tag=sqrtcalc,limit=1,distance=..0.1] remove sqrtcalc
execute if score @s _var04 = @s _var02 run kill @s
execute unless score @s _var04 = @s _var02 run scoreboard players operation @s _var01 = @s _var04
execute unless score @s _var04 = @s _var02 run execute as @e[tag=calsqrt,distance=..0.1,limit=1] at @s run function math:sqrt_operation