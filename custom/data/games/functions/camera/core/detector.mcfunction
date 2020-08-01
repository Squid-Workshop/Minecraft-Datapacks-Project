execute if score screen cooldown matches 0 run tp @e[tag=illusion] ~ ~-1000 ~
execute as @e[tag=screen] at @s run setblock ~ ~ ~ air
execute as @e[tag=screen] at @s run setblock ^ ^ ^1 air

#origin point
summon minecraft:area_effect_cloud ^ ^ ^0.1 {Duration:8,Tags:["detector","init","sync"]}
tp @e[tag=detector,tag=init,tag=sync] ^ ^ ^0.1 facing entity @s
execute as @e[tag=detector,tag=init,tag=sync] at @s run tp @s ~ ~ ~ facing ^ ^ ^-1
tag @e[tag=detector,tag=init,tag=sync] remove sync
#for loop
scoreboard players set loop V 0

#FOV 45

execute as @e[tag=detector,tag=init] at @s run tp @s ~ ~ ~ facing ^0.518 ^ ^10
#execute as @e[tag=detector,tag=init] at @s run tp @s ~ ~ ~ facing ^0.125 ^ ^1

function games:camera/core/detector/helper_detectorx

execute as @e[tag=detector,tag=init] at @s run tp @s ~ ~ ~ facing ^-4.14 ^ ^10
#execute as @e[tag=detector,tag=init] at @s run tp @s ~ ~ ~ facing ^-1 ^ ^1

execute as @e[tag=detector,tag=init] at @s run function games:camera/core/detector/helper_detectory



#remove init tag
tag @e[tag=init,tag=detector] remove init