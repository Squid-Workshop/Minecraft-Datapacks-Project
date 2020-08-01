#execute as @e[tag=lawnc] at @s run tp @e[tag=lawnd,distance=..4] @s

execute as @e[tag=lawnc] at @s run spreadplayers ~ ~ 1 4 false @e[tag=lawnd,distance=..4]

execute as @e[tag=lawnc] at @s run schedule function build:lawn/plantcoral 5t