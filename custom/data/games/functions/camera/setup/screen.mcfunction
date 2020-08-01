#origin point
summon minecraft:armor_stand ~ ~ ~ {Tags:["screen","init"],NoGravity:1b,Marker:1b,Invisible:1b}
#scoreboard players add @e[tag=screen,tag=init] x 1
#scoreboard players add @e[tag=screen,tag=init] y 1
#for loop
scoreboard players set loop V 0
execute as @e[tag=screen,tag=init] at @s run tp @s ~1 ~ ~
function games:camera/setup/helper_screenx

execute as @e[tag=screen,tag=init] at @s run function games:camera/setup/helper_screeny



#remove init tag
tag @e[tag=init,tag=screen] remove init