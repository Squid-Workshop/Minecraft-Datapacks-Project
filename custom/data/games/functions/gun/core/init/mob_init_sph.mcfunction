#/from MGS_2.0.1 gun mod/
scoreboard players set @s[type=ender_dragon] h 4000
scoreboard players set @s[type=ghast] h 4000
scoreboard players set @s[type=wither] h 3500
scoreboard players set @s[type=giant] h 11000
execute if entity @s[type=slime] store result score @s h run data get entity @s Size 500
execute if entity @s[type=magma_cube] store result score @s h run data get entity @s Size 500
scoreboard players add @s[type=slime] h 500
scoreboard players add @s[type=magma_cube] h 500