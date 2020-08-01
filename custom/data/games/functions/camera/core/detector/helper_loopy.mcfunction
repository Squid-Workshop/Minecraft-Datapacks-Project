summon minecraft:area_effect_cloud ^ ^ ^0.1 {Duration:8,Tags:["detector","init","copy","curr","sync"]}
tp @e[tag=detector,tag=init,tag=sync] ^ ^ ^0.1 facing entity @s
execute as @e[tag=detector,tag=init,tag=sync] at @s run tp @s ~ ~ ~ facing ^ ^ ^-1
tag @e[tag=detector,tag=init,tag=sync] remove sync

scoreboard players operation @e[tag=detector,tag=copy] x = @s x
tag @e[tag=copy,tag=detector] remove copy
execute as @e[tag=detector,tag=init,tag=curr] at @s run tp @s ~ ~ ~ facing ^ ^0.518 ^10
#execute as @e[tag=detector,tag=init,tag=curr] at @s run tp @s ~ ~ ~ facing ^ ^0.125 ^1
scoreboard players add @e[tag=detector,tag=init,tag=curr] y 1

scoreboard players add loop V 1
execute unless score loop V >= height C run function games:camera/core/detector/helper_loopy