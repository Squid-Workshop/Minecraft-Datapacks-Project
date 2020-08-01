#/from MGS_2.0.1 gun mod/
#v0 10 * t, v1 1000*dx, v2 1000*dy, v3 1000*dz, v4 1000*x, v5 1000*y, v6 1000*z, v13 running_t

execute store result score v7 V run data get entity @s Pos[0] 1000
execute store result score v8 V run data get entity @s Pos[1] 1000
execute store result score v9 V run data get entity @s Pos[2] 1000

tag @s add clp
execute as @a[distance=..8] if score @s UID = @e[type=area_effect_cloud,tag=clp,limit=1] UID run tag @s add clp

execute as @p[tag=clp] run function games:gun/core/util/hitbox_bare
#auxilliary commands:

execute if entity @p[tag=clp] if score v14 V <= v15 V if score v14 V < v13 V if score v14 V matches 0.. run tag @p[tag=clp] add hit
execute if entity @p[tag=clp,tag=hit] run tag @s add hit
execute if entity @p[tag=clp,tag=hit] run tag @e[tag=cbp,limit=1,sort=nearest] add hit_p

#execute at @p[tag=hit,tag=clp] run particle minecraft:block redstone_block ~ ~ ~ 0.2 0.2 0.2 1 20

#sign name
scoreboard players operation @p[tag=hit,tag=clp] hit_by = @e[tag=cbp,limit=1,sort=nearest] UID

#special tags
execute as @p[tag=hit,tag=clp] if entity @e[tag=cbp,limit=1,sort=nearest,tag=grenade] run tag @s add grenaded

execute as @p[tag=hit,tag=clp] if entity @e[tag=cbp,limit=1,sort=nearest,tag=turret] run tag @s add turreted

#scoreboard players add @p[tag=hit,tag=clp] hit_by 1

#light arrow effects
execute as @s[tag=hit,distance=..3] at @s if entity @e[tag=cbp,tag=light,limit=1,sort=nearest] run function games:gun/core/util/light_hit

#bullet effects
execute as @p[tag=hit,tag=clp,gamemode=!creative,gamemode=!spectator] run effect give @s slowness 1 1 true
execute as @p[tag=hit,tag=clp] run effect give @s glowing 1 1 true
scoreboard players operation @p[tag=hit,tag=clp,gamemode=!creative,gamemode=!spectator,tag=!protected,tag=!invulnerable] damage += @e[tag=cbp,tag=!light] damage
#hit flesh sound
execute if entity @e[tag=cbp,limit=1,sort=nearest,tag=bullet,tag=b_sniper] if entity @p[tag=hit,tag=clp,gamemode=!creative,gamemode=!spectator] at @s run playsound minecraft:gun/hit/flesh1 player @a ~ ~ ~ 0.7 1
execute if entity @e[tag=cbp,limit=1,sort=nearest,tag=bullet,tag=!b_sniper] if entity @p[tag=hit,tag=clp,gamemode=!creative,gamemode=!spectator] at @s run playsound minecraft:gun/hit/kevlar1 player @a ~ ~ ~ 0.7 1

#bullet lose damage
#scoreboard players remove @e[tag=cbp,tag=hit] 2
#tag @e[tag=cbp] add slow

tag @e[tag=clp] remove clp


