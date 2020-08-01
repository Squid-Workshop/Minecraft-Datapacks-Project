
#summon bullet and face player
summon minecraft:area_effect_cloud ^ ^ ^0.4 {Duration:5,Tags:["bullet","b_shot","new_b","buck",slow]}

#execute anchored eyes positioned ^ ^-1 ^1 run tp @e[tag=new_b,limit=1,sort=nearest] ~ ~ ~ facing entity @s

#execute anchored eyes positioned ^ ^-1 ^1 run tp @e[tag=new_b,limit=1,sort=nearest] ~ ~ ~ 



execute at @e[tag=new_b,limit=1,sort=nearest] run tp @e[tag=new_b,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute if entity @s[scores={shift=0}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~1.6 ~

execute if entity @s[scores={shift=1..}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~1.25 ~


#sign name
scoreboard players operation @e[tag=new_b,limit=1,sort=nearest] UID = @s UID






#damage
execute as @e[tag=new_b,limit=1,sort=nearest] run scoreboard players set @s damage 3

#msg
#execute store result score v10 V run data get entity @s Rotation[0] 1000000
#execute store result score v11 V run data get entity @s Rotation[1] 1000000
execute store result entity @e[tag=new_b,limit=1,sort=nearest] Rotation[0] float 0.000001 run data get entity @s Rotation[0] 1000000
execute store result entity @e[tag=new_b,limit=1,sort=nearest] Rotation[1] float 0.000001 run data get entity @s Rotation[1] 1000000




#recoil

execute if entity @s[scores={recoil=3..5}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.2 ~-2
execute if entity @s[scores={recoil=6..8}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.4 ~-3
execute if entity @s[scores={recoil=9..13}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.7 ~-5
execute if entity @s[scores={recoil=14..17}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.0 ~-8
execute if entity @s[scores={recoil=18..}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.8 ~-12




#score spread

scoreboard players set @e[tag=new_b,limit=1,sort=nearest] spread 3

#spread
execute as @e[tag=new_b,limit=1,sort=nearest] at @s run function games:gun/core/spread/spread

scoreboard players set @e[tag=new_b,limit=1,sort=nearest] spread 1
execute as @e[tag=new_b,limit=1,sort=nearest] at @s run function games:gun/core/spread/spread

execute as @e[tag=new_b,limit=1,sort=nearest] at @s run function games:gun/core/fire




#update bullet status
tag @e[tag=new_b,limit=1,sort=nearest] add fired_b

tag @e[tag=new_b,limit=1,sort=nearest] add offset

tag @e[tag=new_b,limit=1,sort=nearest] remove new_b





