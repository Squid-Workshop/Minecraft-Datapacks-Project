summon area_effect_cloud ~ ~ ~ {Tags:["lcrng"]}
scoreboard players set @s _var03 100
execute store result score @s _var01 run data get entity @e[tag=lcrng,distance=..0.1,limit=1] UUID[1]
execute store result score @s _var02 run data get entity @e[tag=lcrng,distance=..0.1,limit=1] UUID[2]
scoreboard players operation @s _var01 %= @s _var03
scoreboard players operation @s _var02 %= @s _var03
kill @e[tag=lcrng,distance=..0.1]