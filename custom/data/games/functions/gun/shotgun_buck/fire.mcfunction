

playsound minecraft:gun/shotgun/xm1014-1 player @a ~ ~ ~ 2 1
execute as @a[distance=31..] run playsound minecraft:gun/shotgun/xm1014-1-distant player @s ~ ~ ~ 10 1

particle minecraft:poof ^-0.4 ^1.3 ^1.5 0.1 0.1 0.1 0.05 1

scoreboard players set rand V 0

execute if entity @s[scores={shift=0}] positioned ~ ~1.6 ~ run particle minecraft:flame ^-0.15 ^ ^0.6 0.01 0.01 0.01 100 1 force

execute if entity @s[scores={shift=1..}] positioned ~ ~1.3 ~ run particle minecraft:flame ^ ^ ^1 0.01 0.01 0.01 100 1 force

#fire bucks
function games:gun/shotgun_buck/firebuck
function games:gun/shotgun_buck/firebuck
function games:gun/shotgun_buck/firebuck
function games:gun/shotgun_buck/firebuck
function games:gun/shotgun_buck/firebuck
function games:gun/shotgun_buck/firebuck
function games:gun/shotgun_buck/firebuck
function games:gun/shotgun_buck/firebuck
function games:gun/shotgun_buck/firebuck
function games:gun/shotgun_buck/firebuck


#cooldown
scoreboard players add @s cooldown 5

#remove ammo
scoreboard players remove @s b_shot 1

#score rocoil
scoreboard players add @s recoil 20
scoreboard players set @s r_cooldown 4


#score spread
scoreboard players set @s spread 2
execute if entity @s[scores={walk=1..}] run scoreboard players add @s spread 1
execute if entity @s[scores={sprint=1..}] run scoreboard players add @s spread 1
execute if entity @s[scores={jump=1..}] run scoreboard players add @s spread 3
execute if entity @s[scores={shift=1..}] run scoreboard players remove @s spread 1


scoreboard players operation @e[tag=buck,limit=10,sort=nearest] spread = @s spread


#spread
execute as @e[tag=buck,limit=10,sort=nearest] at @s run function games:gun/core/spread/spread

tag @e[tag=buck,limit=10,sort=nearest] remove buck

