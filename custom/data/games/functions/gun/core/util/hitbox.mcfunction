#/from MGS_2.0.1 gun mod/
#v0 10 * t, v1 1000*dx, v2 1000*dy, v3 1000*dz, v4 1000*x, v5 1000*y, v6 1000*z, v13 running_t

# assert @s[type=!player]
execute if entity @s[type=player] run tellraw @a {"text":"Error: Evaluating player using Mob hitboxes!","color":"red"}

execute store result score v7 V run data get entity @s Pos[0] 1000
execute store result score v8 V run data get entity @s Pos[1] 1000
execute store result score v9 V run data get entity @s Pos[2] 1000

function games:gun/core/util/hitbox_bare

execute if score v14 V <= v15 V if score v14 V < v13 V if score v14 V matches 0.. run tag @s add hit

#auxilliary commands:
#execute if entity @s[tag=hit,distance=..1] run particle minecraft:block redstone_block ~ ~ ~ 0.2 0.4 0.2 1 20

#shield effects
execute as @s[tag=hit,distance=..1,tag=shield] at @s as @e[tag=cbp] unless score @s UID = @e[distance=..1,tag=shield,limit=1,sort=nearest] UID run tag @s add reflected_b

#light arrow effects
execute as @s[tag=hit,distance=..1] at @s if entity @e[tag=cbp,tag=light,limit=1,sort=nearest] run function games:gun/core/util/light_hit

#bullet effects
execute as @s[tag=hit,distance=..1,tag=!special] run effect give @s slowness 1 1 true
execute as @s[tag=hit,distance=..1,tag=!special] run effect give @s glowing 1 1 true
scoreboard players operation @s[tag=hit,tag=!special] damage += @e[tag=cbp,tag=!light] damage
#bullet lose damage
#execute if entity @s[tag=hit,distance=..1,tag=!special] run scoreboard players remove @e[tag=cbp] 2
#tag @e[tag=cbp] add slow