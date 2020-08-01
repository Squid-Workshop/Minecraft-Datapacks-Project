execute as @e[tag=camera] at @s run summon minecraft:armor_stand ^ ^ ^0.5 {Tags:["view"],NoGravity:1b,Marker:1b,Invisible:1b}

scoreboard players add @e[tag=view] x 0

execute as @e[tag=camera] at @s at @e[tag=view,scores={x=0},distance=..0.502] run tp @e[tag=view,scores={x=0},distance=..0.502] ~ ~ ~ facing entity @s

#execute as @e[tag=camera] at @s at @e[tag=view,scores={x=0},distance=..0.502] run scoreboard players operation @e[tag=view,scores={x=0},distance=..0.502] x = @s x

execute as @e[tag=camera] run scoreboard players add @s x 1

execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502] run scoreboard players add @s x 1

execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502] at @s run tp @s ~ ~ ~ facing ^6.55 ^ ^100
