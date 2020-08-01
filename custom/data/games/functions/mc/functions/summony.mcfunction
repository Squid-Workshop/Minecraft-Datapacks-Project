
#################################y#################################
####################for loop#######################
# 32 times
function games:mc/functions/loopy
function games:mc/functions/loopy
function games:mc/functions/loopy
function games:mc/functions/loopy
function games:mc/functions/loopy
function games:mc/functions/loopy
function games:mc/functions/loopy
function games:mc/functions/loopy
function games:mc/functions/loopy
function games:mc/functions/loopy
function games:mc/functions/loopy
function games:mc/functions/loopy
function games:mc/functions/loopy
function games:mc/functions/loopy
function games:mc/functions/loopy
function games:mc/functions/loopy

####################for loop#######################
#execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502] at @s run tp @s ~ ~ ~ facing ^ ^-1.73 ^1

execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502] at @s run tp @s ~ ~ ~ facing ^ ^0.2 ^1

execute as @e[tag=camera] at @s as @e[tag=view,distance=..0.502,scores={y=1..,x=1..}] at @s run scoreboard players operation @e[sort=nearest,scores={y=1..,x=0},limit=15] x = @s x
#################################y#################################

#################################summon######################################
