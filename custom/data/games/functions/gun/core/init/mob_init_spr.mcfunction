#/from MGS_2.0.1 gun mod/
scoreboard players set @s[type=ender_dragon] r 2500
scoreboard players set @s[type=ghast] r 2000
scoreboard players set @s[type=giant] r 1800
execute if entity @s[type=slime] store result score @s r run data get entity @s Size 250
execute if entity @s[type=magma_cube] store result score @s r run data get entity @s Size 250
scoreboard players add @s[type=slime] r 250
scoreboard players add @s[type=magma_cube] r 250