#powered model
execute if entity @s[scores={shift=0},nbt={SelectedItem:{tag:{CustomModelData:19}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:21,display:{Name:"{\"text\":\"laser rifle\"}"},gun:1b,laser:1b,silenced:0}

execute if entity @s[scores={shift=1..}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:22,display:{Name:"{\"text\":\"laser rifle aiming\"}"},gun:1b,laser:1b,silenced:0}

#summon bullet and face player
summon minecraft:area_effect_cloud ^ ^ ^0.4 {Duration:20,Tags:["laser","b_sniper","new_b"]}


execute at @e[tag=new_b,limit=1,sort=nearest] run tp @e[tag=new_b,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute if entity @s[scores={shift=0}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~1.6 ~

execute if entity @s[scores={shift=1..}] as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~1.25 ~

#execute as @e[tag=new_b,limit=1,sort=nearest] at @s run tp @s ~ ~1.25 ~


#sign name
scoreboard players operation @e[tag=new_b,limit=1,sort=nearest] UID = @s UID

#sound & effects
#playsound minecraft:gun/awp/awp_02 player @a ~ ~ ~ 2 1
#execute as @a[distance=31..] run playsound minecraft:gun/awp/awp_distant player @s ~ ~ ~ 10 1
playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 2 2
playsound minecraft:block.beehive.work player @a ~ ~ ~ 2 0.5

#execute if entity @s[scores={shift=0}] positioned ~ ~1.6 ~ run particle minecraft:flame ^-0.15 ^ ^0.6 0.01 0.01 0.01 100 1 force

#execute if entity @s[scores={shift=1..}] positioned ~ ~1.3 ~ run particle minecraft:flame ^ ^ ^1 0.01 0.01 0.01 100 1 force

#particle minecraft:poof ^-0.4 ^1.3 ^1.5 0.1 0.1 0.1 0.05 1

#damage
execute as @e[tag=new_b,limit=1,sort=nearest] run scoreboard players set @s damage 2

#msg
#execute store result score v10 V run data get entity @s Rotation[0] 1000000
#execute store result score v11 V run data get entity @s Rotation[1] 1000000
execute store result entity @e[tag=new_b,limit=1,sort=nearest] Rotation[0] float 0.000001 run data get entity @s Rotation[0] 1000000
execute store result entity @e[tag=new_b,limit=1,sort=nearest] Rotation[1] float 0.000001 run data get entity @s Rotation[1] 1000000



#cooldown
execute if entity @s[scores={right_click=1..}] run scoreboard players add @s cooldown 3
scoreboard players set @s r_cooldown 3

#remove ammo
execute if entity @s[scores={right_click=1..}] run scoreboard players remove @s b_energy 1

#score spread
scoreboard players set @s spread 1
execute if entity @s[scores={walk=1..}] run scoreboard players add @s spread 1
execute if entity @s[scores={sprint=1..}] run scoreboard players add @s spread 1
execute if entity @s[scores={jump=1..}] run scoreboard players add @s spread 2
execute if entity @s[scores={shift=1..}] run scoreboard players remove @s spread 1

#scoreboard players set @s spread 3

scoreboard players operation @e[tag=new_b,limit=1,sort=nearest] spread = @s spread


#spread
execute as @e[tag=new_b,limit=1,sort=nearest] at @s run function games:gun/core/spread/spread

execute as @e[tag=new_b,limit=1,sort=nearest] at @s run function games:gun/core/fire

#update bullet status
tag @e[tag=new_b,limit=1,sort=nearest] add fired_b

tag @e[tag=new_b,limit=1,sort=nearest] remove new_b

