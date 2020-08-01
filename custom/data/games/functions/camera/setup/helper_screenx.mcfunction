summon minecraft:armor_stand ~ ~ ~ {Tags:["screen","init"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=screen,tag=init] at @s run tp @s ~1 ~ ~
scoreboard players add @e[tag=screen,tag=init] x 1

scoreboard players add loop V 1

execute unless score loop V = width C run function games:camera/setup/helper_screenx
