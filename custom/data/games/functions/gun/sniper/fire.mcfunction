
#summon bullet and face player
summon minecraft:area_effect_cloud ^ ^ ^0.4 {Duration:30,Tags:["bullet","b_sniper","new_b"]}

tag @s add me

#hack
execute if score rule hack matches 1 run tp @s ~ ~ ~ facing entity @p[tag=!me]

#execute anchored eyes positioned ^ ^-1 ^1 run tp @e[tag=new_b,limit=1,sort=nearest] ~ ~ ~ facing entity @s

#execute anchored eyes positioned ^ ^-1 ^1 run tp @e[tag=new_b,limit=1,sort=nearest] ~ ~ ~ 



execute at @e[tag=new_b,limit=1,sort=nearest] run tp @e[tag=new_b,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute if entity @s[scores={shift=0}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~1.6 ~

execute if entity @s[scores={shift=1..}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~1.25 ~


#sign name
scoreboard players operation @e[tag=new_b,limit=1,sort=nearest] UID = @s UID

#sound & effects
playsound minecraft:gun/awp/awp_02 player @a ~ ~ ~ 2 1
execute as @a[distance=31..] run playsound minecraft:gun/awp/awp_distant player @s ~ ~ ~ 10 1

execute if entity @s[scores={shift=0}] positioned ~ ~1.6 ~ run particle minecraft:flame ^-0.15 ^ ^0.6 0.01 0.01 0.01 100 1 force

execute if entity @s[scores={shift=1..}] positioned ~ ~1.3 ~ run particle minecraft:flame ^ ^ ^1 0.01 0.01 0.01 100 1 force

#particle minecraft:poof ^-0.4 ^1.3 ^1.5 0.1 0.1 0.1 0.05 1

#damage
execute as @e[tag=new_b,limit=1,sort=nearest] run scoreboard players set @s damage 22

#msg
#execute store result score v10 V run data get entity @s Rotation[0] 1000000
#execute store result score v11 V run data get entity @s Rotation[1] 1000000
execute store result entity @e[tag=new_b,limit=1,sort=nearest] Rotation[0] float 0.000001 run data get entity @s Rotation[0] 1000000
execute store result entity @e[tag=new_b,limit=1,sort=nearest] Rotation[1] float 0.000001 run data get entity @s Rotation[1] 1000000




#recoil

execute if entity @s[scores={recoil=3..5}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.2 ~-0.5
execute if entity @s[scores={recoil=6..8}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.4 ~-0.7
execute if entity @s[scores={recoil=9..13}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.7 ~-1.5
execute if entity @s[scores={recoil=14..17}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.0 ~-2.3
execute if entity @s[scores={recoil=18..}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.8 ~-4

#cooldown
scoreboard players add @s cooldown 25

#remove ammo
scoreboard players remove @s b_sniper 1

#score rocoil
scoreboard players add @s recoil 10
scoreboard players set @s r_cooldown 6

#score spread
scoreboard players set @s spread 3
execute if entity @s[scores={walk=1..}] run scoreboard players add @s spread 1
execute if entity @s[scores={sprint=1..}] run scoreboard players add @s spread 1
execute if entity @s[scores={jump=1..}] run scoreboard players add @s spread 2
execute if entity @s[scores={shift=1..}] run scoreboard players remove @s spread 3

#scoreboard players set @s spread 3

scoreboard players operation @e[tag=new_b,limit=1,sort=nearest] spread = @s spread


#spread
execute as @e[tag=new_b,limit=1,sort=nearest] at @s run function games:gun/core/spread/spread

execute as @e[tag=new_b,limit=1,sort=nearest] at @s run function games:gun/core/fire

#update bullet status
tag @e[tag=new_b,limit=1,sort=nearest] add fired_b

tag @e[tag=new_b,limit=1,sort=nearest] remove new_b

tag @s remove me

