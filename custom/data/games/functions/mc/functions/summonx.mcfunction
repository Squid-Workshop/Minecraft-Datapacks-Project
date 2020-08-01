#summon minecraft:armor_stand ~ ~ ~ {Tags:["camera"],NoGravity:1b,Marker:0,Invisible:0,display:{Name:"{\"text\":\"Camera\"}"}}

#minecraft:armor_stand ~ ~ ~ {Tags:["view"],NoGravity:1b,Marker:1b,Invisible:1b}

#################################summon######################################

#################################x#################################
# initialise camera x
scoreboard players set @e[tag=camera] x 1

####################for loop#######################
# 32 times
function games:mc/functions/loopx
function games:mc/functions/loopx
function games:mc/functions/loopx
function games:mc/functions/loopx
function games:mc/functions/loopx
function games:mc/functions/loopx
function games:mc/functions/loopx
function games:mc/functions/loopx
function games:mc/functions/loopx
function games:mc/functions/loopx
function games:mc/functions/loopx
function games:mc/functions/loopx
function games:mc/functions/loopx
function games:mc/functions/loopx
function games:mc/functions/loopx


####################for loop#######################

#execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502] at @s run tp @s ~ ~ ~ facing ^-1.73 ^ ^1

execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502] at @s run tp @s ~ ~ ~ facing ^-0.75 ^ ^1


#################################x#################################

execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502,scores={x=1..}] at @s run tp @s ^ ^ ^-0.001

