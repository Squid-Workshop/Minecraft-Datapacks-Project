#/from MGS_2.0.1 gun mod/
tag @s add cbp
execute as @a if score @s UID = @e[tag=cbp,limit=1] UID run tag @s add own
execute as @e[tag=lp,nbt={Age:2}] if score @s UID = @e[tag=cbp,limit=1] UID run tag @s add own

scoreboard players set v0 V 1
scoreboard players operation v1 V = @s dx
scoreboard players operation v2 V = @s dy
scoreboard players operation v3 V = @s dz
execute store result score v4 V run data get entity @s Pos[0] 1000
execute store result score v5 V run data get entity @s Pos[1] 1000
execute store result score v6 V run data get entity @s Pos[2] 1000
execute if score v0 V matches 1.. run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^1 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^2 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^3 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^4 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^5 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^6 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^7 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^8 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^9 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^10 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^11 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^12 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^13 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^14 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^15 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^16 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^17 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^18 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^19 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^20 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^21 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^22 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^23 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^24 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^25 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^26 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^27 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^28 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^29 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^30 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^31 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^32 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^33 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^34 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^35 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^36 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^37 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^38 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^39 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^40 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^41 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^42 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^43 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^44 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^45 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^46 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^47 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^48 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^49 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^50 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^51 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^52 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^53 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^54 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^55 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^56 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^57 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^58 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^59 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^60 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^61 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^62 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^63 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^64 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^65 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^66 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^67 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^68 run function games:camera/core/bph
execute if score v0 V matches 1.. positioned ^ ^ ^69 run function games:camera/core/bph


execute if score v0 V matches 0 run tag @s add dead
tag @s[scores={damage=..0}] add dead

tag @s[scores={life=2..}] add dead

execute if entity @s[scores={life=2..}] if score @s damage matches 1 run function games:camera/core/clone_front
execute if entity @s[scores={life=2..}] if score @s damage matches 0 run function games:camera/core/clone_here


tag @e[tag=own] remove own
tag @e[tag=hit] remove hit
tag @e[tag=cbp] remove cbp
kill @s[tag=dead]


tp @s ^ ^ ^70.0


