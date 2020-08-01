execute as @e[tag=view] at @s run tp @s ^ ^ ^-0.2
scoreboard players add @e[tag=view] bulletrange 1

kill @e[tag=view,scores={bulletrange=320}]