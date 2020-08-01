scoreboard players set @s _var01 100

execute at @s[tag=wpb,scores={_var01=100}] run execute store result score @s x run data get entity @s Pos[0] 100
execute at @s[tag=wpb,scores={_var01=100}] run execute store result score @s y run data get entity @s Pos[1] 100
execute at @s[tag=wpb,scores={_var01=100}] run execute store result score @s z run data get entity @s Pos[2] 100
execute at @s[tag=wpb,scores={_var01=100}] run scoreboard players operation @s x %= @s _var01
execute at @s[tag=wpb,scores={_var01=100}] run scoreboard players operation @s y %= @s _var01
execute at @s[tag=wpb,scores={_var01=100}] run scoreboard players operation @s z %= @s _var01

#+y
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=straight,facing=west,half=bottom] if entity @s[scores={y=50..}] if entity @s[scores={x=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=straight,facing=east,half=bottom] if entity @s[scores={y=50..}] if entity @s[scores={x=..49}] run tag @s remove scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=straight,facing=north,half=bottom] if entity @s[scores={y=50..}] if entity @s[scores={z=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=straight,facing=south,half=bottom] if entity @s[scores={y=50..}] if entity @s[scores={z=..49}] run tag @s remove scepbblock


#-y
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=straight,facing=west,half=top] if entity @s[scores={y=..49}] if entity @s[scores={x=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=straight,facing=east,half=top] if entity @s[scores={y=..49}] if entity @s[scores={x=..49}] run tag @s remove scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=straight,facing=north,half=top] if entity @s[scores={y=..49}] if entity @s[scores={z=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=straight,facing=south,half=top] if entity @s[scores={y=..49}] if entity @s[scores={z=..49}] run tag @s remove scepbblock


#non_straight
#inner outer
#bottom same
#+x+z west i r north i l unless north o l west o r
#+x-z south i r west i l unless
#-x-z east i r south i l unless
#-x+z north i r east i l unless

#+y
#inner
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_right,facing=west,half=bottom] if entity @s[scores={y=50..}] if entity @s[scores={x=50..}] if entity @s[scores={z=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_left,facing=north,half=bottom] if entity @s[scores={y=50..}] if entity @s[scores={x=50..}] if entity @s[scores={z=50..}] run tag @s remove scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_right,facing=south,half=bottom] if entity @s[scores={y=50..}] if entity @s[scores={x=50..}] if entity @s[scores={z=..49}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_left,facing=west,half=bottom] if entity @s[scores={y=50..}] if entity @s[scores={x=50..}] if entity @s[scores={z=..49}] run tag @s remove scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_right,facing=east,half=bottom] if entity @s[scores={y=50..}] if entity @s[scores={x=..49}] if entity @s[scores={z=..49}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_left,facing=south,half=bottom] if entity @s[scores={y=50..}] if entity @s[scores={x=..49}] if entity @s[scores={z=..49}] run tag @s remove scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_right,facing=north,half=bottom] if entity @s[scores={y=50..}] if entity @s[scores={x=..49}] if entity @s[scores={z=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_left,facing=east,half=bottom] if entity @s[scores={y=50..}] if entity @s[scores={x=..49}] if entity @s[scores={z=50..}] run tag @s remove scepbblock

#outer
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=west,half=bottom] if entity @s[scores={y=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=west,half=bottom] if entity @s[scores={x=..49}] if entity @s[scores={z=..49}] run tag @s add scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=north,half=bottom] if entity @s[scores={y=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=north,half=bottom] if entity @s[scores={x=..49}] if entity @s[scores={z=..49}] run tag @s add scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=south,half=bottom] if entity @s[scores={y=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=south,half=bottom] if entity @s[scores={x=..49}] if entity @s[scores={z=50..}] run tag @s add scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=west,half=bottom] if entity @s[scores={y=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=west,half=bottom] if entity @s[scores={x=..49}] if entity @s[scores={z=50..}] run tag @s add scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=east,half=bottom] if entity @s[scores={y=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=east,half=bottom] if entity @s[scores={x=50..}] if entity @s[scores={z=50..}] run tag @s add scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=south,half=bottom] if entity @s[scores={y=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=south,half=bottom] if entity @s[scores={x=50..}] if entity @s[scores={z=50..}] run tag @s add scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=north,half=bottom] if entity @s[scores={y=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=north,half=bottom] if entity @s[scores={x=50..}] if entity @s[scores={z=..49}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=east,half=bottom] if entity @s[scores={y=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=east,half=bottom] if entity @s[scores={x=50..}] if entity @s[scores={z=..49}] run tag @s remove scepbblock

#-y
#inner
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_right,facing=west,half=top] if entity @s[scores={y=..49}] if entity @s[scores={x=50..}] if entity @s[scores={z=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_left,facing=north,half=top] if entity @s[scores={y=..49}] if entity @s[scores={x=50..}] if entity @s[scores={z=50..}] run tag @s remove scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_right,facing=south,half=top] if entity @s[scores={y=..49}] if entity @s[scores={x=50..}] if entity @s[scores={z=..49}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_left,facing=west,half=top] if entity @s[scores={y=..49}] if entity @s[scores={x=50..}] if entity @s[scores={z=..49}] run tag @s remove scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_right,facing=east,half=top] if entity @s[scores={y=..49}] if entity @s[scores={x=..49}] if entity @s[scores={z=..49}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_left,facing=south,half=top] if entity @s[scores={y=..49}] if entity @s[scores={x=..49}] if entity @s[scores={z=..49}] run tag @s remove scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_right,facing=north,half=top] if entity @s[scores={y=..49}] if entity @s[scores={x=..49}] if entity @s[scores={z=50..}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=inner_left,facing=east,half=top] if entity @s[scores={y=..49}] if entity @s[scores={x=..49}] if entity @s[scores={z=50..}] run tag @s remove scepbblock

#outer
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=west,half=top] if entity @s[scores={y=..49}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=west,half=top] if entity @s[scores={x=..49}] if entity @s[scores={z=..49}] run tag @s add scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=north,half=top] if entity @s[scores={y=..49}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=north,half=top] if entity @s[scores={x=..49}] if entity @s[scores={z=..49}] run tag @s add scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=south,half=top] if entity @s[scores={y=..49}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=south,half=top] if entity @s[scores={x=..49}] if entity @s[scores={z=50..}] run tag @s add scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=west,half=top] if entity @s[scores={y=..49}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=west,half=top] if entity @s[scores={x=..49}] if entity @s[scores={z=50..}] run tag @s add scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=east,half=top] if entity @s[scores={y=..49}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=east,half=top] if entity @s[scores={x=50..}] if entity @s[scores={z=50..}] run tag @s add scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=south,half=top] if entity @s[scores={y=..49}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=south,half=top] if entity @s[scores={x=50..}] if entity @s[scores={z=50..}] run tag @s add scepbblock

execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=north,half=top] if entity @s[scores={y=..49}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_right,facing=north,half=top] if entity @s[scores={x=50..}] if entity @s[scores={z=..49}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=east,half=top] if entity @s[scores={y=..49}] run tag @s remove scepbblock
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:stairs[shape=outer_left,facing=east,half=top] if entity @s[scores={x=50..}] if entity @s[scores={z=..49}] run tag @s remove scepbblock



scoreboard players reset @s _var01
scoreboard players reset @s x
scoreboard players reset @s y
scoreboard players reset @s z

#minecraft:stairs[shape=straight,facing=west,half=top]