#/from MGS_2.0.1 gun mod/
scoreboard players set v15 V 0
scoreboard players set v13 V 10
execute if block ~ ~ ~ #games:air if block ~ ~-1 ~ #games:air if block ~ ~1 ~ #games:air if block ~1 ~ ~ #games:air if block ~-1 ~ ~ #games:air if block ~ ~ ~1 #games:air if block ~ ~ ~-1 #games:air run scoreboard players set v15 V 3
execute if score v15 V matches 0 if block ~ ~ ~ #games:solid run scoreboard players set v15 V 2
#shield
execute if score v15 V matches 2 run scoreboard players set v13 V 0
execute if score v15 V matches 0 run function games:gun/core/util/collide
execute if score v15 V matches 2 run scoreboard players set v0 V 0
execute if score v15 V matches 1 run scoreboard players remove @s damage 1
execute if entity @s[scores={damage=..0}] run scoreboard players set v0 V 0

#hit effect
execute if entity @s[tag=bullet] if score v15 V matches 2 run particle minecraft:item gunpowder ~ ~ ~ 0.1 0.1 0.1 0.3 8 force
execute if entity @s[tag=bullet] if score v15 V matches 2 run particle minecraft:white_ash ~ ~ ~ 0.05 0.05 0.05 10 20
execute if entity @s[tag=bullet] if score v15 V matches 2 run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute if score v15 V matches 2 run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.3 2 force


execute if entity @s[tag=laser] if score v15 V matches 2 run particle minecraft:lava ~ ~ ~ 0.1 0.1 0.1 0.3 1 force

#execute if score v15 V matches 2 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.01 1

#execute if score v15 V matches 2 run playsound minecraft:block.sand.hit ambient @a ~ ~ ~ 3 2


#tracing
execute if entity @s[tag=bullet] if score rule tracer matches 1 run particle minecraft:dust 1 0.8 0 0.07 ~ ~ ~ 0 0 0 1 1 force
execute if entity @s[tag=bullet] if score rule tracer matches 2 run particle minecraft:composter ~ ~ ~ 0 0 0 1 1 force
execute if entity @s[tag=bullet,tag=!grenade] if score rule tracer matches 2 run particle minecraft:dripping_water ~ ~-0.2 ~ 0 0 0 0.0001 1 force
execute if entity @s[tag=bullet] if score rule tracer matches 3 run particle minecraft:dripping_lava ~ ~-0.2 ~ 0 0 0 0.0001 1 force
#execute if entity @s[tag=laser] run particle minecraft:landing_lava ~ ~-0.2 ~ 0 0 0 0.0001 1
execute if entity @s[tag=laser] run particle minecraft:dust 1 0 0 0.5 ~ ~-0.15 ~ 0 0 0 0.0001 1 force

#arrow light
execute if entity @s[tag=light] run particle minecraft:dripping_lava ~ ~-0.15 ~ 0 0 0 0.0001 1 force
execute if entity @s[tag=light] run tp @e[tag=arrow,tag=light,limit=1,sort=nearest] ^ ^ ^-0.1 facing entity @s

#execute if entity @s[tag=grenade] run particle minecraft:dripping_lava ~ ~-0.2 ~ 0 0 0 0.0001 1
#execute if entity @s[tag=grenade] run particle minecraft:smoke ~ ~-0.2 ~ 0 0 0 0.0001 1
#execute if entity @s[tag=grenade] run particle minecraft:falling_dust granite ~ ~-0.2 ~ 0 0 0 0.0001 1
#execute if entity @s[tag=grenade] run particle minecraft:block bricks ~ ~-0.2 ~ 0 0 0 1 1
#execute if entity @s[tag=grenade,tag=!water] run particle minecraft:cloud ~ ~-0.2 ~ 0 0 0 0.0001 1
execute if entity @s[tag=grenade,tag=!water] run particle minecraft:falling_dust quartz_block ~ ~ ~ 0 0 0 1 1 force
execute if entity @s[tag=grenade,tag=water] run particle minecraft:splash ~ ~ ~ 0 0 0 0.0001 1 force


#execute if entity @p[distance=..] run 
#execute positioned ~ ~-0.975 ~ positioned ^ ^ ^0.5 as @e[distance=0..4,tag=shield] unless score @s UID = @e[tag=cbp,limit=1,sort=nearest] UID run function games:gun/core/util/hitbox
function games:gun/core/util/bullet_player_inter
execute positioned ~ ~-0.975 ~ positioned ^ ^ ^0.5 as @e[distance=0..4,type=#games:supported,tag=!hit] run function games:gun/core/util/hitbox
execute as @e[type=giant,tag=!hit,distance=0..16] run function games:gun/core/util/hitbox
execute if entity @s[tag=reflected_b] run function games:gun/core/util/hit_shield

#light hit
execute if entity @s[tag=light,tag=hit] run kill @s
execute if entity @s[tag=light,tag=hit] run scoreboard players set v0 V 0


scoreboard players operation v4 V += v1 V
scoreboard players operation v5 V += v2 V
scoreboard players operation v6 V += v3 V

#execute if entity @e[distance=0..1,tag=hit] run particle minecraft:block redstone_block ~ ~ ~ 0.2 0.2 0.2 100 15 force

execute if entity @s[tag=bullet] if entity @e[distance=0..3,tag=hit,tag=!special] run particle minecraft:item redstone ~ ~ ~ 0.2 0.2 0.2 0.1 30 force
execute if entity @s[tag=bullet] if entity @e[distance=0..3,tag=hit,tag=special] run particle minecraft:item gunpowder ~ ~ ~ 0.1 0.1 0.1 0.3 8 force
execute if entity @s[tag=laser] if entity @e[distance=0..3,tag=hit] run particle minecraft:lava ~ ~ ~ 0.2 0.2 0.2 0.1 1 force

#interaction with turret

execute as @e[tag=turret_effect,distance=..0.4] at @s run function games:throwable/turret/destruct

