

#tp @s ~ ~ ~ ~180 ~

scoreboard players set @s dx 0
scoreboard players set @s dy 0
scoreboard players set @s dz 0

execute store result entity @s Rotation[0] float 0.000001 run data get entity @s Rotation[0] 1000000
execute store result entity @s Rotation[1] float 0.000001 run data get entity @s Rotation[1] 1000000



#spread
execute if entity @s[tag=bullet] run scoreboard players set @s spread 5
execute if entity @s[tag=bullet] run function games:gun/core/spread/spread

execute at @s run tp @s ~ ~ ~ ~180 ~

function games:gun/core/fire


