execute as @e[tag=snkhd] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["snk","snkbdy"],Small:1b,Invisible:1b}
kill @e[tag=snkfood,distance=..0.1]
scoreboard players add @e[tag=snk] life 1
execute as @e[tag=snkcntr] at @s run function games:snake/setfood