tag @s[scores={move=1..}] add autoshooting
tag @s[tag=autoshooting] remove fbheadshot
scoreboard players set @s life 12
scoreboard players set @s[scores={life=12},nbt={ActiveEffects:[{Id:3b,Amplifier:10b}]}] life 6
scoreboard players remove @s[scores={move=1..}] move 1
scoreboard players remove @s ammo 1

execute at @s[tag=autoshooting] run summon area_effect_cloud ^ ^ ^-3 {Invisible:1b,Tags:["v"]}
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run execute store result score @e[tag=v,distance=..0.1,limit=1] x run data get entity @e[tag=v,distance=..0.1,limit=1] Pos[0] 10000
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run execute store result score @e[tag=v,distance=..0.1,limit=1] y run data get entity @e[tag=v,distance=..0.1,limit=1] Pos[1] 10000
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run execute store result score @e[tag=v,distance=..0.1,limit=1] z run data get entity @e[tag=v,distance=..0.1,limit=1] Pos[2] 10000
execute at @s[tag=autoshooting] run execute store result score @s x run data get entity @s Pos[0] 10000
execute at @s[tag=autoshooting] run execute store result score @s y run data get entity @s Pos[1] 10000
execute at @s[tag=autoshooting] run execute store result score @s z run data get entity @s Pos[2] 10000
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run scoreboard players operation @s x -= @e[tag=v,distance=..0.1,limit=1] x
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run scoreboard players operation @s y -= @e[tag=v,distance=..0.1,limit=1] y
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run scoreboard players operation @s z -= @e[tag=v,distance=..0.1,limit=1] z
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run kill @e[tag=v,distance=..0.1]

execute at @s[tag=autoshooting] anchored eyes run summon fireball ^ ^ ^1 {Motion:[0.0,0.0,0.0],power:[0.0,0.0,0.0],Tags:["projfb"],Owner:[I;1,-1,-2,-3],ExplosionPower:0}
execute at @s[tag=autoshooting] anchored eyes positioned ^ ^ ^1 run execute as @e[tag=projfb,distance=0] positioned ~ ~-1.52 ~ run data modify entity @s Owner set from entity @e[limit=1,sort=nearest,tag=autoshooting] UUID

execute at @s[tag=autoshooting] anchored eyes positioned ^ ^ ^1 as @e[distance=0,tag=projfb] run function games:autoshoot/fireball_launch

tag @s remove autoshooting
tag @s add fbfired