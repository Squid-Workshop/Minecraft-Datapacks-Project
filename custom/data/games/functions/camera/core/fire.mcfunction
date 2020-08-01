
#summon bullet and face player
summon minecraft:area_effect_cloud ^ ^ ^0.2 {Duration:30,Tags:["detect","new_d"]}

execute as @e[tag=new_d,limit=1,sort=nearest] at @s run tp @s ~ ~0.6 ~

#sign name
scoreboard players operation @e[tag=new_d,limit=1,sort=nearest] UID = @s UID
scoreboard players operation @e[tag=new_d,limit=1,sort=nearest] x = @s x
scoreboard players operation @e[tag=new_d,limit=1,sort=nearest] y = @s y

#sound & effects



execute if entity @s[type=armor_stand] positioned ~ ~0.6 ~ run particle minecraft:flash ^ ^ ^0.3 0 0 0 1 1 force


#damage
execute as @e[tag=new_d,limit=1,sort=nearest] run scoreboard players set @s damage 2

#msg
#execute store result score v10 V run data get entity @s Rotation[0] 1000000
#execute store result score v11 V run data get entity @s Rotation[1] 1000000
execute store result entity @e[tag=new_d,limit=1,sort=nearest] Rotation[0] float 0.000001 run data get entity @s Rotation[0] 1000000
execute store result entity @e[tag=new_d,limit=1,sort=nearest] Rotation[1] float 0.000001 run data get entity @s Rotation[1] 1000000



#spread
execute as @e[tag=new_d,limit=1,sort=nearest] at @s run function games:camera/core/fire_helper

#update bullet status
tag @e[tag=new_d,limit=1,sort=nearest] add fired_d

tag @e[tag=new_d,limit=1,sort=nearest] remove new_d

