scoreboard players set loop V 0
tag @s add curr
execute at @s run tp @s ~ ~1 ~
function games:camera/setup/helper_loopy

tag @e[tag=curr,tag=screen] remove curr