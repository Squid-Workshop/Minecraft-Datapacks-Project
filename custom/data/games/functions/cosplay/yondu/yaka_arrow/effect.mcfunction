summon arrow ~ ~ ~ {Tags:["ykef"],pickup:1b,damage:10.0f,Owner:[I;-1,1,-1,-2]}
data modify entity @e[tag=ykef,distance=0,limit=1] Owner set from entity @s Owner
execute as @e[tag=ykef,distance=0] store result score @s x run data get entity @s Pos[0] 1000
execute as @e[tag=ykef,distance=0] store result score @s y run data get entity @s Pos[1] 1000
execute as @e[tag=ykef,distance=0] store result score @s z run data get entity @s Pos[2] 1000
execute as @e[tag=yktg,limit=1,sort=nearest] store result score @s x run data get entity @s Pos[0] 1000
execute as @e[tag=yktg,limit=1,sort=nearest] store result score @s y run data get entity @s Pos[1] 1000
execute as @e[tag=yktg,limit=1,sort=nearest] store result score @s z run data get entity @s Pos[2] 1000
execute as @e[tag=ykef,distance=0] run scoreboard players operation @s x -= @e[tag=yktg,limit=1,sort=nearest] x
execute as @e[tag=ykef,distance=0] run scoreboard players operation @s y -= @e[tag=yktg,limit=1,sort=nearest] y
execute as @e[tag=ykef,distance=0] run scoreboard players operation @s z -= @e[tag=yktg,limit=1,sort=nearest] z
scoreboard players reset @e[tag=yktg,limit=1,sort=nearest] x
scoreboard players reset @e[tag=yktg,limit=1,sort=nearest] y
scoreboard players reset @e[tag=yktg,limit=1,sort=nearest] z
execute as @e[tag=ykef,distance=0] run execute store result entity @s Motion[0] double -0.001 run scoreboard players get @s x
execute as @e[tag=ykef,distance=0] run execute store result entity @s Motion[1] double -0.001 run scoreboard players get @s y
execute as @e[tag=ykef,distance=0] run execute store result entity @s Motion[2] double -0.001 run scoreboard players get @s z
#execute at @s[tag=ykeffect] run data merge entity @s {Age:0}
tag @s remove ykeffect


