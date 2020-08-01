scoreboard players set loop V 0
tag @s add curr


execute as @e[tag=detector,tag=init,tag=curr] at @s run tp @s ~ ~ ~ facing ^ ^0.518 ^10
#execute as @e[tag=detector,tag=init,tag=curr] at @s run tp @s ~ ~ ~ facing ^ ^0.125 ^1

function games:camera/core/detector/helper_loopy

execute as @e[tag=detector,tag=init,tag=curr] at @s run tp @s ~ ~ ~ facing ^ ^-4.14 ^10
#execute as @e[tag=detector,tag=init,tag=curr] at @s run tp @s ~ ~ ~ facing ^ ^-1 ^1

tag @e[tag=curr,tag=detector] remove curr