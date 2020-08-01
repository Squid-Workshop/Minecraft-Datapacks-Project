execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502] run scoreboard players add @s y 1

execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502,scores={y=2..}] at @s run tp @s ~ ~ ~ facing ^ ^-6.55 ^100

execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502,scores={y=1}] at @s run summon minecraft:armor_stand ^ ^ ^ {Tags:["view"],NoGravity:1b,Marker:1b,Invisible:1b}

execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502] at @s run scoreboard players add @s y 0

execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502] at @s run scoreboard players add @s x 0

#execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502,scores={y=1,x=1..}] at @s run scoreboard players operation @e[limit=1,scores={y=0},sort=nearest] x = @s x

execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502,scores={y=1}] at @s run tp @e[limit=1,scores={y=0},sort=nearest] ^ ^ ^0.01 facing entity @s

execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502,scores={y=0}] at @s run tp @s ^ ^ ^0.01 facing ^ ^ ^-1 