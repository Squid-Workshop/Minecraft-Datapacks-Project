summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"honeycomb_block",Count:1b}],HandItems:[{},{}],Motion:[0.0,3.0,0.0],Invisible:1,Tags:["reactor_eruption"]}
scoreboard players set @e[distance=0,tag=reactor_eruption] _var00 2000
scoreboard players set @e[distance=0,tag=reactor_eruption] _var01 1000
execute as @e[distance=0,tag=reactor_eruption] at @s unless entity @s[tag=randomized] run execute store result score @s y run data get entity @s Motion[1] 2000
execute as @e[distance=0,tag=reactor_eruption] at @s unless entity @s[tag=randomized] run execute store result score @s dx run data get entity @s UUID[1]
execute as @e[distance=0,tag=reactor_eruption] at @s unless entity @s[tag=randomized] run scoreboard players operation @s dx %= @s _var00
execute as @e[distance=0,tag=reactor_eruption] at @s unless entity @s[tag=randomized] run scoreboard players operation @s dx -= @s _var01
execute as @e[distance=0,tag=reactor_eruption] at @s unless entity @s[tag=randomized] run execute at @s run execute store result entity @s Motion[0] double .0005 run scoreboard players get @s dx
execute as @e[distance=0,tag=reactor_eruption] at @s unless entity @s[tag=randomized] run execute store result score @s dy run data get entity @s UUID[2]
execute as @e[distance=0,tag=reactor_eruption] at @s unless entity @s[tag=randomized] run scoreboard players operation @s dy %= @s _var00
execute as @e[distance=0,tag=reactor_eruption] at @s unless entity @s[tag=randomized] run scoreboard players operation @s dy -= @s _var01
execute as @e[distance=0,tag=reactor_eruption] at @s unless entity @s[tag=randomized] run scoreboard players operation @s y += @s dy
execute as @e[distance=0,tag=reactor_eruption] at @s unless entity @s[tag=randomized] run execute at @s run execute store result entity @s Motion[1] double .0005 run scoreboard players get @s y
execute as @e[distance=0,tag=reactor_eruption] at @s unless entity @s[tag=randomized] run execute store result score @s dz run data get entity @s UUID[3]
execute as @e[distance=0,tag=reactor_eruption] at @s unless entity @s[tag=randomized] run scoreboard players operation @s dz %= @s _var00
execute as @e[distance=0,tag=reactor_eruption] at @s unless entity @s[tag=randomized] run scoreboard players operation @s dz -= @s _var01
execute as @e[distance=0,tag=reactor_eruption] at @s unless entity @s[tag=randomized] run execute at @s run execute store result entity @s Motion[2] double .0005 run scoreboard players get @s dz
execute as @e[distance=0,tag=reactor_eruption] at @s unless entity @s[tag=randomized] run tag @s add randomized