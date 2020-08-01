summon minecraft:armor_stand ~ ~ ~ {Tags:["screen","init","copy","curr"],NoGravity:1b,Marker:1b,Invisible:1b}
scoreboard players operation @e[tag=screen,tag=copy] x = @s x
tag @e[tag=copy,tag=screen] remove copy
execute as @e[tag=screen,tag=init,tag=curr] at @s run tp @s ~ ~1 ~
scoreboard players add @e[tag=screen,tag=init,tag=curr] y 1

scoreboard players add loop V 1
execute unless score loop V = height C run function games:camera/setup/helper_loopy