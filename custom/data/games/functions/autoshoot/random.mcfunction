summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["autoshootrng"]}
execute store result score @s dx run data get entity @e[sort=nearest,limit=1,tag=autoshootrng] UUID[1]
execute positioned ~ ~-1.52 ~ run scoreboard players operation @s dx %= @e[tag=autoshootrandom,limit=1,sort=nearest] _var01
execute positioned ~ ~-1.52 ~ run scoreboard players operation @s dx -= @e[tag=autoshootrandom,limit=1,sort=nearest] _var02
execute store result score @s dy run data get entity @e[sort=nearest,limit=1,tag=autoshootrng] UUID[2]
execute positioned ~ ~-1.52 ~ run scoreboard players operation @s dy %= @e[tag=autoshootrandom,limit=1,sort=nearest] _var01
execute positioned ~ ~-1.52 ~ run scoreboard players operation @s dy -= @e[tag=autoshootrandom,limit=1,sort=nearest] _var02
execute store result score @s dz run data get entity @e[sort=nearest,limit=1,tag=autoshootrng] UUID[3]
execute positioned ~ ~-1.52 ~ run scoreboard players operation @s dz %= @e[tag=autoshootrandom,limit=1,sort=nearest] _var01
execute positioned ~ ~-1.52 ~ run scoreboard players operation @s dz -= @e[tag=autoshootrandom,limit=1,sort=nearest] _var02
kill @e[tag=autoshootrng,sort=nearest,limit=1]