
#summon bullet and sky
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["bullet","new_b","grenade","slow"]}

execute at @e[tag=new_b,limit=1,sort=nearest] run tp @e[tag=new_b,limit=1,sort=nearest] ~ ~ ~ facing entity @s


#sign name
scoreboard players operation @e[tag=new_b,limit=1,sort=nearest] UID = @s UID

#damage
execute as @e[tag=new_b,limit=1,sort=nearest] run scoreboard players set @s damage 3

#msg
#execute store result score v10 V run data get entity @s Rotation[0] 1000000
#execute store result score v11 V run data get entity @s Rotation[1] 1000000
execute store result entity @e[tag=new_b,limit=1,sort=nearest] Rotation[0] float 0.000001 run data get entity @s Rotation[0] 1000000
execute store result entity @e[tag=new_b,limit=1,sort=nearest] Rotation[1] float 0.000001 run data get entity @s Rotation[1] 1000000


#score spread
#scoreboard players set @e[tag=new_b,limit=1,sort=nearest] spread 5
#execute as @e[tag=new_b,limit=1,sort=nearest] at @s run function games:gun/core/spread/spread





execute as @e[tag=new_b,limit=1,sort=nearest] at @s run function games:gun/core/fire

#execute at @e[tag=new_b,limit=1,sort=nearest] run tp @e[tag=new_b,limit=1,sort=nearest] ~ ~ ~ facing ~ ~5 ~


#update bullet status
tag @e[tag=new_b,limit=1,sort=nearest] add fired_b

tag @e[tag=new_b,limit=1,sort=nearest] remove new_b





