execute at @s run summon area_effect_cloud ^ ^ ^ {Tags:["caltrig"],Duration:1}
execute at @s run scoreboard players operation @e[distance=..0.1,tag=caltrig,limit=1] _var00 = @s _var00
execute at @s run tp @e[distance=..0.1,tag=caltrig,limit=1] ~ ~ ~ 0 0
execute at @s store result entity @e[distance=..0.1,tag=caltrig,limit=1] Rotation[0] float 0.0001 run scoreboard players get @e[distance=..0.1,tag=caltrig,limit=1] _var00
execute at @e[distance=..0.1,tag=caltrig,limit=1] run summon area_effect_cloud ^ ^ ^-1 {Tags:["caltrig"],Duration:1}
execute at @s run execute store result score @e[distance=..0.1,tag=caltrig,limit=1] _var01 run data get entity @s Pos[2] 10000
execute at @e[distance=..0.1,tag=caltrig,limit=1] positioned ^ ^ ^-1 run execute store result score @e[distance=..0.1,tag=caltrig,limit=1] _var02 run data get entity @e[distance=..0.1,tag=caltrig,limit=1] Pos[2] 10000
execute as @e[distance=..0.1,tag=caltrig,limit=1] at @s positioned ^ ^ ^-1 run scoreboard players operation @s _var01 -= @e[distance=..0.1,tag=caltrig,limit=1] _var02
execute at @s run scoreboard players operation @s _var00 = @e[distance=..0.1,tag=caltrig,limit=1] _var01
kill @e[tag=caltrig,distance=..1.01]