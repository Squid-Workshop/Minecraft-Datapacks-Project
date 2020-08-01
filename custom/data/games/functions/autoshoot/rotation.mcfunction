execute store result score @s _var05 run data get entity @s Owner[1]
execute as @a store result score @s _var05 run data get entity @s UUID[1]
execute at @a if score @p _var05 = @s _var05 run tag @p add selected


execute at @a[tag=selected] run summon area_effect_cloud ~ ~1.62 ~ {Tags:["rtrot"],Duration:0}
execute at @a[tag=selected] positioned ~ ~1.62 ~ run execute at @e[distance=..0.1,tag=rtrot] run tp @e[distance=..0.1,tag=rtrot] ~ ~ ~ facing entity @s

execute at @a[tag=selected] positioned ~ ~1.62 ~ run execute as @e[distance=..0.1,tag=rtrot] store result score @s _var00 run data get entity @s Rotation[0] 1000
execute as @a[tag=selected] store result score @s _var00 run data get entity @s Rotation[0] 1000
execute as @a[tag=selected] if entity @s[scores={_var00=..0}] run scoreboard players add @s _var00 360000
execute at @a[tag=selected] positioned ~ ~1.62 ~ run execute as @e[distance=..0.1,tag=rtrot] if entity @s[scores={_var00=..0}] run scoreboard players add @s _var00 360000
execute as @a[tag=selected] at @s positioned ~ ~1.62 ~ run execute if score @e[limit=1,distance=..0.1,tag=rtrot] _var00 >= @s _var00 run scoreboard players operation @s _var00 >< @e[limit=1,distance=..0.1,tag=rtrot] _var00
execute as @a[tag=selected] at @s positioned ~ ~1.62 ~ run scoreboard players operation @s _var00 -= @e[limit=1,distance=..0.1,tag=rtrot] _var00

execute as @a[tag=selected] run scoreboard players set @s _var04 0
execute as @a[tag=selected] if entity @s[scores={_var00=180000..}] run scoreboard players set @s _var04 360000
execute as @a[tag=selected] if entity @s[scores={_var00=180000..}] run scoreboard players operation @s _var04 -= @s _var00
execute as @a[tag=selected] if entity @s[scores={_var00=180000..}] run scoreboard players set @s _var00 0
execute as @a[tag=selected] run scoreboard players operation @s _var00 += @s _var04

execute at @a[tag=selected] positioned ~ ~1.62 ~ run execute as @e[distance=..0.1,tag=rtrot] store result score @s _var01 run data get entity @s Rotation[1] 1000
execute as @a[tag=selected] store result score @s _var01 run data get entity @s Rotation[1] 1000
execute as @a[tag=selected] at @s positioned ~ ~1.62 ~ run execute if score @e[limit=1,distance=..0.1,tag=rtrot] _var01 >= @s _var01 run scoreboard players operation @s _var01 >< @e[limit=1,distance=..0.1,tag=rtrot] _var01
execute as @a[tag=selected] at @s positioned ~ ~1.62 ~ run scoreboard players operation @s _var01 -= @e[limit=1,distance=..0.1,tag=rtrot] _var01


execute as @a[tag=selected] run scoreboard players operation @s dr = @s _var00
execute as @a[tag=selected] if score @s _var01 > @s dr run scoreboard players operation @s dr = @s _var01
scoreboard players operation @s dr = @a[tag=selected,limit=1] dr


execute store result score @s _var00 run data get entity @s Pos[0] 100
execute at @s as @a[tag=selected,limit=1] store result score @s _var00 run data get entity @s Pos[0] 100
execute if score @a[tag=selected,limit=1] _var00 >= @s _var00 run scoreboard players operation @s _var00 >< @a[tag=selected,limit=1] _var00
scoreboard players operation @s _var00 -= @a[tag=selected,limit=1] _var00

execute store result score @s _var01 run data get entity @s Pos[1] 100
execute at @s as @a[tag=selected,limit=1] store result score @s _var01 run data get entity @s Pos[1] 100
execute if score @a[tag=selected,limit=1] _var01 >= @s _var01 run scoreboard players operation @s _var01 >< @a[tag=selected,limit=1] _var01
scoreboard players operation @s _var01 -= @a[tag=selected,limit=1] _var01

execute store result score @s _var02 run data get entity @s Pos[2] 100
execute at @s as @a[tag=selected,limit=1] store result score @s _var02 run data get entity @s Pos[2] 100
execute if score @a[tag=selected,limit=1] _var02 >= @s _var02 run scoreboard players operation @s _var02 >< @a[tag=selected,limit=1] _var02
scoreboard players operation @s _var02 -= @a[tag=selected,limit=1] _var02

scoreboard players operation @s _var03 = @s _var00
scoreboard players operation @s _var03 *= @s _var00
scoreboard players operation @s _var04 = @s _var01
scoreboard players operation @s _var04 *= @s _var01
scoreboard players operation @s _var03 += @s _var04
scoreboard players operation @s _var04 = @s _var02
scoreboard players operation @s _var04 *= @s _var02
scoreboard players operation @s _var03 += @s _var04

scoreboard players operation @s _var00 = @s _var03


execute at @s run function math:sqrt


scoreboard players operation @s dr *= @s _var00

scoreboard players set @s _var00 10000
scoreboard players operation @s dr /= @s _var00

kill @e[tag=rtrot]
tag @a remove selected

